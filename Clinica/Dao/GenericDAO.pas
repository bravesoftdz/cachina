unit GenericDAO;

interface

Uses
  Db, Rtti, CAtribEntity, TypInfo, SysUtils, srvModBaseDados, DBClient, Provider,
  Forms, Dialogs, strUtils, GenericEntidade,Dateutils;

type
  TGenericDAO = class
  private
    class function GetTableName<TGenericEntidade: class>(Obj: TGenericEntidade): String;
    class procedure SetAspas;
    class procedure RegistrarLog(CodigoPessoa, Modulo, log, Operacao: string); static;
  public
     class function Insert<TGenericEntidade: class>(Obj: TGenericEntidade; CodigoPessoa: string = ''):boolean;
     class function Update<TGenericEntidade: class>(Obj: TGenericEntidade; CodigoPessoa: string = ''):boolean;
     class function Delete<TGenericEntidade: class>(Obj: TGenericEntidade; CodigoPessoa: string = ''):boolean;
     class function GetAll<TGenericEntidade: class>(Obj: TGenericEntidade; Condicao: string; Fields: string= ''): TDataSet;
     class function GetSelect(Select: string): TDataSet;overload;
     class function GetSelect(Select, Condicao: string; Fields: string= ''): TDataSet;overload;
     class function isFireBird: boolean; static;
     class function GetValue(Tabela, Condicao, Field: string): String; static;

     class function DeleteSQL(Tabela, Condicao: string): String; static;
     class procedure InsertSQL(Tabela, Campos, Values: string);static;
     class procedure InsertSQLSelect(Tabela, Campos, Select: string); static;
     class procedure UpdateSQL(Tabela, CamposValues, Where: string); static;

     class function GetModulo<TGenericEntidade: class>(Obj: TGenericEntidade): String;
     class procedure ExecSQL(SQL: string);
  end;

  var
   Aspas : string;

implementation

uses Mapper;

class function TGenericDAO.GetTableName<TGenericEntidade>(Obj: TGenericEntidade): String;
var
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Atributo: TCustomAttribute;
  strTable: String;
begin
  Contexto := TRttiContext.Create;
  TypObj := Contexto.GetType(TObject(Obj).ClassInfo);

  for Atributo in TypObj.GetAttributes do
  begin
     if Atributo is TableName then
     begin
        result:= TableName(Atributo).Name;
        exit;
     end;
  end;
end;

class function TGenericDAO.GetModulo<TGenericEntidade>(Obj: TGenericEntidade): String;
var
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Atributo: TCustomAttribute;
  strTable: String;
begin
  Contexto := TRttiContext.Create;
  TypObj := Contexto.GetType(TObject(Obj).ClassInfo);

  for Atributo in TypObj.GetAttributes do
  begin
     if Atributo is Modulo then
     begin
        result:= Modulo(Atributo).Name;
        exit;
     end;
  end;
end;

class procedure TGenericDAO.RegistrarLog(CodigoPessoa, Modulo, log, Operacao: string);
begin
 {
  if Modulo <> '' then
     DSServerModuleBaseDados.execSql('INSERT INTO Log '+
                                   ' ("CodigoFuncionario" ,"Data", "CodigoModulo"'+
                                   ' , "CodigoAcesso", "CodigoChavePrimaria", "Descricao","Operacao")'+
                                   '  VALUES '+
                                   ' ('+ CodigoPessoa +
                                   ' ,'+ ifthen( not isFireBird ,'GetDate()', 'CURRENT_TIMESTAMP') +
                                   ' ,'+ Modulo +
                                   ' ,'+ '0' +
                                   ' ,'+ '0' +
                                   ' ,'+ quotedstr(Log)+
                                   ' ,'+ quotedstr(Operacao) +')'); }
end;

class function TGenericDAO.Insert<TGenericEntidade>(Obj: TGenericEntidade; CodigoPessoa: string = ''):boolean;

var
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Prop: TRttiProperty;
  strInsert, strFields, strValues: String;
  Atributo: TCustomAttribute;
  Log: string;
begin
   SetAspas;

   strInsert := '';
   strFields := '';
   strValues := '';
   Log       := '';
   strInsert := 'INSERT INTO ' + GetTableName(Obj);

   Contexto  := TRttiContext.Create;
   TypObj := Contexto.GetType(TObject(Obj).ClassInfo);

   for Prop in TypObj.GetProperties do
   begin
     for Atributo in Prop.GetAttributes do
     begin
       if Atributo is FieldName then
       begin
         if FieldName(Atributo).Name = 'CodigoFilial' then
         begin
           strFields := strFields + Aspas+FieldName(Atributo).Name+Aspas + ',';
           strValues := strValues + '1' + ',';
         end
         else
         begin
           strFields := strFields + Aspas+FieldName(Atributo).Name+Aspas + ',';
           if Pos('string', lowerCase(Prop.toString)) > 0 then
           begin
             Log := Log + FieldName(Atributo).Name + ' = '+ Prop.GetValue(TObject(Obj)).AsString +#13;

             strValues := strValues + QuotedStr(Prop.GetValue(TObject(Obj))
               .AsString) + ','
           end
           else
           if Pos('integer', lowerCase(Prop.toString)) > 0 then
           begin
             Log := Log + FieldName(Atributo).Name + ' = '+ IntToStr(Prop.GetValue(TObject(Obj)).AsInteger)+#13;

             strValues := strValues + IntToStr(Prop.GetValue(TObject(Obj))
               .AsInteger) + ','
           end
           else
           if Pos('double', lowerCase(Prop.toString)) > 0 then
           begin
             Log := Log + FieldName(Atributo).Name + ' = '+ FloatToStr(Prop.GetValue(TObject(Obj)).AsExtended)+#13;

             strValues := strValues +
               StringReplace(FloatToStr(Prop.GetValue(TObject(Obj)).AsExtended),
               ',', '.', []) + ','
           end
           else
           if Pos('tdatetime', lowerCase(Prop.toString)) > 0 then
           begin
              if not isFireBird then
              begin
                Log := Log + FieldName(Atributo).Name + ' = '+ FormatDatetime('DD/MM/YYYY',
                TDateTime(Prop.GetValue(TObject(Obj)).AsVariant))+#13;

                if YearOf( TDateTime( Prop.GetValue(TObject(Obj)).AsVariant) ) > 1899  then
                   strValues := strValues + QuotedStr(FormatDatetime('DD/MM/YYYY',
                   //TDateTime(Prop.GetValue(TObject(Obj)).AsExtended))) + ','
                   TDateTime(Prop.GetValue(TObject(Obj)).AsVariant))) + ','
                else
                   strValues := strValues + ' NULL ' + ','
              end
              else
              begin
                Log := Log + FieldName(Atributo).Name + ' = '+ FormatDatetime('YYYY/MM/DD',
                TDateTime(Prop.GetValue(TObject(Obj)).AsVariant))+#13;

                if YearOf( TDateTime( Prop.GetValue(TObject(Obj)).AsVariant) ) > 1899  then
                   strValues := strValues + 'cast('+  QuotedStr(FormatDatetime('YYYY/MM/DD',
                  //TDateTime(Prop.GetValue(TObject(Obj)).AsExtended))) + ','
                   TDateTime(Prop.GetValue(TObject(Obj)).AsVariant)))+' as DATE)' + ','
                else
                   strValues := strValues + ' NULL ' + ','
              end
           end
           else
             raise Exception.Create('Type not Supported');

         end;
       end;
     end;
   end;



   strFields := Copy(strFields, 1, Length(strFields) - 1);
   strValues := Copy(strValues, 1, Length(strValues) - 1);
   strInsert := strInsert + ' ( ' + strFields + ' ) VALUES ( ' + strValues + ' )';

   result := DSServerModuleBaseDados.execSql(strInsert);


   //RegistrarLog(CodigoPessoa, GetModulo(Obj), Log , 'Cadastro' );

end;

class procedure TGenericDAO.InsertSQL(Tabela, Campos, Values: string);
begin
  DSServerModuleBaseDados.execSql( 'insert into '+ Tabela +' ( '+ Campos +' ) Values ( '+ Values + ')');
end;

class procedure TGenericDAO.InsertSQLSelect(Tabela, Campos, Select: string);
begin
  DSServerModuleBaseDados.execSql( 'insert into '+ Tabela +' ( '+ Campos +' ) '+ Select );
end;

class procedure TGenericDAO.UpdateSQL(Tabela, CamposValues, Where: string);
begin
  DSServerModuleBaseDados.execSql( ' Update '+ Tabela +' Set '+ CamposValues+' Where '+ Where );
end;

class function TGenericDAO.Update<TGenericEntidade>(Obj: TGenericEntidade; CodigoPessoa: string = ''):boolean;
var
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Prop: TRttiProperty;
  strUpdate, strValues, strWhere: String;
  Atributo: TCustomAttribute;
  Mapper: TMapper;
  Log: string;
  Codigo: string;
  Tabela: string;
begin

   SetAspas;

   strUpdate := '';
 //strFields := '';
   strValues := '';
   Log       := '';
   Tabela    := GetTableName(Obj);
   strUpdate := 'UPDATE ' + Tabela +' SET ';

   Contexto  := TRttiContext.Create;
   TypObj := Contexto.GetType(TObject(Obj).ClassInfo);

   for Prop in TypObj.GetProperties do
   begin
     for Atributo in Prop.GetAttributes do
     begin
        if (Atributo is FieldName) and
           (FieldName(Atributo).Name <> 'CodigoFilial') then
        begin
           if Pos('string',lowerCase(Prop.toString)) > 0 then
           begin
              Log := Log + FieldName(Atributo).Name + ' = '+ Prop.GetValue(TObject(Obj)).AsString +#13;

              strValues := strValues + Aspas+FieldName(Atributo).Name+Aspas  +'='+
                                       QuotedStr(Prop.GetValue(TObject(Obj)).AsString) + ','
           end
           else
           if Pos('integer',lowerCase(Prop.toString)) > 0 then
           begin
              Log := Log + FieldName(Atributo).Name + ' = '+ IntToStr(Prop.GetValue(TObject(Obj)).AsInteger) +#13;

              strValues := strValues + Aspas+FieldName(Atributo).Name+Aspas  +'='+
                                       IntToStr(Prop.GetValue(TObject(Obj)).AsInteger) + ','
           end
           else
           if Pos('double',lowerCase(Prop.toString)) > 0 then
           begin
              Log := Log + FieldName(Atributo).Name + ' = '+ FloatToStr(Prop.GetValue(TObject(Obj)).AsExtended) +#13;

              strValues := strValues + Aspas+FieldName(Atributo).Name+Aspas +'='+
                                    StringReplace(FloatToStr(Prop.GetValue(TObject(Obj)).AsExtended),',','.',[]) + ','
           end
           else
           if Pos('tdatetime',lowerCase(Prop.toString)) > 0 then
           begin
              if not isFireBird then
              begin
                Log := Log + FieldName(Atributo).Name + ' = '+ FormatDatetime('DD/MM/YYYY',TDateTime(Prop.GetValue(TObject(Obj)).AsVariant)) +#13;

                if YearOf( TDateTime( Prop.GetValue(TObject(Obj)).AsVariant) ) > 1899  then
                    strValues := strValues + Aspas+FieldName(Atributo).Name+Aspas  +'='+
                    // quotedstr(FormatDatetime('DD/MM/YYYY',TDateTime(Prop.GetValue(TObject(Obj)).AsExtended)))+ ',';
                    quotedstr(FormatDatetime('DD/MM/YYYY',TDateTime(Prop.GetValue(TObject(Obj)).AsVariant)))+ ','
                else
                   strValues := strValues + Aspas+FieldName(Atributo).Name+Aspas  +'= NULL , ';
              end
              else
              begin
                Log := Log + FieldName(Atributo).Name + ' = '+ FormatDatetime('DD/MM/YYYY',TDateTime(TDateTime(Prop.GetValue(TObject(Obj)).AsVariant))) +#13;

                if YearOf( TDateTime( Prop.GetValue(TObject(Obj)).AsVariant) ) > 1899  then
                   strValues := strValues + Aspas+FieldName(Atributo).Name+Aspas  +'='+'cast('+
                   // quotedstr(FormatDatetime('DD/MM/YYYY',TDateTime(Prop.GetValue(TObject(Obj)).AsExtended)))+ ',';
                   quotedstr(FormatDatetime('YYYY/MM/DD',TDateTime(Prop.GetValue(TObject(Obj)).AsVariant)))+' as DATE)'+ ','
                else
                   strValues := strValues + Aspas+FieldName(Atributo).Name+Aspas  +'= NULL , ';
              end;
           end
           else
              raise Exception.Create('tipo nao suportado!');
        end;

        if Atributo is KeyField then
        begin
           if Pos('string', lowercase(Prop.ToString) ) > 0 then
              Codigo := Prop.GetValue(TObject(Obj)).AsString
           else
              Codigo := IntToStr(Prop.GetValue(TObject(Obj)).AsInteger);

           strWhere := strWhere + Aspas + KeyField(Atributo).Name +Aspas  +' = '+ quotedstr(Codigo);
        end;

     end;
   end;

   strValues := Copy(strValues, 1, Length(strValues) - 1);
   strUpdate := strUpdate +strValues + ' WHERE '+ strWhere;

   result := DSServerModuleBaseDados.execSql(strUpdate);
   RegistrarLog(CodigoPessoa, GetModulo(Obj), Log , 'Altera��o' );

end;

class function TGenericDAO.Delete<TGenericEntidade>(Obj: TGenericEntidade; CodigoPessoa: string = ''): boolean;
var
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Prop: TRttiProperty;
  strDelete, strFields, strValues, strWhere: String;
  Atributo: TCustomAttribute;
begin
   SetAspas;

   strDelete := '';
   strFields := '';
   strValues := '';
   strDelete := 'Delete From ' + GetTableName(Obj);

   Contexto  := TRttiContext.Create;
   TypObj := Contexto.GetType(TObject(Obj).ClassInfo);

   for Prop in TypObj.GetProperties do
   begin
     for Atributo in Prop.GetAttributes do
     begin
        if Atributo is KeyField then
        begin
           strWhere := strWhere + Aspas + KeyField(Atributo).Name +Aspas +'='+
           IntToStr(Prop.GetValue(TObject(Obj)).AsInteger);
        end;
     end;
   end;

   strFields := Copy(strFields, 1, Length(strFields) - 1);
   strValues := Copy(strValues, 1, Length(strValues) - 1);
   strDelete := strDelete + ' WHERE '+ strWhere;

   result := DSServerModuleBaseDados.execSql(strDelete);


   RegistrarLog(CodigoPessoa, GetModulo(Obj), '' , 'Exclus�o' );

end;

class function TGenericDAO.DeleteSQL(Tabela, Condicao: string): String;
begin
  DSServerModuleBaseDados.LSCONEXAO.ExecuteDirect('Delete From '+Tabela+' where '+ Condicao);
end;

class procedure TGenericDAO.ExecSQL(SQL: string);
begin

end;

class function TGenericDAO.GetAll<TGenericEntidade>(Obj: TGenericEntidade; Condicao: string; Fields: string= ''): TDataSet;
var
  DataSet:TDataSet;
  DataSetClient: TClientDataSet;
  Provider: TDataSetProvider;
begin
   if Obj <> nil then
   begin
     DataSet := DSServerModuleBaseDados.getDataSet('SELECT ' + ifthen( Fields <> '', Fields , 'T1.*')+
               ' FROM ' + GetTableName(Obj) + ' T1 '+ ifthen(Condicao <> '',' where '+Condicao,'' ));

     Provider:= TDataSetProvider.Create(application);
     Provider.UpdateMode:= upWhereAll;
     Provider.Constraints:= false;
     Provider.Exported:= true;

     Provider.Name := 'dsp'+GetTableName(Obj)+FormatDatetime('HHMNSS',time);
     Provider.DataSet := DataSet;

     DataSetClient:= TClientDataSet.Create(application);

     DataSetClient.close;
     DataSetClient.ProviderName := Provider.Name;
     DataSetClient.Open;

     result:= DataSetClient;

     Provider.Free;
   end;
end;


class function TGenericDAO.GetSelect(Select: string): TDataSet;
  var
  DataSet:TDataSet;
  DataSetClient: TClientDataSet;
  Provider: TDataSetProvider;
begin
   result:= nil;
   if Select <> '' then
   begin
     DataSet := DSServerModuleBaseDados.GetDataSet(Select);

     Provider:= TDataSetProvider.Create(application);
     Provider.UpdateMode:= upWhereAll;
     Provider.Constraints:= false;
     Provider.Exported:= true;

     Provider.Name := 'dspSelect'+FormatDatetime('HHMNSS',time);

     Provider.DataSet := DataSet;

     DataSetClient:= TClientDataSet.Create(application);
     DataSetClient.close;
     DataSetClient.ProviderName := Provider.Name;
     DataSetClient.Open;

     result:= DataSetClient;

     Provider.Free;
   end;
end;

class function TGenericDAO.GetSelect(Select, Condicao: string;Fields: string= ''): TDataSet;
var
  DataSet:TDataSet;
  DataSetClient: TClientDataSet;
  Provider: TDataSetProvider;
begin
   result:= nil;
   if Select <> '' then
   begin
     DataSet := DSServerModuleBaseDados.GetDataSet('SELECT ' + ifthen( Fields <> '', Fields , 'T1.*')+
               ' FROM ' + Select + ifthen(Condicao <> '',' where '+Condicao,'' ));

     Provider:= TDataSetProvider.Create(application);
     Provider.UpdateMode:= upWhereAll;
     Provider.Constraints:= false;
     Provider.Exported:= true;

     if Pos(' ',Select) > 0 then
        Provider.Name := 'dsp'+COPY(Select,1, Pos(' ',Select)-1 )+FormatDatetime('HHMNSS',time)
     else
        Provider.Name := 'dsp'+Select+FormatDatetime('HHMNSS',time);
     Provider.DataSet := DataSet;

     DataSetClient:= TClientDataSet.Create(application);
     DataSetClient.close;
     DataSetClient.ProviderName := Provider.Name;
     DataSetClient.Open;

     result:= DataSetClient;

     Provider.Free;
   end;
end;

class function TGenericDAO.isFireBird:boolean;
begin
  result:= DSServerModuleBaseDados.LSCONEXAO.DriverName = 'Firebird';
end;


class procedure TGenericDAO.SetAspas;
begin
  if isFireBird then
    aspas := '"'
  else
    aspas := '';
end;

class function TGenericDAO.GetValue(Tabela, Condicao, Field: string): String;
var
  DataSet:TDataSet;
begin
  SetAspas;
  DataSet := TGenericDAO.GetSelect(Tabela,Condicao, Aspas + Field+Aspas );
  result  := DataSet.Fields[0].AsString;
end;


end.
