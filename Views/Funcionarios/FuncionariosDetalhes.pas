unit FuncionariosDetalhes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  Graphics, Controls, Forms,Dialogs, TemplateDetalhesComTabGrid, System.Rtti,
  Data.DB,  Mapper, GenericEntidade, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Menus;

type
  TFormFuncionariosDetalhes = class(TTemplateFormComTabGridDetalhes)
    TabControl1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label2: TLabel;
    Nome: TEdit;
    Label3: TLabel;
    Telefone: TEdit;
    Label4: TLabel;
    Email: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    Login: TEdit;
    Label8: TLabel;
    Senha: TEdit;
    StringGrid2: TDBGrid;
    edtComissaoItem: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Comissao: TEdit;
    cboServico: TComboBox;
    Admissao: TDateTimePicker;
    srcFuncionarioComissao: TDataSource;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Agencia: TEdit;
    Label11: TLabel;
    Conta: TEdit;
    Banco: TComboBox;
    lbbanco: TLabel;
    CodigoCargo: TComboBox;
    Label13: TLabel;
    SpeedButton1: TSpeedButton;
    Button2: TButton;
    Label14: TLabel;
    Situacao: TComboBox;
    edtValor: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Gratificacao: TEdit;
    TipoGratificacao: TComboBox;
    Label17: TLabel;
    Label18: TLabel;
    SalarioBase: TEdit;
    TabSheet6: TTabSheet;
    DBGrid1: TDBGrid;
    dateDataFalta: TDateTimePicker;
    Button3: TButton;
    Button4: TButton;
    srcFuncionarioFaltas: TDataSource;
    Label19: TLabel;
    Label20: TLabel;
    edtObservacaoFalta: TEdit;
    Label21: TLabel;
    CPF: TEdit;
    edtDias: TEdit;
    Label12: TLabel;
    Label22: TLabel;
    lbDias: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid2CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure TabSheet1Show(Sender: TObject);
  private
    { Private declarations }
    MapperFuncionarioComissao:TMapper;
    MapperFuncionarioFaltas:TMapper;
    FuncionarioComissao: TGenericEntidade;
    FuncionarioFaltas: TGenericEntidade;
    procedure ConsultarFuncionarioComissao;
    procedure MapearFuncionarioComissao;
    procedure MapearFuncionarioFaltas;
    procedure ConsultarFuncionarioFaltas;
  public
    { Public declarations }
  end;

var
  FormFuncionariosDetalhes: TFormFuncionariosDetalhes;

implementation

{$R *.dfm}

uses ControllerFuncionarios, EntidadeFactory, DBUtils, Principal,
  ControllerTabelas;

procedure TFormFuncionariosDetalhes.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  Controller := TControllerFuncionarios.Create;
  Entidade   := TEntidadeFactory.Criar(tpFuncionarios);
  Campos     := camposFuncionario;
  inherited;
  CampoPesquisa:= 'Nome';
  DBUtils.FillCombobox(tpCargo,CodigoCargo);
  MapearComponentes;
  MapearFuncionarioComissao;
  MapearFuncionarioFaltas;
end;

procedure TFormFuncionariosDetalhes.Button1Click(Sender: TObject);
var
  CodigoFuncionario: string;
begin
  if srcEntidade.DataSet.FieldByName('Codigo').AsString <> '' then
  begin
    MapperFuncionarioComissao.ComponentToEntidade;
    CodigoFuncionario:= srcEntidade.DataSet.FieldByName('Codigo').AsString;
    MapperFuncionarioComissao.SendValueToFieldEntidade( 'CodigoFuncionario', CodigoFuncionario);
    if not srcFuncionarioComissao.Dataset.Locate('Servico',cboServico.Text,[]) then
       Controller.Inserir(FuncionarioComissao)
    else
       Controller.Atualizar(FuncionarioComissao);

    ConsultarFuncionarioComissao;
  end
  else
    showmessage('N�o existe funcion�rio confirmado!');

end;

procedure TFormFuncionariosDetalhes.Button2Click(Sender: TObject);
begin
  inherited;
  if not srcFuncionarioComissao.dataset.isEmpty then
  begin
     TControllerTabelas(Controller).DeleteSQL('FuncionarioComissao','CodigoFuncionario='+
     srcFuncionarioComissao.dataset.fieldbyname('CodigoFuncionario').asstring+' and '+
     ' Codigoproduto='+ srcFuncionarioComissao.dataset.fieldbyname('CodigoProduto').asstring );
  end;
  ConsultarFuncionarioComissao;
end;

procedure TFormFuncionariosDetalhes.Button3Click(Sender: TObject);
var
  CodigoFuncionario: string;
begin
  if srcEntidade.DataSet.FieldByName('Codigo').AsString <> '' then
  begin
    MapperFuncionarioFaltas.ComponentToEntidade;

    CodigoFuncionario:= srcEntidade.DataSet.FieldByName('Codigo').AsString;
    MapperFuncionarioFaltas.SendValueToFieldEntidade( 'CodigoFuncionario', CodigoFuncionario);

    if not srcFuncionarioFaltas.Dataset.Locate('Data', datetostr( dateDataFalta.Date) ,[]) then
       Controller.Inserir(FuncionarioFaltas)
    else
       Controller.Atualizar(FuncionarioFaltas);

    ConsultarFuncionarioFaltas;
  end
  else
    showmessage('N�o existe funcion�rio confirmado!');
end;

procedure TFormFuncionariosDetalhes.Button4Click(Sender: TObject);
begin
  inherited;
  if not srcFuncionarioFaltas.DataSet.IsEmpty then
  begin
      //MapperFuncionarioFaltas.SendValueToFieldEntidade('Codigo',
      //srcFuncionarioFaltas.DataSet.FieldByName('Codigo').AsString);
      TControllertabelas(Controller).DeleteSQL('FuncionarioFaltas','Data='+
      quotedstr( formatDatetime( 'DD/MM/YYYY',srcFuncionarioFaltas.DataSet.FieldByName('Data').asdatetime)  ) );
      srcFuncionarioFaltas.DataSet.delete;
  end;
end;

procedure  TFormFuncionariosDetalhes.ConsultarFuncionarioComissao;
begin
  if (Operacao <> 'Insert') then
     srcFuncionarioComissao.Dataset:= Controller.GetDataset(FuncionarioComissao,
                                                           'CodigoFuncionario='+
                                                            quotedstr(srcEntidade.DataSet.FieldByName('Codigo').AsString),
                                                            camposFuncionarioComissao)
  else
     srcFuncionarioComissao.Dataset:= Controller.GetDataset(FuncionarioComissao,
                                                           'CodigoFuncionario=0',
                                                            camposFuncionarioComissao);
end;

procedure  TFormFuncionariosDetalhes.ConsultarFuncionarioFaltas;
begin
  if (Operacao <> 'Insert') then
     srcFuncionarioFaltas.Dataset:= Controller.GetDataset(FuncionarioFaltas,
                                                           'CodigoFuncionario='+
                                                            quotedstr(srcEntidade.DataSet.FieldByName('Codigo').AsString) )
  else
     srcFuncionarioFaltas.Dataset:= Controller.GetDataset(FuncionarioFaltas,
                                                           'CodigoFuncionario=0');
end;

procedure TFormFuncionariosDetalhes.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
 if FuncionarioFaltas <> nil then
    FreeandNil(FuncionarioFaltas);
  FuncionarioFaltas := TEntidadeFactory.Criar(tpFuncionarioFaltas);
  MapperFuncionarioFaltas.Entidade := FuncionarioFaltas;
  MapperFuncionarioFaltas.Dataset := srcFuncionarioFaltas.DataSet;
  MapperFuncionarioFaltas.SendDataSetToEntidade;
  MapperFuncionarioFaltas.EntidadeToComponent;
end;

procedure TFormFuncionariosDetalhes.MapearFuncionarioComissao;
begin
  FuncionarioComissao        := TEntidadeFactory.Criar(tpFuncionarioComissao);
  ConsultarFuncionarioComissao;
  MapperFuncionarioComissao  := TMapper.Create(FuncionarioComissao,
                                               srcFuncionarioComissao.DataSet);
  with MapperFuncionarioComissao do
  begin
    associar('CodigoFuncionario', nil);
    associar('CodigoProduto', cboServico);
    associar('PercentualComissao', edtComissaoItem);
    associar('Valor', edtValor);
  end;

  FillComboBox( tpProduto , cboServico, 'Tipo=''Servi�o''');
end;


procedure TFormFuncionariosDetalhes.MapearFuncionarioFaltas;
begin
  FuncionarioFaltas        := TEntidadeFactory.Criar(tpFuncionarioFaltas);
  ConsultarFuncionarioFaltas;
  MapperFuncionarioFaltas  := TMapper.Create(FuncionarioFaltas,
                                               srcFuncionarioFaltas.DataSet);
  with MapperFuncionarioFaltas do
  begin
    associar('CodigoFuncionario', nil);
    associar('Data', dateDataFalta);
    associar('Tipo', nil);
    associar('Observacao', edtObservacaoFalta);
    associar('Dias', edtDias);
  end;
end;

procedure TFormFuncionariosDetalhes.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.actCargo.execute;
end;

procedure TFormFuncionariosDetalhes.StringGrid2CellClick(Column: TColumn);
begin
  inherited;
    if FuncionarioComissao <> nil then
    FreeandNil(FuncionarioComissao);
  FuncionarioComissao := TEntidadeFactory.Criar(tpFuncionarioComissao);
  MapperFuncionarioComissao.Entidade := FuncionarioComissao;
  MapperFuncionarioComissao.Dataset := srcFuncionarioComissao.DataSet;
  MapperFuncionarioComissao.SendDataSetToEntidade;
  MapperFuncionarioComissao.EntidadeToComponent;
end;

procedure TFormFuncionariosDetalhes.TabSheet1Show(Sender: TObject);
begin
  inherited;
  TabControl1.ACTIVEPAGEINDEX := 0;
end;

procedure TFormFuncionariosDetalhes.TabSheet4Show(Sender: TObject);
begin
  inherited;
  ConsultarFuncionarioComissao;
end;

procedure TFormFuncionariosDetalhes.TabSheet6Show(Sender: TObject);
begin
  inherited;
 ConsultarFuncionarioFaltas;
 lbDias.caption := TControllerTabelas(Controller).GetValue(
                   'DiarioAtividade dia'+
                   ' inner join ItemDiarioAtividade it on CodigoDiarioAtividade  = Dia.Codigo'+
                   '  inner join ItemEquipe iteq2 on it.CodigoEquipe =  iteq2.CodigoEquipe',
                   ' month(Data) = month( getdate()) and  iteq2.CodigoFuncionario ='+
                   quotedstr( MapperEntidade.GetValueEntidade('Codigo')),
                   'COUNT(DISTINCT DATA) as Dias' );
 
end;

end.
