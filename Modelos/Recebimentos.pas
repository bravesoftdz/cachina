unit Recebimentos;

interface

uses
 CAtribEntity,  GenericEntidade;

type
  [TableName('Recebimento')]
  [Modulo('10')]
  TRecebimento = class(TGenericEntidade)
  private
    FObservacao: string;
    FValor: Double;
    FDescricao: string;
    FCodigo: Integer;
    FDataVencimento: TDatetime;
    FCodigoFilial: Integer;
    FCodigoPessoa: Integer;
    FCodigoFormaPagamento: Integer;
    FSituacao: string;
    FCodigoCaixa: Integer;
    FCodigoCategoria: Integer;
    FData: TDatetime;
    FNumeroDocumento: string;
    FDataBaixa: TDatetime;
    FValorBaixado: Double;
    FCodigoFuncionario: integer;
    FCodigoOrcamento: integer;
    FCodigoLoteRecebimento: integer;
    FPercentualMulta: Double;
    FPercentualJuros: Double;
    FPercentualDesconto: double;
    FCodigoCentroCusto: integer;
    FDiasAntecipacao: integer;
    FPercentualTaxaCartao: double;
    FPercentualTaxaAntecipacao: double;
    FCodigoOrcamentoFormaPagamento: integer;
    FNossoNumero: string;
    procedure SetCodigo(const Value: Integer);
    procedure SetCodigoCaixa(const Value: Integer);
    procedure SetCodigoCategoria(const Value: Integer);
    procedure SetCodigoFilial(const Value: Integer);
    procedure SetCodigoFormaPagamento(const Value: Integer);
    procedure SetCodigoPessoa(const Value: Integer);
    procedure SetData(const Value: TDatetime);
    procedure SetDataVencimento(const Value: TDatetime);
    procedure SetDescricao(const Value: string);
    procedure SetNumeroDocumento(const Value: string);
    procedure SetObservacao(const Value: string);
    procedure SetSituacao(const Value: string);
    procedure SetValor(const Value: Double);
    procedure SetDataBaixa(const Value: TDatetime);
    procedure SetValorBaixado(const Value: Double);
    procedure SetCodigoFuncionario(const Value: integer);
    procedure SetCodigoOrcamento(const Value: integer);
    procedure SetCodigoLoteRecebimento(const Value: integer);
    procedure SetPercentualJuros(const Value: Double);
    procedure SetPercentualMulta(const Value: Double);
    procedure SetPercentualDesconto(const Value: double);
    procedure SetCodigoCentroCusto(const Value: integer);
    procedure SetDiasAntecipacao(const Value: integer);
    procedure SetPercentualTaxaAntecipacao(const Value: double);
    procedure SetPercentualTaxaCartao(const Value: double);
    procedure SetCodigoOrcamentoFormaPagamento(const Value: integer);
    procedure SetNossoNumero(const Value: string);
public
  [KeyField('Codigo')]
  property Codigo: Integer read FCodigo write SetCodigo;
  [FieldName('CodigoFilial')]
  property CodigoFilial: Integer read FCodigoFilial write SetCodigoFilial;
  [FieldName('Data')]
  property Data: TDatetime read FData write SetData;
  [FieldName('Descricao')]
  property Descricao: string read FDescricao write SetDescricao;
  [FieldName('CodigoPessoa')]
  property CodigoPessoa: Integer read FCodigoPessoa write SetCodigoPessoa;
  [FieldName('Valor')]
  property Valor: Double read FValor write SetValor;
  [FieldName('CodigoCategoria')]
  property CodigoCategoria: Integer read FCodigoCategoria write SetCodigoCategoria;
  [FieldName('Situacao')]
  property Situacao: string read FSituacao write SetSituacao;
  [FieldName('CodigoCaixa')]
  property CodigoCaixa: Integer read FCodigoCaixa write SetCodigoCaixa;
  [FieldName('NumeroDocumento')]
  property NumeroDocumento: string read FNumeroDocumento write SetNumeroDocumento;
  [FieldName('DataVencimento')]
  property DataVencimento: TDatetime read FDataVencimento write SetDataVencimento;
  [FieldName('CodigoFormaPagamento')]
  property CodigoFormaPagamento: Integer read FCodigoFormaPagamento write SetCodigoFormaPagamento;
  [FieldName('Observacao')]
  property Observacao: string read FObservacao write SetObservacao;
  [FieldName('DataBaixa')]
  property DataBaixa: TDatetime read FDataBaixa write SetDataBaixa;
  [FieldName('ValorBaixado')]
  property ValorBaixado: Double read FValorBaixado write SetValorBaixado;
  [FieldName('CodigoFuncionario')]
  property CodigoFuncionario: integer read FCodigoFuncionario write SetCodigoFuncionario;
  [FieldName('CodigoOrcamento')]
  property CodigoOrcamento : integer read FCodigoOrcamento write SetCodigoOrcamento;
  [FieldName('CodigoLoteRecebimento')]
  property CodigoLoteRecebimento : integer read FCodigoLoteRecebimento write SetCodigoLoteRecebimento;
  [FieldName('PercentualJuros')]
  property PercentualJuros: Double read FPercentualJuros write SetPercentualJuros;
  [FieldName('PercentualMulta')]
  property PercentualMulta: Double read FPercentualMulta write SetPercentualMulta;
  [FieldName('PercentualDesconto')]
  property PercentualDesconto: double read FPercentualDesconto write SetPercentualDesconto;
  [FieldName('CodigoCentroCusto')]
  property CodigoCentroCusto: integer read FCodigoCentroCusto write SetCodigoCentroCusto;

  [FieldName('PercentualTaxaCartao')]
  property PercentualTaxaCartao: double read FPercentualTaxaCartao write SetPercentualTaxaCartao;
  [FieldName('PercentualTaxaAntecipacao')]
  property PercentualTaxaAntecipacao: double read FPercentualTaxaAntecipacao write SetPercentualTaxaAntecipacao;
  [FieldName('DiasAntecipacao')]
  property DiasAntecipacao: integer read FDiasAntecipacao write SetDiasAntecipacao;
  [FieldName('CodigoOrcamentoFormaPagamento')]
  property CodigoOrcamentoFormaPagamento:integer read FCodigoOrcamentoFormaPagamento write SetCodigoOrcamentoFormaPagamento;


  [FieldName('NossoNumero')]
  property NossoNumero: string read FNossoNumero write SetNossoNumero;

end;

implementation

{ TRecebimento }

procedure TRecebimento.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TRecebimento.SetCodigoCaixa(const Value: Integer);
begin
  FCodigoCaixa := Value;
end;

procedure TRecebimento.SetCodigoCategoria(const Value: Integer);
begin
  FCodigoCategoria := Value;
end;

procedure TRecebimento.SetCodigoCentroCusto(const Value: integer);
begin
  FCodigoCentroCusto := Value;
end;

procedure TRecebimento.SetCodigoFilial(const Value: Integer);
begin
  FCodigoFilial := Value;
end;

procedure TRecebimento.SetCodigoFormaPagamento(const Value: Integer);
begin
  FCodigoFormaPagamento := Value;
end;

procedure TRecebimento.SetCodigoFuncionario(const Value: integer);
begin
  FCodigoFuncionario := Value;
end;

procedure TRecebimento.SetCodigoLoteRecebimento(const Value: integer);
begin
  FCodigoLoteRecebimento := Value;
end;

procedure TRecebimento.SetCodigoOrcamento(const Value: integer);
begin
  FCodigoOrcamento := Value;
end;

procedure TRecebimento.SetCodigoOrcamentoFormaPagamento(const Value: integer);
begin
  FCodigoOrcamentoFormaPagamento := Value;
end;

procedure TRecebimento.SetCodigoPessoa(const Value: Integer);
begin
  FCodigoPessoa := Value;
end;

procedure TRecebimento.SetData(const Value: TDatetime);
begin
  FData := Value;
end;

procedure TRecebimento.SetDataBaixa(const Value: TDatetime);
begin
  FDataBaixa := Value;
end;

procedure TRecebimento.SetDataVencimento(const Value: TDatetime);
begin
  FDataVencimento := Value;
end;

procedure TRecebimento.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TRecebimento.SetDiasAntecipacao(const Value: integer);
begin
  FDiasAntecipacao := Value;
end;

procedure TRecebimento.SetNossoNumero(const Value: string);
begin
  FNossoNumero := Value;
end;

procedure TRecebimento.SetNumeroDocumento(const Value: string);
begin
  FNumeroDocumento := Value;
end;

procedure TRecebimento.SetObservacao(const Value: string);
begin
  FObservacao := Value;
end;

procedure TRecebimento.SetPercentualDesconto(const Value: double);
begin
  FPercentualDesconto := Value;
end;

procedure TRecebimento.SetPercentualJuros(const Value: Double);
begin
  FPercentualJuros := Value;
end;

procedure TRecebimento.SetPercentualMulta(const Value: Double);
begin
  FPercentualMulta := Value;
end;

procedure TRecebimento.SetPercentualTaxaAntecipacao(const Value: double);
begin
  FPercentualTaxaAntecipacao := Value;
end;

procedure TRecebimento.SetPercentualTaxaCartao(const Value: double);
begin
  FPercentualTaxaCartao := Value;
end;

procedure TRecebimento.SetSituacao(const Value: string);
begin
  FSituacao := Value;
end;

procedure TRecebimento.SetValor(const Value: Double);
begin
  FValor := Value;
end;

procedure TRecebimento.SetValorBaixado(const Value: Double);
begin
  FValorBaixado := Value;
end;

End.

