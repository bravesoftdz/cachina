unit TabelasProdutos;

interface

uses
   CAtribEntity,  GenericEntidade;

Type
  [TableName('FamiliaProdutos')]
  TFamiliaProdutos = class(TGenericEntidade)
  private
    FCodigoFiliar: integer;
    FDescricao: string;
    FCodigo: integer;
    procedure SetCodigo(const Value: integer);
    procedure SetCodigoFiliar(const Value: integer);
    procedure SetDescricao(const Value: string);
  published
    [KeyField('Codigo')]
    property Codigo:integer read FCodigo write SetCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFiliar:integer read FCodigoFiliar write SetCodigoFiliar;
    [FieldName('Descricao')]
    property Descricao: string read FDescricao write SetDescricao;
  end;

  [TableName('GrupoProdutos')]
  TGrupoProdutos = class(TGenericEntidade)
  private
    FCodigoFiliar: integer;
    FDescricao: string;
    FCodigo: integer;
    FCodigoFamilia: integer;
    procedure SetCodigo(const Value: integer);
    procedure SetCodigoFamilia(const Value: integer);
    procedure SetCodigoFiliar(const Value: integer);
    procedure SetDescricao(const Value: string);
  published
    [KeyField('Codigo')]
    property Codigo:integer read FCodigo write SetCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFiliar:integer read FCodigoFiliar write SetCodigoFiliar;
    [FieldName('CodigoFamilia')]
    property CodigoFamilia:integer read FCodigoFamilia write SetCodigoFamilia;
    [FieldName('Descricao')]
    property Descricao: string read FDescricao write SetDescricao;
  end;

  [TableName('SubGrupoProdutos')]
  TSubGrupoProdutos = class(TGenericEntidade)
  private
    FCodigoFiliar: integer;
    FDescricao: string;
    FCodigo: integer;
    FCodigoFamilia: integer;
    procedure SetCodigo(const Value: integer);
    procedure SetCodigoFamilia(const Value: integer);
    procedure SetCodigoFiliar(const Value: integer);
    procedure SetDescricao(const Value: string);
  published
    [KeyField('Codigo')]
    property Codigo:integer read FCodigo write SetCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFiliar:integer read FCodigoFiliar write SetCodigoFiliar;
    [FieldName('CodigoGrupo')]
    property CodigoFamilia:integer read FCodigoFamilia write SetCodigoFamilia;
    [FieldName('Descricao')]
    property Descricao: string read FDescricao write SetDescricao;
  end;

implementation

{ TFamilia }

procedure TFamiliaProdutos.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TFamiliaProdutos.SetCodigoFiliar(const Value: integer);
begin
  FCodigoFiliar := Value;
end;

procedure TFamiliaProdutos.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

{ TGrupoProdutos }

procedure TGrupoProdutos.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TGrupoProdutos.SetCodigoFamilia(const Value: integer);
begin
  FCodigoFamilia := Value;
end;

procedure TGrupoProdutos.SetCodigoFiliar(const Value: integer);
begin
  FCodigoFiliar := Value;
end;

procedure TGrupoProdutos.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

{ TSubGrupoProdutos }

procedure TSubGrupoProdutos.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TSubGrupoProdutos.SetCodigoFamilia(const Value: integer);
begin
  FCodigoFamilia := Value;
end;

procedure TSubGrupoProdutos.SetCodigoFiliar(const Value: integer);
begin
  FCodigoFiliar := Value;
end;

procedure TSubGrupoProdutos.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

end.
