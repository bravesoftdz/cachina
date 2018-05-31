unit ParametrosPrecoVendaDetalhes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  Graphics, Controls, Forms, Dialogs, StdCtrls,
  TemplateDetalhesComTabGrid, System.Rtti, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Menus;

type
  TFormParametrosPrecoVendaDetalhes = class(TTemplateFormComTabGridDetalhes)
    Label1: TLabel;
    edtDescricao: TEdit;
    Label8: TLabel;
    edtParamImpostoSimples: TEdit;
    Label12: TLabel;
    edtParamTaxa: TEdit;
    Label13: TLabel;
    edtParamComissao: TEdit;
    Label24: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edtParamDesconto: TEdit;
    edtParamCustoFixo: TEdit;
    edtParamLucro: TEdit;
    Label25: TLabel;
    edtMarkup: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParametrosPrecoVendaDetalhes: TFormParametrosPrecoVendaDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas, EntidadeFactory;

procedure TFormParametrosPrecoVendaDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerTabelas.Create;
  Entidade   := TEntidadeFactory.Criar(tpParametrosPrecoVenda);
  inherited;
  with MapperEntidade do
  begin
    Associar('Codigo', nil);
    Associar('Descricao', edtDescricao );
    Associar('PercentualCartao',edtParamTaxa);
    Associar('PercentualComissao',edtParamComissao);
    Associar('PercentualCustoFixo',edtParamCustoFixo);
    Associar('PercentualCustoVariavel',nil);
    Associar('PercentualDesconto', edtParamDesconto);
    Associar('PercentualFolha', nil);
    Associar('PercentualImposto' ,edtParamImpostoSimples);
    Associar('PercentualLucro', edtParamLucro);
  end;
end;

procedure TFormParametrosPrecoVendaDetalhes.SpeedButton2Click(Sender: TObject);

  function CalculaTotalMarkup:Double;
  begin
     result:= strtofloatdef(edtParamImpostoSimples.text, 0) +
     strtofloatdef(edtParamComissao.text, 0)  +
     strtofloatdef(edtParamCustoFixo.text, 0)  +
     strtofloatdef(edtParamDesconto.text, 0) +
     strtofloatdef(edtParamTaxa.text, 0) +
     strtofloatdef(edtParamLucro.text, 0);
  end;
begin
  inherited;
     edtMarkup.text := floattostr(CalculaTotalMarkup);
end;

end.
