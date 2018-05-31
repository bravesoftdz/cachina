unit Indicadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, DateUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Datasnap.DBClient, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  VclTee.TeeGDIPlus, VclTee.TeEngine, VclTee.Series, VclTee.TeeProcs,
  VclTee.Chart, VclTee.DBChart;

type
  TFormIndicadores = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    DataSource3: TDataSource;
    ClientDataSet3: TClientDataSet;
    DataSource4: TDataSource;
    ClientDataSet4: TClientDataSet;
    ClientDataSet1totalQtd: TAggregateField;
    ClientDataSet1totalValor: TAggregateField;
    ClientDataSet2totalQtd: TAggregateField;
    ClientDataSet2totalValor: TAggregateField;
    ClientDataSet3totalQtd: TAggregateField;
    ClientDataSet3totalValor: TAggregateField;
    ClientDataSet4totalQtd: TAggregateField;
    ClientDataSet4totalValor: TAggregateField;
    ClientDataSet5: TClientDataSet;
    ClientDataSet6: TClientDataSet;
    ClientDataSet7: TClientDataSet;
    ClientDataSet1Situacao: TStringField;
    ClientDataSet1Valor: TFloatField;
    ClientDataSet1Qtd: TIntegerField;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    ClientDataSet2Situacao: TStringField;
    ClientDataSet2Qtd: TIntegerField;
    ClientDataSet2Valor: TFloatField;
    ClientDataSet3Qtd: TIntegerField;
    ClientDataSet3Valor: TFloatField;
    ClientDataSet4Descrciao: TStringField;
    ClientDataSet4Qtd: TIntegerField;
    ClientDataSet4Valor: TFloatField;
    ClientDataSet3Ano: TIntegerField;
    Label2: TLabel;
    cboFuncionario: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    lbtotalQtd1: TLabel;
    lbtotalValor1: TLabel;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    lbtotalQtd2: TLabel;
    lbtotalValor2: TLabel;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    lbtotalValor3: TLabel;
    lbtotalQtd3: TLabel;
    Label13: TLabel;
    DBGrid3: TDBGrid;
    GroupBox4: TGroupBox;
    lbtotalValor4: TLabel;
    lbtotalQtd4: TLabel;
    Label16: TLabel;
    DBGrid4: TDBGrid;
    TabSheet2: TTabSheet;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    DBChart4: TDBChart;
    Series4: TPieSeries;
    DBChart3: TDBChart;
    Series3: TPieSeries;
    TabSheet3: TTabSheet;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lbRecebido: TLabel;
    lbPago: TLabel;
    lbDiferenca1: TLabel;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    lbAReceber: TLabel;
    lbAPagar: TLabel;
    lbDiferenca2: TLabel;
    GroupBox7: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    lbReceberAtrasado: TLabel;
    lbPagarAtrasado: TLabel;
    lbDiferenca3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    procedure ConsultaIndicadorPorSituacao(dataInicio, dataFim: TDatetime);
    procedure ConsultaIndicadorPorFormaPagamento(dataInicio,
      dataFim: TDatetime);
    procedure ConsultaIndicadorAno(dataInicio, dataFim: TDatetime);
    procedure ConsultaIndicadorPorfuncionario(dataInicio, dataFim: TDatetime;
      NomeFuncionario: string = '');
    procedure ConsultarSituacaoFinanceira(dataInicio, dataFim: TDatetime);
    procedure ConsultarSituacaoPagaERecebido(dataInicio, dataFim: TDatetime);
    procedure ConsultarSituacaoAPagarEAReceber(dataInicio, dataFim: TDatetime);
    procedure ConsultarSituacaoAtrasado(dataInicio, dataFim: TDatetime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIndicadores: TFormIndicadores;

implementation

{$R *.dfm}

uses srvModBaseDados, System.StrUtils, DBUtils, EntidadeFactory;

procedure TFormIndicadores.FormActivate(Sender: TObject);
begin
  DateTimePicker1.Date := StartOfTheMonth(Date);
  DateTimePicker2.Date := Date;

  ConsultaIndicadorPorSituacao(DateTimePicker1.Date, DateTimePicker2.Date);
  ConsultaIndicadorPorFormaPagamento(DateTimePicker1.Date,
    DateTimePicker2.Date);
  ConsultaIndicadorAno(DateTimePicker1.Date, DateTimePicker2.Date);
  ConsultaIndicadorPorfuncionario(DateTimePicker1.Date, DateTimePicker2.Date);
   ConsultarSituacaoFinanceira(DateTimePicker1.Date, DateTimePicker2.Date);

  FillCombobox(tpFuncionarios, cboFuncionario, '0=0', 'Codigo', 'Nome', 'Nome');
end;

procedure TFormIndicadores.SpeedButton1Click(Sender: TObject);
begin
  ConsultaIndicadorPorSituacao(DateTimePicker1.Date, DateTimePicker2.Date);
  ConsultaIndicadorPorFormaPagamento(DateTimePicker1.Date,
    DateTimePicker2.Date);
  ConsultaIndicadorAno(DateTimePicker1.Date, DateTimePicker2.Date);
  ConsultaIndicadorPorfuncionario(DateTimePicker1.Date, DateTimePicker2.Date,
    cboFuncionario.Text);
  ConsultarSituacaoFinanceira(DateTimePicker1.Date, DateTimePicker2.Date);
end;

procedure TFormIndicadores.SpeedButton5Click(Sender: TObject);
begin
  ConsultarSituacaoFinanceira(DateTimePicker1.Date, DateTimePicker2.Date);
end;

procedure TFormIndicadores.ConsultaIndicadorPorSituacao(dataInicio,
  dataFim: TDatetime);
begin
  ClientDataSet1.Data := DSServerModuleBaseDados.getDataSet
    ('Select Situacao, count(Distinct Orcamento.Codigo) As Qtd, Round(SUM(ItemOrcamento.total),2) as Valor'
    + ' from Orcamento  ' +
    ' left join ItemOrcamento on Orcamento.Codigo =  CodigoOrcamento  ' +
    ' Where Orcamento.Data >=' + quotedstr(formatDatetime('dd/mm/yyyy 00:00:00',
    dataInicio)) + ' and Orcamento.Data <=' +
    quotedstr(formatDatetime('dd/mm/yyyy 23:00:00', dataFim)) +
    ' group by  Situacao  ' +
    'order by count(Distinct Orcamento.Codigo) desc').Data;
  lbtotalQtd1.Caption := ClientDataSet1totalQtd.AsString;
  lbtotalValor1.Caption := FormatFloat(',0.00', ClientDataSet1totalValor.value);
end;

procedure TFormIndicadores.ConsultaIndicadorPorFormaPagamento(dataInicio,
  dataFim: TDatetime);
begin
  ClientDataSet2.Data := DSServerModuleBaseDados.getDataSet
    ('Select FormaPagamento.Descricao,count(Distinct Orcamento.Codigo) as Qtd ,Round(SUM(ItemOrcamento.total),2) as Valor from '
    + ' Orcamento  ' +
    ' inner join ItemOrcamento on Orcamento.Codigo =  ItemOrcamento.CodigoOrcamento  '
    + ' inner join OrcamentoFormaPagamento on Orcamento.Codigo  = OrcamentoFormaPagamento.CodigoOrcamento '
    + ' inner join FormaPagamento on FormaPagamento.Codigo =OrcamentoFormaPagamento.CodigoFormaPagamento  '
    + ' Where Orcamento.Data >=' +
    quotedstr(formatDatetime('dd/mm/yyyy 00:00:00', dataInicio)) +
    ' and Orcamento.Data <=' + quotedstr(formatDatetime('dd/mm/yyyy 23:00:00',
    dataFim)) + ' group by  FormaPagamento.Descricao ' +
    ' order by count(Distinct Orcamento.Codigo) desc ').Data;

  lbtotalQtd2.Caption := ClientDataSet2totalQtd.AsString;
  lbtotalValor2.Caption := FormatFloat(',0.00', ClientDataSet2totalValor.value);
end;

procedure TFormIndicadores.ConsultaIndicadorAno(dataInicio, dataFim: TDatetime);
begin
  ClientDataSet3.Data := DSServerModuleBaseDados.getDataSet
    ('Select datepart(year,Orcamento.Data) as Ano,count(Distinct Orcamento.Codigo) as Qtd  ,Round(SUM( ItemOrcamento.total),2) as Valor  from'
    + ' Orcamento  ' +
    ' left join ItemOrcamento on Orcamento.Codigo =  CodigoOrcamento  ' +
    ' Where Orcamento.Data >=' + quotedstr(formatDatetime('dd/mm/yyyy 00:00:00',
    dataInicio)) + ' and Orcamento.Data <=' +
    quotedstr(formatDatetime('dd/mm/yyyy 23:00:00', dataFim)) +
    ' group by  datepart(year,Orcamento.Data) ' +
    ' order by datepart(year,Orcamento.Data) ').Data;
  lbtotalQtd3.Caption := ClientDataSet3totalQtd.AsString;
  lbtotalValor3.Caption := FormatFloat(',0.00', ClientDataSet3totalValor.value);
end;

procedure TFormIndicadores.ConsultaIndicadorPorfuncionario(dataInicio,
  dataFim: TDatetime; NomeFuncionario: string = '');
begin
  ClientDataSet4.Data := DSServerModuleBaseDados.getDataSet
    ('  Select Funcionarios.Nome as Funcionario, count(Distinct Orcamento.Codigo)as Qtd  ,Round(SUM(ItemOrcamento.total),2) as Valor from '
    + '  Orcamento  ' +
    '  inner join ItemOrcamento on Orcamento.Codigo =  CodigoOrcamento ' +
    '  inner join Funcionarios on Funcionarios.Codigo =ItemOrcamento.CodigoFuncionario  '
    + ' Where Orcamento.Data >=' +
    quotedstr(formatDatetime('dd/mm/yyyy 00:00:00', dataInicio)) +
    ' and Orcamento.Data <=' + quotedstr(formatDatetime('dd/mm/yyyy 23:00:00',
    dataFim)) + ifthen(NomeFuncionario <> '', ' and Funcionarios.Nome = ' +
    quotedstr(NomeFuncionario), '') + ' group by  Funcionarios.Nome ' +
    ' order by count(Distinct Orcamento.Codigo) desc  ').Data;
  lbtotalQtd4.Caption := ClientDataSet4totalQtd.AsString;
  lbtotalValor4.Caption := FormatFloat(',0.00', ClientDataSet4totalValor.value);
end;

procedure TFormIndicadores.ConsultarSituacaoFinanceira(dataInicio,
  dataFim: TDatetime);
begin
  ConsultarSituacaoPagaERecebido(dataInicio, dataFim);
  ConsultarSituacaoAPagarEAReceber(dataInicio, dataFim);
  ConsultarSituacaoAtrasado(dataInicio, dataFim);
end;

procedure TFormIndicadores.ConsultarSituacaoPagaERecebido(dataInicio,
  dataFim: TDatetime);
var
  valor1, valor2: double;
begin
  ClientDataSet5.Data := DSServerModuleBaseDados.getDataSet
    (' Select Round(SUM(ValorBaixado),2) as Valor from Recebimento  ' +
    ' where  ' + ' ValorBaixado > 0 and DataBaixa is not null and ' +
    ' DataBaixa >= ' + quotedstr(formatDatetime('dd/mm/yyyy 00:00:00',
    dataInicio)) + ' and DataBaixa <=' +
    quotedstr(formatDatetime('dd/mm/yyyy 23:00:00', dataFim)) + ' Union all ' +
    ' Select SUM(ValorBaixado) as Valor from Pagamento ' + ' where ' +
    ' ValorBaixado > 0 and DataBaixa is not null and ' + ' DataBaixa >= ' +
    quotedstr(formatDatetime('dd/mm/yyyy 00:00:00', dataInicio)) +
    ' and DataBaixa <=' + quotedstr(formatDatetime('dd/mm/yyyy 23:00:00',
    dataFim))).Data;
  ClientDataSet5.First;
  valor1 := ClientDataSet5.FieldByName('Valor').asfloat;
  lbRecebido.Caption := FormatFloat(',0.00', valor1);
  ClientDataSet5.Next;
  valor2 := ClientDataSet5.FieldByName('Valor').asfloat;
  lbPago.Caption := FormatFloat(',0.00', valor2);
  lbDiferenca1.Caption := FormatFloat(',0.00', valor1 - valor2);
end;

procedure TFormIndicadores.ConsultarSituacaoAPagarEAReceber(dataInicio,
  dataFim: TDatetime);
var
  valor1, valor2: double;
begin
  ClientDataSet6.Data := DSServerModuleBaseDados.getDataSet
    ('Select Round(SUM(Valor),2) as Valor from Recebimento ' + ' where ' +
    ' ValorBaixado = 0 and DataBaixa is null  and ' + ' DataVencimento >= ' +
    quotedstr(formatDatetime('dd/mm/yyyy 00:00:00', dataInicio)) +
    ' and DataVencimento <=' + quotedstr(formatDatetime('dd/mm/yyyy 23:00:00',
    dataFim)) + ' Union all  ' + ' Select SUM(Valor) as Valor from Pagamento  '
    + ' where ' + ' ValorBaixado = 0 and DataBaixa is null and ' +
    ' DataVencimento >= ' + quotedstr(formatDatetime('dd/mm/yyyy 00:00:00',
    dataInicio)) + ' and DataVencimento <=' +
    quotedstr(formatDatetime('dd/mm/yyyy 23:00:00', dataFim))).Data;
  ClientDataSet6.First;
  valor1 := ClientDataSet6.FieldByName('Valor').asfloat;
  lbAReceber.Caption := FormatFloat(',0.00', valor1);
  ClientDataSet6.Next;
  valor2 := ClientDataSet6.FieldByName('Valor').asfloat;
  lbAPagar.Caption := FormatFloat(',0.00', valor2);
  lbDiferenca2.Caption := FormatFloat(',0.00', valor1 - valor2);
end;

procedure TFormIndicadores.ConsultarSituacaoAtrasado(dataInicio,
  dataFim: TDatetime);
var
  valor1, valor2: double;
begin
  ClientDataSet7.Data := DSServerModuleBaseDados.getDataSet
    ('Select Round(SUM(Valor),2) as Valor from Recebimento  ' + ' where ' +
    ' ValorBaixado = 0 and DataBaixa is null and DataVencimento>= GETDATE() and '
    + ' DataVencimento >= ' + quotedstr(formatDatetime('dd/mm/yyyy 00:00:00',
    dataInicio)) + ' and DataVencimento <=' +
    quotedstr(formatDatetime('dd/mm/yyyy 23:00:00', dataFim)) + ' Union all  ' +
    ' Select SUM(Valor) as Valor from Pagamento  ' + ' where  ' +
    ' ValorBaixado = 0 and DataBaixa is null and DataVencimento>= GETDATE() and '
    + ' DataVencimento >= ' + quotedstr(formatDatetime('dd/mm/yyyy 00:00:00',
    dataInicio)) + ' and DataVencimento <=' +
    quotedstr(formatDatetime('dd/mm/yyyy 23:00:00', dataFim))).Data;
  ClientDataSet7.First;
  valor1 := ClientDataSet7.FieldByName('Valor').asfloat;
  lbReceberAtrasado.Caption := FormatFloat(',0.00', valor1);
  ClientDataSet7.Next;
  valor2 := ClientDataSet7.FieldByName('Valor').asfloat;
  lbPagarAtrasado.Caption := FormatFloat(',0.00', valor2);
  lbDiferenca3.Caption := FormatFloat(',0.00', valor1 - valor2);
end;

end.

{







}
