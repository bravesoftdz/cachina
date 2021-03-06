unit Parametros;

interface

uses
   CAtribEntity,  GenericEntidade;

Type
  [TableName('Parametros')]
  TCargo = class(TGenericEntidade)
  private
    FCodigo: integer;
    FCodigoFilial: integer;
    FDescricao: string;
    FValor: string;
    FGrupo: string;
  public
    [KeyField('Codigo')]
    property Codigo: integer read FCodigo write FCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFilial: integer read FCodigoFilial write FCodigoFilial;
    [FieldName('Descricao')]
    property Descricao: string read FDescricao write FDescricao;
    [FieldName('Valor')]
    property Valor: string read FValor write FValor;
    [FieldName('Grupo')]
    property Grupo: string read FGrupo write FGrupo;
  end;

implementation

end.

