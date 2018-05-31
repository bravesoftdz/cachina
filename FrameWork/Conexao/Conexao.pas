unit Conexao;

interface

uses
//Data.SqlExpr,
windows, sysUtils, forms, ADODB, DB, Provider, DBClient;

Type
   TConexao = class
   private
      //Connection : TSQLConnection;
      Connection : TADOConnection;
   public
      constructor Create;
      destructor Destroy;
      procedure ExecSQL(SQL: string);
      function GetDataSet(SQL: string):TClientDataSet;
   end;


   TSingletonConexao = class
   strict private
     class var FConexao: TConexao;
   public
     class function GetConexao:TConexao;
   end;

{ TConexao }

implementation

constructor TConexao.Create;
begin
  {
  Connection := TSQLConnection.Create(nil);
  Connection.connectionName := 'MSSQLConnection';
  Connection.DriverName := 'MSSQL';
  Connection.LoginPrompt:= false;
  Connection.Params.LoadFromFile( extractfilepath(application.exename)+'dbxconnections.ini');
  Connection.Connected := true;
  }
  Connection := TADOConnection.Create(nil);
  Connection.connectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;'+
                                 ' Persist Security Info=False;User ID="";Initial Catalog=Berg;'+
                                 'Data Source=.\sqlEXPRESS;Initial File Name="";Server SPN=""';
  Connection.LoginPrompt:= false;
  Connection.Connected := true;

end;

destructor TConexao.Destroy;
begin
  Connection.Connected := false;
end;

procedure TConexao.ExecSQL(SQL: string);
begin
   Connection.Execute(SQL);
 //Connection.ExecuteDirect(SQL);
end;

function TConexao.GetDataSet(SQL: string):TClientDataSet;
var
   DataSet:TADODataSet;
   DataSetProvider:TDataSetProvider;
   ClientDataSet :TClientDataSet;
begin
   DataSet:= TADODataSet.Create(nil);
   DataSet.Connection := Connection;
   DataSet.CommandText := SQL;

   DataSetProvider:= TDataSetProvider.Create(application);
   DataSetProvider.Name := 'Provider'+ formatdatetime('DDMMYYYHHMNSS', now);
   DataSetProvider.DataSet := DataSet;

   ClientDataSet := TClientDataSet.Create(application);
   ClientDataSet.ProviderName := DataSetProvider.Name;
   ClientDataSet.open;

   result := ClientDataSet;
end;

{ TSingletonConexao }

class function TSingletonConexao.GetConexao: TConexao;
begin
  if FConexao = nil then
     FConexao := TConexao.Create;
  result := FConexao;
end;

end.
