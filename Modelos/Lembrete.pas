unit Lembrete;

interface

uses
 CAtribEntity,  GenericEntidade;

type
  [TableName('Lembrete')]
  TLembrete = class(TGenericEntidade)
  private
    FDescricao: string;
    FCodigo: Integer;
    FCodigoFilial: Integer;
    FCodigoCliente:Integer;
    FCodigofuncionario: string;
    FRepetirACada: Integer;
    FTipoRepeticao: string;
    FUnidadeRepeticao: string;
    FEncerrado: string;
    FValidade: TDatetime;
  public
    [KeyField('Codigo')]
    property Codigo: Integer read FCodigo write FCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFilial: Integer read FCodigoFilial write FCodigoFilial;
    [FieldName('CodigoCliente')]
    property CodigoCliente: Integer read FCodigoCliente write FCodigoCliente;
    [FieldName('Descricao')]
    property Descricao: string read FDescricao write FDescricao;
    [FieldName('Codigofuncionario')]
    property Codigofuncionario: string read FCodigofuncionario write FCodigofuncionario;
    [FieldName('RepetirACada')]
    property RepetirACada: Integer read FRepetirACada write FRepetirACada;
    [FieldName('TipoRepeticao')]
    property TipoRepeticao: string read FTipoRepeticao write FTipoRepeticao;
    [FieldName('UnidadeRepeticao')]
    property UnidadeRepeticao: string read FUnidadeRepeticao write FUnidadeRepeticao;
    [FieldName('Encerrado')]
    property Encerrado: string read FEncerrado write FEncerrado;
    [FieldName('Validade')]
    property Validade: TDatetime read FValidade write FValidade;
   end;

implementation

{ TCaixa }



End.

