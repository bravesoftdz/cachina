unit ModeloVeiculo;

interface

uses
   CAtribEntity,  GenericEntidade;

Type
  [TableName('ModeloVeiculo')]
  TModeloVeiculo = class(TGenericEntidade)
  private
    FCodigoMarca: integer;
    FDescricao: string;
    FCodigo: integer;
    FCodigoFilial: integer;
    procedure SetCodigo(const Value: integer);
    procedure SetCodigoFilial(const Value: integer);
    procedure SetCodigoMarca(const Value: integer);
    procedure SetDescricao(const Value: string);
  public
    [KeyField('Codigo')]
    property Codigo: integer read FCodigo write SetCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFilial: integer read FCodigoFilial write SetCodigoFilial;
    [FieldName('Descricao')]
    property Descricao: string read FDescricao write SetDescricao;
    [FieldName('CodigoMarca')]
    property CodigoMarca: integer read FCodigoMarca write SetCodigoMarca;
  end;


implementation

{ TModeloVeiculo }

procedure TModeloVeiculo.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TModeloVeiculo.SetCodigoFilial(const Value: integer);
begin
  FCodigoFilial := Value;
end;

procedure TModeloVeiculo.SetCodigoMarca(const Value: integer);
begin
  FCodigoMarca := Value;
end;

procedure TModeloVeiculo.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

end.
