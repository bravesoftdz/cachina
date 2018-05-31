unit ContatosClientesListagem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  Graphics, Controls, Forms, Dialogs, StdCtrls,
  TemplateListagemBase, System.Rtti,  Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormContatosClientesListagem = class(TTemplateFormListagemBase)
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    CodigoCliente: string;
    { Public declarations }
    CPFContato: string;
    NomeContato: string;
  end;

var
  FormContatosClientesListagem: TFormContatosClientesListagem;

implementation

{$R *.dfm}

uses ControllerClientes, EntidadeFactory;

procedure TFormContatosClientesListagem.FormActivate(Sender: TObject);
var
  Controller: TControllerClientes;
begin
  inherited;
  Controller:= TControllerClientes.Create;

  srcEntidade.DataSet:= Controller.GetSelect(
                        TEntidadeFactory.GetNameEntidade(tpContatos) +' T1 ',
                        'CodigoCliente = '+ CodigoCliente);
  Controller.Free;
end;

procedure TFormContatosClientesListagem.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  CPFContato  := srcEntidade.DataSet.FieldByName('CPF').AsString;
  NomeContato := srcEntidade.DataSet.FieldByName('Nome').AsString;
end;

end.
