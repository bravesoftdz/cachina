unit Parcelar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.DBCtrls;

type
  TFormParcelar = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtValorParcelar: TEdit;
    dateDataVencimento: TDateTimePicker;
    edtValorEntrada: TEdit;
    edtQtdParcelas: TEdit;
    Label5: TLabel;
    edtDias: TSpinEdit;
    Label6: TLabel;
    chkACada: TCheckBox;
    cboCodigoFormaPagamentoEntrada: TDBLookupComboBox;
    Label7: TLabel;
    cboCodigoFormaPagamento: TDBLookupComboBox;
    Label8: TLabel;
    cboCaixa: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure chkACadaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cboCodigoFormaPagamentoCloseUp(Sender: TObject);
  private
    FValor: double;
    FValorEntrada: Double;
    FVencimento: Tdatetime;
    FQtdParcelas: integer;
    FDias: integer;
    FAcada: boolean;
    FFormaPgtoEntrada: string;
    FFormaPgtoParcela: string;
    FLoteRecebimento: string;
    procedure SetQtdParcelas(const Value: integer);
    procedure SetValor(const Value: double);
    procedure SetValorEntrada(const Value: Double);
    procedure SetVencimento(const Value: Tdatetime);
    procedure SetDias(const Value: integer);
    procedure SetAcada(const Value: boolean);
    procedure SetFormaPgtoEntrada(const Value: string);
    procedure SetFormaPgtoParcela(const Value: string);
    procedure SetLoteRecebimento(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property Valor: double read FValor write SetValor;
    property Vencimento:Tdatetime read FVencimento write SetVencimento;
    property QtdParcelas: integer read FQtdParcelas write SetQtdParcelas;
    property ValorEntrada: Double read FValorEntrada write SetValorEntrada;
    property Acada:boolean read FAcada write SetAcada;
    property Dias : integer read FDias write SetDias;
    property FormaPgtoEntrada:string read FFormaPgtoEntrada write SetFormaPgtoEntrada;
    property FormaPgtoParcela:string read FFormaPgtoParcela write SetFormaPgtoParcela;
    property LoteRecebimento: string read FLoteRecebimento write SetLoteRecebimento;
    property Caixa: string read FLoteRecebimento write SetLoteRecebimento;
  end;

var
  FormParcelar: TFormParcelar;

implementation

{$R *.dfm}

uses DBUtils, EntidadeFactory, ControllerTabelas;

procedure TFormParcelar.BitBtn1Click(Sender: TObject);
begin
  if cboCodigoFormaPagamento.text ='' then
  begin
    showmessage('Informe a forma de pagamento!');
    abort;
  end;

  Vencimento   := dateDataVencimento.DateTime;
  Valor        := strtofloat(edtValorParcelar.text);
  ValorEntrada := strtofloat(edtValorEntrada.text);
  QtdParcelas  := strtoInt(edtQtdParcelas.text);
  Acada        := chkACada.Checked;
  Dias         := strtoInt(edtDias.Text);

  if cboCodigoFormaPagamento.Text <> '' then
     FormaPgtoParcela := cboCodigoFormaPagamento.KeyValue;
  if cboCodigoFormaPagamentoEntrada.Text <> '' then
     FormaPgtoEntrada := cboCodigoFormaPagamentoEntrada.KeyValue;
    if cboCaixa.Text <> '' then
     Caixa:= cboCaixa.KeyValue;
end;

procedure TFormParcelar.cboCodigoFormaPagamentoCloseUp(Sender: TObject);
var
  Controller : TControllerTabelas;
begin
  Controller := TControllerTabelas.create;
  if cboCodigoFormaPagamento.text <> '' then
  begin
     dateDataVencimento.date := date + strtoint( TControllerTabelas(Controller).GetValue('FormaPagamento',
                                       'Descricao='+ quotedstr( cboCodigoFormaPagamento.text) ,
                                       'ISNULL(DiasVencimento,0) as DiasVencimento') );

     edtQtdParcelas.text      :=  TControllerTabelas(Controller).GetValue('FormaPagamento',
                                                                          'Descricao='+ quotedstr( cboCodigoFormaPagamento.text) ,
                                                                          'NumeroParcelas') ;
  end;
end;

procedure TFormParcelar.chkACadaClick(Sender: TObject);
begin
  Label6.Enabled:= chkACada.Checked;
  edtDias.Enabled:= chkACada.Checked;
end;

procedure TFormParcelar.FormCreate(Sender: TObject);
begin
  FillLookUpCombobox( tpFormaPagamento, cboCodigoFormaPagamento);
  FillLookUpCombobox( tpFormaPagamento, cboCodigoFormaPagamentoEntrada);
  FillLookUpCombobox( tpCaixa, cboCaixa);
  dateDataVencimento.DateTime := incMonth(date);
end;

procedure TFormParcelar.SetAcada(const Value: boolean);
begin
  FAcada := Value;
end;

procedure TFormParcelar.SetDias(const Value: integer);
begin
  FDias := Value;
end;

procedure TFormParcelar.SetFormaPgtoEntrada(const Value: string);
begin
  FFormaPgtoEntrada := Value;
end;

procedure TFormParcelar.SetFormaPgtoParcela(const Value: string);
begin
  FFormaPgtoParcela := Value;
end;

procedure TFormParcelar.SetLoteRecebimento(const Value: string);
begin
  FLoteRecebimento := Value;
end;

procedure TFormParcelar.SetQtdParcelas(const Value: integer);
begin
  FQtdParcelas := Value;
end;

procedure TFormParcelar.SetValor(const Value: double);
begin
  FValor := Value;
end;

procedure TFormParcelar.SetValorEntrada(const Value: Double);
begin
  FValorEntrada := Value;
end;

procedure TFormParcelar.SetVencimento(const Value: Tdatetime);
begin
  FVencimento := Value;
end;

end.
