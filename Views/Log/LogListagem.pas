unit LogListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateListagemBase, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  ControllerTabelas, Vcl.ComCtrls;

type
  TFormLogListagem = class(TTemplateFormListagemBase)
    DBMemo1: TDBMemo;
    GroupBox1: TGroupBox;
    dateInicio: TDateTimePicker;
    dateFim: TDateTimePicker;
    cboModulo: TDBLookupComboBox;
    cboUsuario: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    cboOperacao: TComboBox;
    edtDescricao: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtTabela: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure Consultar(Condicao: string);
    { Private declarations }
  public
    { Public declarations }
    Controller:TControllerTabelas;
  end;

var
  FormLogListagem: TFormLogListagem;

implementation

{$R *.dfm}

uses DBUtils, EntidadeFactory;


procedure TFormLogListagem.Consultar(Condicao: string);
begin
    srcEntidade.DataSet :=  Controller.GetSelect('Log T1 '+
                          ' inner join Funcionarios func on'+
                          ' func.Codigo = CodigoFuncionario '+
                          ' left Join Modulo modu on '+
                          ' modu.Codigo = CodigoModulo', Condicao ,
                          ' T1.Data, func.Nome, modu.Descricao as Modulo, '+
                          ' T1.Descricao, T1.Operacao, T1.Tabela');
end;

procedure TFormLogListagem.FormCreate(Sender: TObject);
var
  Condicao: string;

begin
  inherited;
  Controller   := TControllerTabelas.Create;
  dateInicio.Date := date;
  dateFim.Date := date;

  Condicao := '0=0';
  Condicao := Condicao + ' and T1.Data >='+ quotedstr(formatDatetime('DD/MM/YYYY 00:00:00', dateInicio.Date ))+
                         ' and T1.Data <='+ quotedstr(formatDatetime('DD/MM/YYYY 23:59:59', dateFim.Date ));
  Consultar( Condicao );

  DBUtils.FillLookUpCombobox(tpModulo, cboModulo);
  DBUtils.FillLookUpCombobox(tpFuncionarios,
                             cboUsuario,
                             'Codigo',
                             'Nome');
end;

procedure TFormLogListagem.BitBtn1Click(Sender: TObject);
var
  Condicao: string;
begin
  inherited;
  Condicao := '0=0';
  Condicao := Condicao + ' and T1.Data >='+ quotedstr(formatDatetime('DD/MM/YYYY 00:00:00', dateInicio.Date ))+
                         ' and T1.Data <='+ quotedstr(formatDatetime('DD/MM/YYYY 23:59:59', dateFim.Date ));

  if cboModulo.Text <> '' then
     Condicao := Condicao +  ' and modu.Descricao ='+ quotedstr(cboModulo.Text);

  if cboUsuario.Text <> '' then
     Condicao := Condicao +  ' and func.Nome ='+ quotedstr(cboUsuario.Text);

  if cboOperacao.Text <> '' then
     Condicao := Condicao +  ' and T1.Operacao ='+ quotedstr(cboOperacao.Text);

  if edtDescricao.text <> '' then
     Condicao := Condicao +  ' and T1.Descricao LIKE '+ quotedstr('%'+edtDescricao.Text+'%');

    if edtTabela.text <> '' then
     Condicao := Condicao +  ' and T1.tabela = '+ quotedstr( edtTabela.Text );



  Consultar(Condicao);
end;

end.