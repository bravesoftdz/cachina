unit Relpagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Data.DB,
  Datasnap.DBClient, Vcl.ExtCtrls, QRPDFFilt, QRExport;

type
  TFormRelPagamento = class(TForm)
    QuickRep1: TQuickRep;
    cdsPagamento: TClientDataSet;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRExcelFilter1: TQRExcelFilter;
    QRPDFFilter1: TQRPDFFilter;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    imgLogo: TQRImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelPagamento: TFormRelPagamento;

implementation

{$R *.dfm}

uses PagamentoDetalhes;



procedure TFormRelPagamento.FormCreate(Sender: TObject);
begin
//imgLogo.picture.LoadFromFile(extractfilepath(application.ExeName)+'logo.jpg');
end;

end.
