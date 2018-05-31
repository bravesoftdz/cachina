unit Orcamento;

interface

uses
   CAtribEntity,  GenericEntidade;

Type
  [TableName('Orcamento')]
  [Modulo('4')]
  TOrcamento = class(TGenericEntidade)
  private
    FDesconto: Double;
    FObservacao: string;
    FCodigo: integer;
    FCodigoFilial: integer;
    FCodigoFuncionario: integer;
    FCodigoFormaPagamento: integer;
    FSituacao: string;
    FCodigoCliente: integer;
    FPlaca: string;
    FValidade: TDatetime;
    FData: TDatetime;
    FCPFCNPJ: string;
    FRazaoSocial: string;
    FNome: string;
    FTelefone: string;
    FopcaofarolMilha: string;
    FopcaoChaveRoda: string;
    FopcaoMacaco: string;
    FTextRodas: string;
    FTextFarolMilha: string;
    FopcaoAutoFalantes: string;
    FTextChaveRoda: string;
    FTextMacaco: string;
    FopcaoCdPlayer: string;
    FopcaoTriangulo: string;
    FTextObjetos: string;
    FopcaoEstepe: string;
    FTextAutoFalantes: string;
    FopcaoPneusTraseiros: string;
    FopcaoTapete: string;
    FopcaoExtintor: string;
    FTextCDPlayer: string;
    FopcaoCalotas: string;
    FTextTriangulo: string;
    FopcaoChave: string;
    FTextEstepe: string;
    FTextPneusTraseiros: string;
    FTextTapete: string;
    FTextExtintor: string;
    FopcaoBateria: string;
    FTextCalotas: string;
    FopcaoManual: string;
    FTextChave: string;
    FopcaoPneusDianteiro: string;
    FTextBateria: string;
    FTextManual: string;
    FopcaoAcendendor: string;
    FTextPneusDianteiro: string;
    FopcaoRodas: string;
    FTextAcendedor: string;
    FContato: string;
    FOrdem: string;
    FObservacaoVistoria: string;
    FEmitiuNFSe: string;
    FEmitiuNFe: string;
    FDataHoraInicio: TDatetime;


    procedure SetCodigo(const Value: integer);
    procedure SetCodigoCliente(const Value: integer);
    procedure SetCodigoFilial(const Value: integer);
    procedure SetCodigoFormaPagamento(const Value: integer);
    procedure SetCodigoFuncionario(const Value: integer);
    procedure SetData(const Value: TDatetime);
    procedure SetDesconto(const Value: Double);
    procedure SetObservacao(const Value: string);
    procedure SetPlaca(const Value: string);
    procedure SetSituacao(const Value: string);
    procedure SetValidade(const Value: TDatetime);
    procedure SetCPFCNPJ(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetRazaoSocial(const Value: string);
    procedure SetTelefone(const Value: string);

    procedure SetopcaoAcendendor(const Value: string);
    procedure SetopcaoAutoFalantes(const Value: string);
    procedure SetopcaoBateria(const Value: string);
    procedure SetopcaoCalotas(const Value: string);
    procedure SetopcaoCdPlayer(const Value: string);
    procedure SetopcaoChave(const Value: string);
    procedure SetopcaoChaveRoda(const Value: string);
    procedure SetopcaoEstepe(const Value: string);
    procedure SetopcaoExtintor(const Value: string);
    procedure SetopcaofarolMilha(const Value: string);
    procedure SetopcaoMacaco(const Value: string);
    procedure SetopcaoManual(const Value: string);
    procedure SetopcaoPneusDianteiro(const Value: string);
    procedure SetopcaoPneusTraseiros(const Value: string);
    procedure SetopcaoRodas(const Value: string);
    procedure SetopcaoTapete(const Value: string);
    procedure SetopcaoTriangulo(const Value: string);
    procedure SetTextAcendedor(const Value: string);
    procedure SetTextAutoFalantes(const Value: string);
    procedure SetTextBateria(const Value: string);
    procedure SetTextCalotas(const Value: string);
    procedure SetTextCDPlayer(const Value: string);
    procedure SetTextChave(const Value: string);
    procedure SetTextChaveRoda(const Value: string);
    procedure SetTextEstepe(const Value: string);
    procedure SetTextExtintor(const Value: string);
    procedure SetTextFarolMilha(const Value: string);
    procedure SetTextMacaco(const Value: string);
    procedure SetTextManual(const Value: string);
    procedure SetTextObjetos(const Value: string);
    procedure SetTextPneusDianteiro(const Value: string);
    procedure SetTextPneusTraseiros(const Value: string);
    procedure SetTextRodas(const Value: string);
    procedure SetTextTapete(const Value: string);
    procedure SetTextTriangulo(const Value: string);
    procedure SetContato(const Value: string);
    procedure SetOrdem(const Value: string);
    procedure SetObservacaoVistoria(const Value: string);
    procedure SetEmitiuNFe(const Value: string);
    procedure SetEmitiuNFSe(const Value: string);
  public
    [KeyField('Codigo')]
    [FieldName('Codigo')]
    property Codigo: integer read FCodigo write SetCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFilial: integer read FCodigoFilial write SetCodigoFilial;
    [FieldName('Data')]
    property Data: TDatetime read FData write SetData;
    [FieldName('Placa')]
    property Placa: string read FPlaca write SetPlaca;
    [FieldName('Observacao')]
    property Observacao: string read FObservacao write SetObservacao;
    [FieldName('CodigoFuncionario')]
    property CodigoFuncionario: integer read FCodigoFuncionario
      write SetCodigoFuncionario;
    [FieldName('Desconto')]
    property Desconto: Double read FDesconto write SetDesconto;
    [FieldName('CodigoFormaPagamento')]
    property CodigoFormaPagamento: integer read FCodigoFormaPagamento
      write SetCodigoFormaPagamento;
    [FieldName('CodigoCliente')]
    property CodigoCliente: integer read FCodigoCliente write SetCodigoCliente;
    [FieldName('Validade')]
    property Validade: TDatetime read FValidade write SetValidade;
    [FieldName('Situacao')]
    property Situacao: string read FSituacao write SetSituacao;

    property Nome: string read FNome write SetNome;
    property CPFCNPJ: string read FCPFCNPJ write SetCPFCNPJ;
    property RazaoSocial: string read FRazaoSocial write SetRazaoSocial;
    property Telefone: string read FTelefone write SetTelefone;

    [FieldName('opcaoExtintor')]
    property opcaoExtintor: string read FopcaoExtintor write SetopcaoExtintor;
    [FieldName('opcaoMacaco')]
    property opcaoMacaco: string read FopcaoMacaco write SetopcaoMacaco;
    [FieldName('opcaoChaveRoda')]
    property opcaoChaveRoda: string read FopcaoChaveRoda
      write SetopcaoChaveRoda;
    [FieldName('opcaoBateria')]
    property opcaoBateria: string read FopcaoBateria write SetopcaoBateria;
    [FieldName('opcaoTriangulo')]
    property opcaoTriangulo: string read FopcaoTriangulo
      write SetopcaoTriangulo;
    [FieldName('opcaoCalotas')]
    property opcaoCalotas: string read FopcaoCalotas write SetopcaoCalotas;
    [FieldName('opcaoAcendendor')]
    property opcaoAcendendor: string read FopcaoAcendendor
      write SetopcaoAcendendor;
    [FieldName('opcaofarolMilha')]
    property opcaofarolMilha: string read FopcaofarolMilha
      write SetopcaofarolMilha;
    [FieldName('opcaoTapete')]
    property opcaoTapete: string read FopcaoTapete write SetopcaoTapete;
    [FieldName('opcaoRodas')]
    property opcaoRodas: string read FopcaoRodas write SetopcaoRodas;
    [FieldName('opcaoCdPlayer')]
    property opcaoCdPlayer: string read FopcaoCdPlayer write SetopcaoCdPlayer;
    [FieldName('opcaoEstepe')]
    property opcaoEstepe: string read FopcaoEstepe write SetopcaoEstepe;
    [FieldName('opcaoPneusTraseiros')]
    property opcaoPneusTraseiros: string read FopcaoPneusTraseiros
      write SetopcaoPneusTraseiros;
    [FieldName('opcaoPneusDianteiro')]
    property opcaoPneusDianteiro: string read FopcaoPneusDianteiro
      write SetopcaoPneusDianteiro;
    [FieldName('opcaoChave')]
    property opcaoChave: string read FopcaoChave write SetopcaoChave;
    [FieldName('opcaoManual')]
    property opcaoManual: string read FopcaoManual write SetopcaoManual;
    [FieldName('opcaoAutoFalantes')]
    property opcaoAutoFalantes: string read FopcaoAutoFalantes
      write SetopcaoAutoFalantes;
    [FieldName('TextExtintor')]
    property TextExtintor: string read FTextExtintor write SetTextExtintor;
    [FieldName('TextMacaco')]
    property TextMacaco: string read FTextMacaco write SetTextMacaco;
    [FieldName('TextChaveRoda')]
    property TextChaveRoda: string read FTextChaveRoda write SetTextChaveRoda;
    [FieldName('TextTriangulo')]
    property TextTriangulo: string read FTextTriangulo write SetTextTriangulo;
    [FieldName('TextCalotas')]
    property TextCalotas: string read FTextCalotas write SetTextCalotas;
    [FieldName('TextBateria')]
    property TextBateria: string read FTextBateria write SetTextBateria;
    [FieldName('TextAutoFalantes')]
    property TextAutoFalantes: string read FTextAutoFalantes
      write SetTextAutoFalantes;
    [FieldName('TextCDPlayer')]
    property TextCDPlayer: string read FTextCDPlayer write SetTextCDPlayer;
    [FieldName('TextRodas')]
    property TextRodas: string read FTextRodas write SetTextRodas;
    [FieldName('TextTapete')]
    property TextTapete: string read FTextTapete write SetTextTapete;
    [FieldName('TextFarolMilha')]
    property TextFarolMilha: string read FTextFarolMilha
      write SetTextFarolMilha;
    [FieldName('TextAcendedor')]
    property TextAcendedor: string read FTextAcendedor write SetTextAcendedor;
    [FieldName('TextEstepe')]
    property TextEstepe: string read FTextEstepe write SetTextEstepe;
    [FieldName('TextPneusTraseiros')]
    property TextPneusTraseiros: string read FTextPneusTraseiros
      write SetTextPneusTraseiros;
    [FieldName('TextPneusDianteiro')]
    property TextPneusDianteiro: string read FTextPneusDianteiro
      write SetTextPneusDianteiro;
    [FieldName('TextChave')]
    property TextChave: string read FTextChave write SetTextChave;
    [FieldName('TextManual')]
    property TextManual: string read FTextManual write SetTextManual;
    [FieldName('TextObjetos')]
    property TextObjetos: string read FTextObjetos write SetTextObjetos;
    [FieldName('Ordem')]
    property Ordem: string read FOrdem write SetOrdem;
    [FieldName('Contato')]
    property Contato: string read FContato write SetContato;
    [FieldName('ObservacaoVistoria')]
    property ObservacaoVistoria: string read FObservacaoVistoria
      write SetObservacaoVistoria;
    //[FieldName('EmitiuNFSe')]
    property EmitiuNFSe: string read FEmitiuNFSe write SetEmitiuNFSe;
    //[FieldName('EmitiuNFe')]
    property EmitiuNFe: string read FEmitiuNFe write SetEmitiuNFe;

    [FieldName('DataInicio')]
    property DataHoraInicio: Tdatetime read FDataHoraInicio write FDataHoraInicio;

    //property CodigoLoteRecebimento: integer;
  end;

  [TableName('OrcamentoFormaPagamento')]
  [Modulo('4')]
  TOrcamentoFormaPagamento = class(TGenericEntidade)
  private
    FPercentualDesconto: Double;
    FValor: Double;
    FCodigo: integer;
    FVencimento: Tdatetime;
    FCodigoOrcamento: integer;
    FQuantidadePercelas: Integer;
    FCodigoFormaPagamento: Integer;
    FOpcao: string;
    FCodigoLoteRecebimento: integer;
    FCodigoFilial: integer;
    FValorPago: double;
    procedure SetCodigo(const Value: integer);
    procedure SetCodigoFormaPagamento(const Value: Integer);
    procedure SetCodigoOrcamento(const Value: integer);
    procedure SetPercentualDesconto(const Value: Double);
    procedure SetQuantidadePercelas(const Value: Integer);
    procedure SetValor(const Value: Double);
    procedure SetVencimento(const Value: Tdatetime);
    procedure SetOpcao(const Value: string);
    procedure SetCodigoLoteRecebimento(const Value: integer);
    procedure SetCodigoFilial(const Value: integer);
    procedure SetValorPago(const Value: double);
  public
    [KeyField('Codigo')]
    property Codigo:integer read FCodigo write SetCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFilial:integer read FCodigoFilial write SetCodigoFilial;

    [FieldName('CodigoOrcamento')]
    property CodigoOrcamento:integer read FCodigoOrcamento write SetCodigoOrcamento;
    [FieldName('CodigoFormaPagamento')]
    property CodigoFormaPagamento:Integer read FCodigoFormaPagamento write SetCodigoFormaPagamento;
    [FieldName('Valor')]
    property Valor:Double read FValor write SetValor;
    [FieldName('PercentualDesconto')]
    property PercentualDesconto:Double read FPercentualDesconto write SetPercentualDesconto;
    [FieldName('QuantidadePercelas')]
    property QuantidadePercelas:Integer read FQuantidadePercelas write SetQuantidadePercelas;
    [FieldName('Vencimento')]
    property Vencimento:TDatetime read FVencimento write SetVencimento;
    [FieldName('Opcao')]
    property Opcao: string read FOpcao write SetOpcao;
    [FieldName('ValorPago')]
    property ValorPago: double read FValorPago write SetValorPago;
  end;
implementation

{ TOrcamento }

procedure TOrcamento.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TOrcamento.SetCodigoCliente(const Value: integer);
begin
  FCodigoCliente := Value;
end;

procedure TOrcamento.SetCodigoFilial(const Value: integer);
begin
  FCodigoFilial := Value;
end;

procedure TOrcamento.SetCodigoFormaPagamento(const Value: integer);
begin
  FCodigoFormaPagamento := Value;
end;

procedure TOrcamento.SetCodigoFuncionario(const Value: integer);
begin
  FCodigoFuncionario := Value;
end;

procedure TOrcamento.SetContato(const Value: string);
begin
  FContato := Value;
end;

procedure TOrcamento.SetCPFCNPJ(const Value: string);
begin
  FCPFCNPJ := Value;
end;

procedure TOrcamento.SetData(const Value: TDatetime);
begin
  FData := Value;
end;

procedure TOrcamento.SetDesconto(const Value: Double);
begin
  FDesconto := Value;
end;

procedure TOrcamento.SetEmitiuNFe(const Value: string);
begin
  FEmitiuNFe := Value;
end;

procedure TOrcamento.SetEmitiuNFSe(const Value: string);
begin
  FEmitiuNFSe := Value;
end;

procedure TOrcamento.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TOrcamento.SetObservacao(const Value: string);
begin
  FObservacao := Value;
end;

procedure TOrcamento.SetObservacaoVistoria(const Value: string);
begin
  FObservacaoVistoria := Value;
end;

procedure TOrcamento.SetPlaca(const Value: string);
begin
  FPlaca := Value;
end;

procedure TOrcamento.SetRazaoSocial(const Value: string);
begin
  FRazaoSocial := Value;
end;

procedure TOrcamento.SetSituacao(const Value: string);
begin
  FSituacao := Value;
end;

procedure TOrcamento.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

procedure TOrcamento.SetValidade(const Value: TDatetime);
begin
  FValidade := Value;
end;

{ TOrcamentoFormaPagamento }

procedure TOrcamentoFormaPagamento.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TOrcamentoFormaPagamento.SetCodigoFilial(const Value: integer);
begin
  FCodigoFilial := Value;
end;

procedure TOrcamentoFormaPagamento.SetCodigoFormaPagamento(
  const Value: Integer);
begin
  FCodigoFormaPagamento := Value;
end;

procedure TOrcamentoFormaPagamento.SetCodigoLoteRecebimento(
  const Value: integer);
begin
  FCodigoLoteRecebimento := Value;
end;

procedure TOrcamentoFormaPagamento.SetCodigoOrcamento(const Value: integer);
begin
  FCodigoOrcamento := Value;
end;

procedure TOrcamentoFormaPagamento.SetOpcao(const Value: string);
begin
  FOpcao := Value;
end;

procedure TOrcamentoFormaPagamento.SetPercentualDesconto(const Value: Double);
begin
  FPercentualDesconto := Value;
end;

procedure TOrcamentoFormaPagamento.SetQuantidadePercelas(const Value: Integer);
begin
  FQuantidadePercelas := Value;
end;

procedure TOrcamentoFormaPagamento.SetValor(const Value: Double);
begin
  FValor := Value;
end;

procedure TOrcamentoFormaPagamento.SetValorPago(const Value: double);
begin
  FValorPago := Value;
end;

procedure TOrcamentoFormaPagamento.SetVencimento(const Value: Tdatetime);
begin
  FVencimento := Value;
end;

procedure TOrcamento.SetopcaoAcendendor(const Value: string);
begin
  FopcaoAcendendor := Value;
end;

procedure TOrcamento.SetopcaoAutoFalantes(const Value: string);
begin
  FopcaoAutoFalantes := Value;
end;

procedure TOrcamento.SetopcaoBateria(const Value: string);
begin
  FopcaoBateria := Value;
end;

procedure TOrcamento.SetopcaoCalotas(const Value: string);
begin
  FopcaoCalotas := Value;
end;

procedure TOrcamento.SetopcaoCdPlayer(const Value: string);
begin
  FopcaoCdPlayer := Value;
end;

procedure TOrcamento.SetopcaoChave(const Value: string);
begin
  FopcaoChave := Value;
end;

procedure TOrcamento.SetopcaoChaveRoda(const Value: string);
begin
  FopcaoChaveRoda := Value;
end;

procedure TOrcamento.SetopcaoEstepe(const Value: string);
begin
  FopcaoEstepe := Value;
end;

procedure TOrcamento.SetopcaoExtintor(const Value: string);
begin
  FopcaoExtintor := Value;
end;

procedure TOrcamento.SetopcaofarolMilha(const Value: string);
begin
  FopcaofarolMilha := Value;
end;

procedure TOrcamento.SetopcaoMacaco(const Value: string);
begin
  FopcaoMacaco := Value;
end;

procedure TOrcamento.SetopcaoManual(const Value: string);
begin
  FopcaoManual := Value;
end;

procedure TOrcamento.SetopcaoPneusDianteiro(const Value: string);
begin
  FopcaoPneusDianteiro := Value;
end;

procedure TOrcamento.SetopcaoPneusTraseiros(const Value: string);
begin
  FopcaoPneusTraseiros := Value;
end;

procedure TOrcamento.SetopcaoRodas(const Value: string);
begin
  FopcaoRodas := Value;
end;

procedure TOrcamento.SetopcaoTapete(const Value: string);
begin
  FopcaoTapete := Value;
end;

procedure TOrcamento.SetopcaoTriangulo(const Value: string);
begin
  FopcaoTriangulo := Value;
end;

procedure TOrcamento.SetOrdem(const Value: string);
begin
  FOrdem := Value;
end;

procedure TOrcamento.SetTextAcendedor(const Value: string);
begin
  FTextAcendedor := Value;
end;

procedure TOrcamento.SetTextAutoFalantes(const Value: string);
begin
  FTextAutoFalantes := Value;
end;

procedure TOrcamento.SetTextBateria(const Value: string);
begin
  FTextBateria := Value;
end;

procedure TOrcamento.SetTextCalotas(const Value: string);
begin
  FTextCalotas := Value;
end;

procedure TOrcamento.SetTextCDPlayer(const Value: string);
begin
  FTextCDPlayer := Value;
end;

procedure TOrcamento.SetTextChave(const Value: string);
begin
  FTextChave := Value;
end;

procedure TOrcamento.SetTextChaveRoda(const Value: string);
begin
  FTextChaveRoda := Value;
end;

procedure TOrcamento.SetTextEstepe(const Value: string);
begin
  FTextEstepe := Value;
end;

procedure TOrcamento.SetTextExtintor(const Value: string);
begin
  FTextExtintor := Value;
end;

procedure TOrcamento.SetTextFarolMilha(const Value: string);
begin
  FTextFarolMilha := Value;
end;

procedure TOrcamento.SetTextMacaco(const Value: string);
begin
  FTextMacaco := Value;
end;

procedure TOrcamento.SetTextManual(const Value: string);
begin
  FTextManual := Value;
end;

procedure TOrcamento.SetTextObjetos(const Value: string);
begin
  FTextObjetos := Value;
end;

procedure TOrcamento.SetTextPneusDianteiro(const Value: string);
begin
  FTextPneusDianteiro := Value;
end;

procedure TOrcamento.SetTextPneusTraseiros(const Value: string);
begin
  FTextPneusTraseiros := Value;
end;

procedure TOrcamento.SetTextRodas(const Value: string);
begin
  FTextRodas := Value;
end;

procedure TOrcamento.SetTextTapete(const Value: string);
begin
  FTextTapete := Value;
end;

procedure TOrcamento.SetTextTriangulo(const Value: string);
begin
  FTextTriangulo := Value;
end;



end.
