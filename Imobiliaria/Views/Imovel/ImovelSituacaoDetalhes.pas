unit ImovelSituacaoDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFormImovelSituacaoDetalhes = class(TTemplateFormComTabGridDetalhes)
    lbDescricao: TLabel;
    edtDescricao: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImovelSituacaoDetalhes: TFormImovelSituacaoDetalhes;

implementation

{$R *.dfm}

uses EntidadeFactory, ControllerTabelas;

procedure TFormImovelSituacaoDetalhes.FormCreate(Sender: TObject);
begin
  inherited;
  Controller := TControllerTabelas.create;
  Entidade   := TEntidadeFactory.criar(tpImovelSituacao);

  inherited;
  with MapperEntidade do
  begin
      associar('Codigo',nil);
      associar('CodigoFilial',nil);
      associar('Descricao',edtDescricao);
  end;
end;

end.
