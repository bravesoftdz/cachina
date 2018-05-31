unit CategoriasDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFormCategoriasDetalhes = class(TTemplateFormComTabGridDetalhes)
    lbDescricao: TLabel;
    lbCodificacao: TLabel;
    edtCodificacao: TEdit;
    edtDescricao: TEdit;
    cboTipo: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCategoriasDetalhes: TFormCategoriasDetalhes;

implementation

{$R *.dfm}

uses EntidadeFactory, ControllerTabelas;

procedure TFormCategoriasDetalhes.FormCreate(Sender: TObject);
begin
  Controller:= TControllerTabelas.Create;
  Entidade  := TEntidadeFactory.Criar(tpCategoria);
  Ordem     := 'Codificacao';
  inherited;
  with MapperEntidade do
  begin
    associar('Codigo', nil);
    associar('CodigoFilial', nil);
    associar('Descricao', edtDescricao);
    associar('Codificacao', edtCodificacao);
    associar('Tipo', cboTipo);
  end;
  CampoPesquisa:= 'Descricao';

end;

end.
