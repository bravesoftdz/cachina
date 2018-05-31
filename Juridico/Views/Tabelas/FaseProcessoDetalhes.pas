unit FaseProcessoDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid,
  Vcl.StdCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TFormFaseProcessoDetalhes = class(TTemplateFormComTabGridDetalhes)
    edtDescricao: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFaseProcessoDetalhes: TFormFaseProcessoDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas, EntidadeFactory;

procedure TFormFaseProcessoDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerTabelas.create;
  Entidade   := TEntidadefactory.criar(tpFaseAtual);
  CampoPesquisa := 'T1."Descricao"';
  inherited;
  with MapperEntidade do
  begin
    associar('Codigo',nil);
    Associar('CodigoFilial', nil);
    Associar('Descricao', edtDescricao);
  end;
end;

end.
