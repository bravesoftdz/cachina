unit ImovelUnidadeDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTab, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TFormUnidadeImovelDetalhes = class(TTemplateFormComTabDetalhes)
    DBGrid1: TDBGrid;
    edtDescricao: TEdit;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cboProjeto: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FCodigoImovel: string;
    procedure SetCodigoImovel(const Value: string);
    { Private declarations }
  public
    { Public declarations }
   property CodigoImovel: string read FCodigoImovel write SetCodigoImovel;
  end;

var
  FormUnidadeImovelDetalhes: TFormUnidadeImovelDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas, EntidadeFactory, DBUtils;

procedure TFormUnidadeImovelDetalhes.btnConfirmarClick(Sender: TObject);
begin
  MapperEntidade.Associar('CodigoImovel', nil, FCodigoImovel );
  inherited;
  GetDataSet;
end;

procedure TFormUnidadeImovelDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerTabelas.Create;
  Entidade   := TEntidadeFactory.Criar(tpImovelUnidade);
  Campos := 'T1.* , (Select Descricao From Projeto where Codigo = T1.CodigoProjeto) as DescricaoProjeto';
  inherited;
  with MapperEntidade do
  begin
    Associar('Codigo',nil);
    Associar('Descricao', edtDescricao);
    Associar('CodigoProjeto', cboProjeto);
  end;

  FillCombobox( 'Projeto T1', cboProjeto,'0=0');
end;

procedure TFormUnidadeImovelDetalhes.FormShow(Sender: TObject);
begin
  inherited;
  Condicao   := 'CodigoImovel='+ FCodigoImovel;
  GetDataSet;
end;

procedure TFormUnidadeImovelDetalhes.SetCodigoImovel(const Value: string);
begin
  FCodigoImovel := Value;
end;

procedure TFormUnidadeImovelDetalhes.SpeedButton1Click(Sender: TObject);
var
  I: integer;
begin
  inherited;
  if edtDescricao.text <> '' then
  begin
    for I := SpinEdit1.Value to SpinEdit2.Value do
    begin
      if not srcEntidade.dataset.locate('Descricao',
                                        edtDescricao.text+' '+
                                        inttostr( I ), [] ) then
      begin
        MapperEntidade.ComponentToEntidade;

        MapperEntidade.Associar('Descricao', nil,  edtDescricao.text+' '+ inttostr( I ) );
        MapperEntidade.Associar('CodigoImovel', nil, FCodigoImovel );
        MapperEntidade.Associar('CodigoProjeto', nil, FCodigoImovel );
        Controller.inserir( MapperEntidade.Entidade );
      end;
    end;
    GetDataSet;
  end
  else
    showmessage('Informe a descri��o!');
end;

end.
