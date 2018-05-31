unit FormaPagamentoDetalhes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  Graphics, Controls, Forms, Dialogs, StdCtrls,
  TemplateDetalhesComTabGrid, System.Rtti, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Menus;

type
  TFormFormaPagamentoDetalhes = class(TTemplateFormComTabGridDetalhes)
    lbDescriacao: TLabel;
    edtDescricao: TEdit;
    edtNumeroParcelas: TEdit;
    Label1: TLabel;
    chkBaixaAutomatica: TCheckBox;
    chkPadrao: TCheckBox;
    Label2: TLabel;
    edtDiasVencimento: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtJuros: TEdit;
    Label5: TLabel;
    edtMulta: TEdit;
    Label6: TLabel;
    edtTaxaCartao: TEdit;
    Label7: TLabel;
    edtTaxaAntecipacao: TEdit;
    Label8: TLabel;
    edtDiasAntecipacao: TEdit;
    GroupBox1: TGroupBox;
    edtCNPJOperadoraCartao: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    cboCodigoBandeiraTEF: TComboBox;
    Label11: TLabel;
    cboCodigoTipoPagamento: TComboBox;
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFormaPagamentoDetalhes: TFormFormaPagamentoDetalhes;

implementation

{$R *.dfm}

uses EntidadeFactory, ControllerFormaPagamento;

procedure TFormFormaPagamentoDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerFormaPagamento.Create;
  Entidade   := TEntidadeFactory.Criar(tpFormaPagamento);
  inherited;
  with MapperEntidade do
  begin
     Associar('Codigo',nil);
     Associar('Descricao', edtDescricao);
     Associar('NumeroParcelas',edtNumeroParcelas);
     Associar('BaixaAutomatica',chkBaixaAutomatica);
     Associar('Padrao',chkPadrao);
     Associar('DiasVencimento',edtDiasVencimento);
     Associar('PercentualJuros',edtJuros);
     Associar('PercentualMulta',edtMulta);
     Associar('PercentualTaxaCartao',edtTaxaCartao);
     Associar('PercentualTaxaAntecipacao',edtTaxaAntecipacao);
     Associar('DiasAntecipacao',edtDiasAntecipacao);
     Associar('CNPJOperadoraCartao',edtCNPJOperadoraCartao );
     Associar('CodigoBandeiraTEF', cboCodigoBandeiraTEF);
     Associar('CodigoFormaPagamento',cboCodigoTipoPagamento );



  end;

end;

end.
