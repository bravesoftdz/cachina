unit CaixaDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.Bind.Components, Data.Bind.ObjectScope, Vcl.Menus,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt;

type
  TFormCaixaDetalhes = class(TTemplateFormComTabGridDetalhes)
    Label1: TLabel;
    edtDescricao: TEdit;
    cboStatus: TComboBox;
    lbCodificacao: TLabel;
    edtValorSaldo: TEdit;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    edtAgencia: TEdit;
    edtConta: TEdit;
    edtDigito: TEdit;
    edtCendente: TEdit;
    edtNossoNumero: TEdit;
    edtCarteira: TEdit;
    edtCodigoBanco: TEdit;
    edtTaxa: TEdit;
    Label3: TLabel;
    edtConvenio: TEdit;
    DataGeneratorAdapter1: TDataGeneratorAdapter;
    BindingsList1: TBindingsList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaDetalhes: TFormCaixaDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas, EntidadeFactory;

procedure TFormCaixaDetalhes.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  Entidade  := TEntidadeFactory.criar(tpCaixa);
  Controller:= TControllerTabelas.create;
  inherited;
  with MapperEntidade do
  begin
    associar('Codigo', nil);
    associar('Descricao', edtDescricao);
    associar('ValorSaldo', edtValorSaldo);
    associar('Status', cboStatus);
    associar('Agencia', edtAgencia);
    associar('Conta',edtConta);
    associar('Digito',edtDigito);
    associar('Cendente',edtCendente);
    associar('NossoNumero',edtNossoNumero);
    associar('Carteira',edtCarteira);
    associar('CodigoBanco',edtCodigoBanco);
    associar('Taxa',edtTaxa);
    associar('Convenio',edtConvenio);
  end;
end;

end.
