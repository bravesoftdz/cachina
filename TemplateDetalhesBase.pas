unit TemplateDetalhesBase;

interface

uses
  SysUtils,   Classes, Types, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,   Vcl.StdCtrls, Mapper,
  GenericEntidade, Controller,  DB, Vcl.ExtCtrls, Vcl.Buttons, StrUtils, DBClient,
  System.Rtti, CAtribEntity;

type
  TTemplateFormBaseDetalhes= class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnSair: TSpeedButton;
    srcEntidade: TDataSource;
    procedure btnInserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditPress(Sender: TObject;  var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboEditDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FCondicao: string;
    FTabela: string;
    procedure SetCondicao(const Value: string);
    procedure SetTabela(const Value: string);
  protected
    //FieldsMapList: TStringList;
    CampoCodigo: string;
    procedure Persistir;
    procedure AtualizarBotoes;
    procedure AjustaComponentes;
    procedure MapearComponentes;
  protected
    PerguntaConfirmarExclusao:boolean;
  public
    { Public declarations }
    Controller: IController;
    Operacao: string;
    Entidade: TGenericEntidade;
    Campos: string;
    Ordem: string;
    MapperEntidade: TMapper;
    property Tabela: string read FTabela write SetTabela;
    property Condicao: string read FCondicao write SetCondicao;
    procedure Inserir;
    procedure Alterar;
    procedure GetDataset;
  end;

var
  TemplateFormBaseDetalhes: TTemplateFormBaseDetalhes;



implementation

{$R *.dfm}

uses DialogsUtils, Windows, Constantes;

procedure TTemplateFormBaseDetalhes.AjustaComponentes;
var
  I: Integer;
begin
  for I := 0 to componentcount - 1 do
  begin
    if (Components[i].Tag = 1) and (Components[i] is TEdit) then
    begin
       (Components[i] as TEdit).setfocus;
    end
  end;
end;

procedure TTemplateFormBaseDetalhes.Inserir;
begin
  Operacao := opeInsert;
  AtualizarBotoes;
  MapperEntidade.SendNullToComponent;
end;

procedure TTemplateFormBaseDetalhes.Alterar;
begin
  if not srcEntidade.DataSet.FieldByName('Codigo').isNull then
  begin
    Operacao := opeUpdate;
    AtualizarBotoes;
    MapperEntidade.SendValueToFieldEntidade('Codigo', srcEntidade.DataSet.FieldByName('Codigo').AsString);
    MapperEntidade.Dataset := srcEntidade.DataSet;
    MapperEntidade.SendDataSetToEntidade;
    MapperEntidade.EntidadeToComponent;
  end
  else
  begin
    showmessage('N�o h� dados para altera��o!');
    abort;
  end;
end;

procedure TTemplateFormBaseDetalhes.btnInserirClick(Sender: TObject);
begin

  Inserir;
end;

procedure TTemplateFormBaseDetalhes.btnAlterarClick(Sender: TObject);
begin
  Alterar;
end;

procedure TTemplateFormBaseDetalhes.btnCancelarClick(Sender: TObject);
begin
  Operacao:= '';
  AtualizarBotoes;
end;

procedure TTemplateFormBaseDetalhes.btnExcluirClick(Sender: TObject);

  procedure Excluir;
  begin
      Controller.Excluir(Entidade);
      srcEntidade.DataSet.delete;
      GetDataset;
      MapperEntidade.Dataset := srcEntidade.DataSet;
  end;

begin
  MapperEntidade.SendValueToFieldEntidade('Codigo',
  srcEntidade.DataSet.FieldByName('Codigo').AsString);
  MapperEntidade.Dataset := srcEntidade.DataSet;
  if (not PerguntaConfirmarExclusao) then
  begin
     Excluir;
  end
  else
  begin
    if (TDialogs.ConfirmarExclusao) then
       Excluir;
  end;
end;

procedure TTemplateFormBaseDetalhes.btnConfirmarClick(Sender: TObject);
begin
  MapperEntidade.ComponentToEntidade;
//MapperEntidade.Send_ComponentToObject(self, Entidade);
  Persistir;
  Operacao:= '';
  AtualizarBotoes;
end;

procedure TTemplateFormBaseDetalhes.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TTemplateFormBaseDetalhes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TTemplateFormBaseDetalhes.FormCreate(Sender: TObject);
begin
  GetDataset;
  //FieldsMapList := TStringList.Create;
  MapperEntidade  := TMapper.create(Entidade, srcEntidade.DataSet);
  MapperEntidade.EntidadeToComponent;
  CampoCodigo:= 'Codigo';
  PerguntaConfirmarExclusao:= true;
//MapearComponentes;
end;

procedure TTemplateFormBaseDetalhes.MapearComponentes;
var
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Prop: TRttiProperty;
  Atributo: TCustomAttribute;
  I:integer;
  Associou: boolean;
begin
  Contexto  := TRttiContext.Create;
  TypObj := Contexto.GetType(TObject(Entidade).ClassInfo);
  for Prop in TypObj.GetProperties do
  begin
      for Atributo in Prop.GetAttributes do
      begin
          Associou:= false;
          with MapperEntidade do
          begin
              if Atributo is FieldName then
              begin
                  for I := 0 to ComponentCount - 1 do
                  begin
                     if FieldName(Atributo).Name =  components[i].Name then
                     begin
                        Associou:= true;
                        Associar( FieldName(Atributo).Name, components[i] );
                        break;
                     end;
                  end;
                  if not Associou then
                     Associar( FieldName(Atributo).Name,  nil );

              end
              else
              if Atributo is KeyField then
                Associar( FieldName(Atributo).Name,  nil );
          end;
      end;
  end;
end;


procedure TTemplateFormBaseDetalhes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    vk_f1: btnInserir.click;
    vk_f2: btnAlterar.click;
    vk_f3: btnCancelar.click;
    vk_f4: btnExcluir.click;
    vk_f5: btnConfirmar.click;
    vk_escape: btnSair.Click;
  end;
end;

procedure TTemplateFormBaseDetalhes.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  if (ActiveControl.ClassName <> 'TMemo') then
      SelectNext(ActiveControl,true,true);
end;

procedure TTemplateFormBaseDetalhes.GetDataset;
begin
  if Tabela <> '' then
     srcEntidade.Dataset := Controller.GetSelect(FTabela, Condicao ,Campos)
  else
     srcEntidade.Dataset := Controller.GetDataset(Entidade, Condicao,Campos);

  if MapperEntidade <> nil then
     MapperEntidade.Dataset := srcEntidade.Dataset;
end;

procedure TTemplateFormBaseDetalhes.SetCondicao(const Value: string);
begin
  FCondicao := Value;
end;

procedure TTemplateFormBaseDetalhes.SetTabela(const Value: string);
begin
  FTabela := Value;
end;

procedure TTemplateFormBaseDetalhes.Persistir;
begin
  Controller.Mapper := MapperEntidade;
  if Operacao = opeInsert then
    Controller.Inserir(Entidade)
  else
  if Operacao = opeUpdate then
    Controller.Atualizar(Entidade);
  try
     GetDataset;
  except end;
end;

procedure TTemplateFormBaseDetalhes.AtualizarBotoes;
begin
   if (Operacao = opeInsert) or (Operacao = opeUpdate)  then
  begin
    btnInserir.Visible  := false;
    btnAlterar.Visible  := false;
    btnExcluir.Visible  := false;
    btnCancelar.Visible := true;
    btnConfirmar.Visible:= true;
  end
  else
  if ( Operacao = '' ) then
  begin
    btnInserir.Visible  := true;
    btnAlterar.Visible  := true;
    btnExcluir.Visible  := true;
    btnCancelar.Visible := false;
    btnConfirmar.Visible:= false;
  end;
end;

procedure TTemplateFormBaseDetalhes.EditPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    Key := UpCase(Key);
end;

procedure TTemplateFormBaseDetalhes.ComboEditDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
   Found: boolean;
   j,SelSt: Integer;
   TmpStr: string;
   KeyCharAux: char;
  Item: string;
begin
    KeyChar:=UpCase(KeyChar);
    KeyCharAux:= KeyChar;
   { first, process the keystroke to obtain the current string }
   { This code requires all items in list to be uppercase}
   if KeyChar in ['a'..'z'] then Dec(Key,32) ; {Force Uppercase only!}
   with (Sender as TCombobox) do
   begin
     SelSt := SelStart;
     if (Key = 8) and (SelLength <> 0) then
        TmpStr := Copy(Text,1,SelStart)+Copy(Text,SelLength+SelStart+1,255)
     else if Key = 8 then {SelLength = 0}
        TmpStr := Copy(Text,1,SelStart-1)+Copy(Text,SelStart+1,255)
     else {Key in ['A'..'Z', etc]}
        TmpStr := Copy(Text,1,SelStart)+KeyChar+Copy(Text,SelLength+SelStart+1,255) ;
     if TmpStr = '' then
        Exit;
     { update SelSt to the current insertion point }

     if (Key = 8) and (SelSt > 0) then Dec(SelSt)

     else if Key <> 8 then
     Inc(SelSt) ;
     KeyChar := #0; { indicate that key was handled }
     if SelSt = 0 then
     begin
       Text:= '';
       Exit;
     end;

     Found := False;
     for j := 1 to Items.Count do
     begin
       Item:= Items[j-1];
       if Copy(Item,1,Length(TmpStr)) = TmpStr then
       begin
         Text := Item; { update to the match that was found }
         ItemIndex := j-1;
         Found := True;
         Break;
       end;
     end;


     if Found then { select the untyped end of the string }
     begin
       SelStart := SelSt;
       SelLength := Length(Text)-SelSt;
     end
     else
       KeyChar:= KeyCharAux;
   end;
end;

end.
