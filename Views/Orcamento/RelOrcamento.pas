unit RelOrcamento;

interface
      //
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, QRCtrls, Vcl.ExtCtrls, DB,
  Datasnap.DBClient, QRPDFFilt, Vcl.Imaging.jpeg, Vcl.StdCtrls;

type
  TFormRelOrcamento = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    cdsOrcamento: TClientDataSet;
    cdsItens: TClientDataSet;
    cdsFormaPagamento: TClientDataSet;
    ChildBand1: TQRChildBand;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRCompositeReport1: TQRCompositeReport;
    QRPDFFilter1: TQRPDFFilter;
    TitleBand2: TQRBand;
    SummaryBand1: TQRBand;
    SummaryBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel15: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText13: TQRDBText;
    QRImage1: TQRImage;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel21: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    procedure QRCompositeReport1AddReports(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelOrcamento: TFormRelOrcamento;

implementation

{$R *.dfm}

procedure TFormRelOrcamento.QRCompositeReport1AddReports(Sender: TObject);
begin
  QRCompositeReport1.Reports.Add(QuickRep1);
  QRCompositeReport1.Reports.Add(QuickRep2);

  QRCompositeReport1.Reports.Add(QuickRep1);
  QRCompositeReport1.Reports.Add(QuickRep2);

  QRCompositeReport1.Reports.Add(QuickRep1);
  QRCompositeReport1.Reports.Add(QuickRep2);
end;

end.
