{$I ACBr.inc}

unit EmissorNfe;

interface

uses
  IniFiles, ShellAPI, pcnRetConsReciNFe, math, Windows, Messages, SysUtils,
  Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, OleCtrls, SHDocVw,ACBrNFe, pcnConversao, ACBrNFeDANFEClass,
  ACBrUtil, pcnNFeW, pcnNFeRTXT, pcnAuxiliar, ACBrDFeUtil,  DB, XMLIntf, XMLDoc,
  Vcl.Grids, Vcl.DBGrids, ACBrNFeDANFEFRDM, ACBrNFeDANFEFR, ACBrBase, ACBrDFe,
  ACBrNFeNotasFiscais,strUtils, frxClass, Vcl.Menus, blcksock;

type
  TFormEmissorNfe = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    ckxVisualizar: TCheckBox;
    cbUF: TComboBox;
    Label7: TLabel;
    edtLogoMarca: TEdit;
    sbtnLogoMarca: TSpeedButton;
    ckSalvar: TCheckBox;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    OpenDialog1: TOpenDialog;
    btnSalvarConfig: TBitBtn;
    TabSheet4: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    edtNumSerie: TEdit;
    Label25: TLabel;
    rgTipoAmb: TRadioGroup;
    rgTipoDanfe: TRadioGroup;
    rgFormaEmissao: TRadioGroup;
    ACBrNFe1: TACBrNFe;
    sbtnGetCert: TSpeedButton;
    TabSheet7: TTabSheet;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    PageControl3: TPageControl;
    tsNFe: TTabSheet;
    btnImprimir: TButton;
    btnStatusServ: TButton;
    btnInutilizar: TButton;
    btnConsCad: TButton;
    btnGerarPDF: TButton;
    btnEnviarEmail: TButton;
    btnConsultarRecibo: TButton;
    btnEnvDPEC: TButton;
    btnConsultarDPEC: TButton;
    btnConsultarChave: TButton;
    btnCancelarChave: TButton;
    btnAdicionarProtNFe: TButton;
    btnCartadeCorrecao: TButton;
    btnManifDestConfirmacao: TButton;
    TabSheet12: TTabSheet;
    Memo1: TMemo;
    Label29: TLabel;
    edtCNAE: TEdit;
    TabSheet13: TTabSheet;
    edtPathNfe: TEdit;
    Label30: TLabel;
    SpeedButton1: TSpeedButton;
    edtPathCancelamento: TEdit;
    Label31: TLabel;
    SpeedButton2: TSpeedButton;
    edtPathDPEC: TEdit;
    Label32: TLabel;
    SpeedButton3: TSpeedButton;
    edtPathInutilizacao: TEdit;
    Label33: TLabel;
    SpeedButton4: TSpeedButton;
    edtPathMDe: TEdit;
    Label34: TLabel;
    edtPathCCe: TEdit;
    Label35: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label36: TLabel;
    edtPathSalvar: TEdit;
    SpeedButton7: TSpeedButton;
    Label37: TLabel;
    SpeedButton8: TSpeedButton;
    edtPathSquemas: TEdit;
    TabSheet14: TTabSheet;
    grdCobranca: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    srcEntidade: TDataSource;
    srcItems: TDataSource;
    srcCobranca: TDataSource;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    TabSheet11: TTabSheet;
    TreeViewRetornoConsulta: TTreeView;
    memoInfoAdicionais: TMemo;
    TabSheet15: TTabSheet;
    Label39: TLabel;
    edtChaveAcessoRef: TEdit;
    Label40: TLabel;
    edtUFReferenciada: TEdit;
    edtCNPJReferenciada: TEdit;
    Label41: TLabel;
    edtNotaFiscal: TEdit;
    Label42: TLabel;
    Label43: TLabel;
    edtMesAnoEmissaoReferenciada: TEdit;
    Panel4: TPanel;
    Label38: TLabel;
    edtNaturezaOperacao: TEdit;
    rdbContribuinte: TRadioButton;
    rdbNaoContribuinte: TRadioButton;
    rdbIsento: TRadioButton;
    cbxRetirarAcentos: TCheckBox;
    CheckBox1: TCheckBox;
    Label44: TLabel;
    edtToken: TEdit;
    edtIdToken: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    cbVersaoDF: TComboBox;
    cbModeloDF: TComboBox;
    Label47: TLabel;
    cbFormaEmissao: TComboBox;
    Label48: TLabel;
    Label49: TLabel;
    edtFormatoAlerta: TEdit;
    gbxRetornoEnvio: TGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    cbxSalvarSOAP: TCheckBox;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    ACBrNFeDANFEFR2: TACBrNFeDANFEFR;
    frxReport1: TfrxReport;
    Timer1: TTimer;
    edtSerie: TEdit;
    Label53: TLabel;
    PopupMenu1: TPopupMenu;
    Recalculartotal1: TMenuItem;
    Label54: TLabel;
    cboSSLCryptLib: TComboBox;
    Label55: TLabel;
    cboSSLHTTPLib: TComboBox;
    cboSSLLib: TComboBox;
    Label56: TLabel;
    Label57: TLabel;
    cboSSLXMLLib: TComboBox;
    Label58: TLabel;
    cboSSLType: TComboBox;
    cboCFOP: TComboBox;
    Label59: TLabel;
    Panel5: TPanel;
    Button2: TButton;
    Button1: TButton;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure btnConsCadClick(Sender: TObject);
    procedure btnConsultarReciboClick(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: String);
    procedure lblMouseEnter(Sender: TObject);
    procedure lblMouseLeave(Sender: TObject);
    procedure lblColaboradorClick(Sender: TObject);
    procedure lblPatrocinadorClick(Sender: TObject);
    procedure lblDoar1Click(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnCancelarChaveClick(Sender: TObject);
    procedure btnCartadeCorrecaoClick(Sender: TObject);
    procedure tsNFeEnter(Sender: TObject);
    procedure tsNFCeEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure grdCobrancaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdCobrancaCellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Recalculartotal1Click(Sender: TObject);
  private
    FDataSetProdutos: TDataSet;
    FDataSetEntidade: TDataSet;
    FDataSetCobranca: TDataSet;
    FEnviadaComSucesso:boolean;
    { Private declarations }
    procedure GravarConfiguracao ;
    procedure LerConfiguracao ;
    procedure GerarNFe(NumNFe : String);
    procedure GerarNFC(NumNFe: String);
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure LoadConsulta201(XML: string);
    procedure SetDataSetProdutos(const Value: TDataSet);
    procedure SetDataSetVenda(const Value: TDataSet);
    procedure SetDataSetCobranca(const Value: TDataSet);
    procedure PreencherIde(NotaF: NotaFiscal;NumNFe : String;Modelo:integer);
    procedure PreencherNFeref(NotaF: NotaFiscal);
    procedure PreencherEmitente(NotaF: NotaFiscal);
    procedure PreencherDestinatario(NotaF: NotaFiscal);
    procedure PreencherProdutos(NotaF: NotaFiscal);
    procedure PreencherTransportadora(NotaF: NotaFiscal);
    procedure PreencherPagamento(NotaF: NotaFiscal);
    procedure PreencherInformacoesAdic(NotaF: NotaFiscal);
  public
    TipoNfe: string;
    property DataSetEntidade:TDataSet read FDataSetEntidade write SetDataSetVenda;
    property DataSetProdutos: TDataSet read FDataSetProdutos write SetDataSetProdutos;
    property DataSetCobranca: TDataSet read FDataSetCobranca write SetDataSetCobranca;
    property EnviadaComSucesso:boolean read FEnviadaComSucesso write FEnviadaComSucesso;
    { Public declarations }
  end;



var
  FormEmissorNfe: TFormEmissorNfe;

implementation

uses FileCtrl, pcnNFe, ufrmStatus, DateUtils,
  Orcamento, Pessoa, Mapper, ControllerClientes, UtilsNumeros,
  Diretorios, Principal, ControllerNFE, System.TypInfo, pcnConversaoNFe,ACBrDFeWinCrypt,
  uDataModuleTEF, ControllerTabelas, UtilsString,ACBrDFeSSL, DBUtils,
  EntidadeFactory, ControllerParametros;

const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure TFormEmissorNfe.GravarConfiguracao;
Var IniFile : String ;
    Ini     : TIniFile ;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text) ;
      Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text) ;
      Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text) ;

      Ini.WriteInteger( 'Geral','DANFE'       ,rgTipoDanfe.ItemIndex) ;
      Ini.WriteInteger( 'Geral','FormaEmissao',rgFormaEmissao.ItemIndex) ;
      Ini.WriteInteger( 'Geral','ModeloDF',cbModeloDF.ItemIndex) ;
      Ini.WriteInteger( 'Geral','VersaoDF',cbVersaoDF.ItemIndex) ;
      Ini.WriteString( 'Geral','LogoMarca'   ,edtLogoMarca.Text) ;
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
      //Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text) ;

      Ini.WriteString( 'Geral','PathNfe'  ,edtPathNfe.text );
      Ini.WriteString( 'Geral','PathCancelamento'  ,edtPathCancelamento.text );
      Ini.WriteString( 'Geral','PathDPEC'  ,edtPathDPEC.text );
      Ini.WriteString( 'Geral','PathCCe'  ,edtPathCCe.text );
      Ini.WriteString( 'Geral','PathMDe'  ,edtPathMDe.text );
      Ini.WriteString( 'Geral','PathInutilizacao'  ,edtPathInutilizacao.text );
      Ini.WriteString( 'Geral','PathSalvar'  ,edtPathSalvar.text );
      Ini.WriteString( 'Geral','PathSquemas'  ,edtPathSquemas.text );
      Ini.WriteBool(   'Geral','RetirarAcentos'      ,cbxRetirarAcentos.Checked) ;
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
      Ini.WriteString( 'Geral','IdToken'  ,edtIdToken.Text) ;
      Ini.WriteString( 'Geral','Token'  ,edtToken.Text) ;

      Ini.WriteInteger( 'Geral','SSLCryptLib'  ,cboSSLCryptLib.ItemIndex);
      Ini.WriteInteger( 'Geral','SSLHTTPLib'  ,cboSSLHTTPLib.ItemIndex);
      Ini.WriteInteger( 'Geral','SSLLib'  ,cboSSLLib.ItemIndex);
      Ini.WriteInteger( 'Geral','SSLXMLLib'  ,cboSSLXMLLib.ItemIndex);

      Ini.WriteString( 'WebService','UF'        ,cbUF.Text) ;
      Ini.WriteInteger( 'WebService','Ambiente'  ,rgTipoAmb.ItemIndex) ;
      //Ini.WriteBool(   'WebService','Visualizar',cbxVisualizar.Checked) ;
      Ini.WriteBool(   'WebService','SalvarSOAP',cbxSalvarSOAP.Checked) ;
      Ini.WriteBool(   'WebService','AjustarAut',cbxAjustarAut.Checked) ;
      Ini.WriteString( 'WebService','Aguardar'    ,edtAguardar.Text) ;
      Ini.WriteString( 'WebService','Tentativas'  ,edtTentativas.Text) ;
      Ini.WriteString( 'WebService','Intervalo'  ,edtIntervalo.Text) ;
      Ini.WriteInteger( 'WebService','Intervalo'  ,cboSSLType.ItemIndex) ;

      Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text) ;
      Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text) ;
      Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text) ;
      Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text) ;

      Ini.WriteString( 'Emitente','CNPJ'       ,edtEmitCNPJ.Text) ;
      Ini.WriteString( 'Emitente','IE'         ,edtEmitIE.Text) ;
      Ini.WriteString( 'Emitente','RazaoSocial',edtEmitRazao.Text) ;
      Ini.WriteString( 'Emitente','Fantasia'   ,edtEmitFantasia.Text) ;
      Ini.WriteString( 'Emitente','Fone'       ,edtEmitFone.Text) ;
      Ini.WriteString( 'Emitente','CEP'        ,edtEmitCEP.Text) ;
      Ini.WriteString( 'Emitente','Logradouro' ,edtEmitLogradouro.Text) ;
      Ini.WriteString( 'Emitente','Numero'     ,edtEmitNumero.Text) ;
      Ini.WriteString( 'Emitente','Complemento',edtEmitComp.Text) ;
      Ini.WriteString( 'Emitente','Bairro'     ,edtEmitBairro.Text) ;
      Ini.WriteString( 'Emitente','CodCidade'  ,edtEmitCodCidade.Text) ;
      Ini.WriteString( 'Emitente','Cidade'     ,edtEmitCidade.Text) ;
      Ini.WriteString( 'Emitente','UF'         ,edtEmitUF.Text) ;
      Ini.WriteString( 'Emitente','CNAE'       ,edtCNAE.text  ) ;

      Ini.WriteString( 'Email','Host'    ,edtSmtpHost.Text) ;
      Ini.WriteString( 'Email','Port'    ,edtSmtpPort.Text) ;
      Ini.WriteString( 'Email','User'    ,edtSmtpUser.Text) ;
      Ini.WriteString( 'Email','Pass'    ,edtSmtpPass.Text) ;
      Ini.WriteString( 'Email','Assunto' ,edtEmailAssunto.Text) ;
      Ini.WriteBool(   'Email','SSL'     ,cbEmailSSL.Checked ) ;

      StreamMemo := TMemoryStream.Create;
      mmEmailMsg.Lines.SaveToStream(StreamMemo);
      StreamMemo.Seek(0,soFromBeginning);
      Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo) ;
      StreamMemo.Free;
  finally
     Ini.Free ;
  end;

end;

procedure TFormEmissorNfe.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin
  ACBrNFe1.SSL.DescarregarCertificado;

  //ACBrNFe1.SSL.SSLType:= TSSLType( LT_TLSv1_2);

  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
  Ini := TIniFile.Create( IniFile );
  try
       edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
       ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
       edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
       Label1.Caption := 'Informe o n�mero de s�rie do certificado'#13+
                         'Dispon�vel no Internet Explorer no menu'#13+
                         'Ferramentas - Op��es da Internet - Conte�do '#13+
                         'Certificados - Exibir - Detalhes - '#13+
                         'N�mero do certificado';
       Label2.Visible := False;
       edtCaminho.Visible := False;
       edtSenha.Visible   := False;
       sbtnCaminhoCert.Visible := False;

      rgFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao'  ,0);
      ckSalvar.Checked         := Ini.ReadBool(   'Geral','Salvar'         ,True);
      edtPathNfe.text          := Ini.ReadString( 'Geral','PathNfe'         ,'');
      edtPathCancelamento.text := Ini.ReadString( 'Geral','PathCancelamento','');
      edtPathDPEC.text         := Ini.ReadString( 'Geral','PathDPEC'        ,'');
      edtPathCCe.text          := Ini.ReadString( 'Geral','PathCCe'         ,'');
      edtPathMDe.text          := Ini.ReadString( 'Geral','PathMDe'         ,'');
      edtPathInutilizacao.text := Ini.ReadString( 'Geral','PathInutilizacao','');
      edtPathSalvar.text       := Ini.ReadString( 'Geral','PathSalvar'      ,'');
      edtPathSquemas.text      := Ini.ReadString( 'Geral','PathSquemas'     ,'');

      cbModeloDF.ItemIndex     := Ini.ReadInteger( 'Geral','ModeloDF',0);
      cbVersaoDF.ItemIndex     := Ini.ReadInteger( 'Geral','VersaoDF',0);
      edtIdToken.Text          := Ini.ReadString( 'Geral','IdToken'  ,'');
      edtToken.Text            := Ini.ReadString( 'Geral','Token'  ,'');


      cboSSLCryptLib.ItemIndex := Ini.ReadInteger( 'Geral','SSLCryptLib',0);
      cboSSLHTTPLib.ItemIndex  := Ini.ReadInteger( 'Geral','SSLHTTPLib',0);
      cboSSLLib.ItemIndex      := Ini.ReadInteger( 'Geral','SSLLib',0);
      cboSSLXMLLib.ItemIndex   := Ini.ReadInteger( 'Geral','SSLXMLLib',0);

      ACBrNFe1.Configuracoes.Arquivos.PathSalvar   := edtPathSalvar.Text;
      with ACBrNFe1.Configuracoes.Geral do
      begin
       //AtualizarXMLCancelado := cbxAtualizarXML.Checked;
       //ExibirErroSchema      := cbxExibirErroSchema.Checked;
         FormatoAlerta         := edtFormatoAlerta.Text;
         if cbFormaEmissao.ItemIndex >-1 then
         FormaEmissao          := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
         if cbModeloDF.ItemIndex >-1 then
         ModeloDF              := TpcnModeloDF(cbModeloDF.ItemIndex);
         if cbVersaoDF.ItemIndex >-1 then
            VersaoDF              := TpcnVersaoDF(cbVersaoDF.ItemIndex);
         Salvar       := ckSalvar.Checked;

         SSLCryptLib   := TSSLCryptLib(cboSSLCryptLib.ItemIndex);
         SSLHTTPLib    := TSSLHTTPLib(cboSSLHTTPLib.ItemIndex);
         SSLLib        := TSSLLib(cboSSLLib.ItemIndex);
         SSLXMLSignLib := TSSLXMLSignLib(cboSSLXMLLib.ItemIndex);

      end;

      with ACBrNFe1.Configuracoes.arquivos do
      begin
         PathSalvar   := edtPathSalvar.Text;
         PathSchemas  := edtPathSquemas.Text;
      end;

      cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','RN')) ;
      rgTipoAmb.ItemIndex  := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      ckxVisualizar.Checked :=Ini.ReadBool(    'WebService','Visualizar',False) ;

      ckxVisualizar.Checked  := Ini.ReadBool(  'WebService','Visualizar',False) ;
      cbxSalvarSOAP.Checked  := Ini.ReadBool(  'WebService','SalvarSOAP',False) ;
      cbxAjustarAut.Checked  := Ini.ReadBool(  'WebService','AjustarAut',False) ;
      edtAguardar.Text       := Ini.ReadString( 'WebService','Aguardar'  ,'0') ;
      edtTentativas.Text     := Ini.ReadString( 'WebService','Tentativas','3') ;
      edtIntervalo.Text      := Ini.ReadString( 'WebService','Intervalo' ,'0') ;
      cboSSLType.ItemIndex   := Ini.ReadInteger( 'WebService','SSLType' ,0 ) ;


      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;

      with ACBrNFe1.Configuracoes.WebServices do
       begin
         UF         := cbUF.Text;
         Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
         Visualizar := ckxVisualizar.Checked;
         Salvar     := cbxSalvarSOAP.Checked;
         AjustaAguardaConsultaRet := cbxAjustarAut.Checked;
         if edtAguardar.Text<>''then
            AguardarConsultaRet := ifthen(StrToInt(edtAguardar.Text)<1000,StrToInt(edtAguardar.Text)*1000,StrToInt(edtAguardar.Text))
         else
            edtAguardar.Text := IntToStr(AguardarConsultaRet);

         if edtTentativas.Text<>'' then
            Tentativas          := StrToInt(edtTentativas.Text)
         else
            edtTentativas.Text := IntToStr(Tentativas);

         if edtIntervalo.Text<>'' then
            IntervaloTentativas := ifthen(StrToInt(edtIntervalo.Text)<1000,StrToInt(edtIntervalo.Text)*1000,StrToInt(edtIntervalo.Text))
         else
            edtIntervalo.Text := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas);

         SSLType := TSSLType( cboSSLType.ItemIndex  );

       end;


      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'Geral','DANFE'       ,0) ;
      edtLogoMarca.Text         := Ini.ReadString( 'Geral','LogoMarca'   ,'') ;
      if ACBrNFe1.DANFE <> nil then
       begin
         if rgTipoDanfe.ItemIndex > -1 then

         ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe.ItemIndex+1));
         ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
       end;  

      edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'') ;
      edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'') ;
      edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','') ;
      edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'') ;
      edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'') ;
      edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'') ;
      edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'') ;
      edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'') ;
      edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','') ;
      edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'') ;
      edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'') ;
      edtEmitCidade.Text     := Ini.ReadString( 'Emitente','Cidade'     ,'') ;
      edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'') ;
      edtCNAE.Text           := Ini.ReadString( 'Emitente','CNAE'       ,'') ;

      edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
      edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
      edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
      edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;

      StreamMemo            := TMemoryStream.Create;
      Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
      mmEmailMsg.Lines.LoadFromStream(StreamMemo);

      StreamMemo.Free;
  finally
     Ini.Free ;
  end;

end;

procedure TFormEmissorNfe.LoadConsulta201(XML: String);
var
  DOM: IXMLDocument;
  lXML: String;

  procedure AddNodes(XMLNode: IXMLNode; TreeNode: TTreeNode);
  var
    Index: Integer;
    NewNode: TTreeNode;
    Value: string;
  begin
    if XMLNode.nodeType in [ntTEXT, ntCDATA, ntCOMMENT] then
      Value := XMLNode.text
    else
      Value := XMLNode.nodeName;
    NewNode := TreeViewRetornoConsulta.Items.AddChild(TreeNode, {XMLNode.NodeName +} '�' + Value);
    for Index := 0 to XMLNode.childNodes.Count - 1 do
      AddNodes(XMLNode.childNodes[Index], NewNode);
  end;

  function ReplaceStr( Fonte, De, Para:string ):string;
  begin
    result:=fonte;
    while pos(de,result) <> 0 do
      result:=copy(result, 1, pos(de,result)-1 )+Para+copy(result,pos(de,result)+length(de),length(result) );
  end;

  function LimpaXML(XML: String; TagRemover:String): String;
  begin
    Result := XML;
    while pos('<'+TagRemover,Result) <> 0 do
    begin
      Result := ReplaceStr(Result,
                           '<'+TagRemover+
                              RetornarConteudoEntre(Result,'<'+TagRemover,'</'+TagRemover+'>')+
                           '</'+TagRemover+'>','');
    end;
  end;
begin
  DOM := TXMLDocument.Create(nil);
  try
    lXML := LimpaXML(XML,'Signature');
    DOM.LoadFromXML(lXML);
    DOM.Active := True;
    TreeViewRetornoConsulta.Items.BeginUpdate;
    TreeViewRetornoConsulta.Items.Clear;
    AddNodes(dom.DocumentElement, nil);
    TreeViewRetornoConsulta.TopItem := TreeViewRetornoConsulta.Items[0];
  finally
    TreeViewRetornoConsulta.Items.EndUpdate;
  end;
end;

procedure TFormEmissorNfe.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

procedure TFormEmissorNfe.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a pasta';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TFormEmissorNfe.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.filename;
  end;
end;

procedure TFormEmissorNfe.SetDataSetCobranca(const Value: TDataSet);
begin
  FDataSetCobranca := Value;
end;

procedure TFormEmissorNfe.SetDataSetProdutos(const Value: TDataSet);
begin
  FDataSetProdutos := Value;
end;

procedure TFormEmissorNfe.SetDataSetVenda(const Value: TDataSet);
begin
  FDataSetEntidade := Value;
end;

procedure TFormEmissorNfe.SpeedButton1Click(Sender: TObject);
var
   formDiretorios : TForm;
   diretorio      : string;

begin
  {if Length(edtPathLogs.Text) <= 0 then
     diretorio := ExtractFileDir(application.ExeName)
  else
     diretorio := edtPathLogs.Text;}

  if SelectDirectory(diretorio, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
  begin
     {formDiretorios := FormPrincipal.ShowForm( TFormDiretorios, nil ,  true );
     diretorio := TformDiretorios(formDiretorios).Diretorio;}
     case TSpeedButton(Sender).tag of
       1: edtPathNfe.text          := diretorio;
       2: edtPathCancelamento.text := diretorio;
       3: edtPathDPEC.text         := diretorio;
       4: edtPathCCe.text          := diretorio;
       5: edtPathMDe.text          := diretorio;
       6: edtPathInutilizacao.text := diretorio;
       7: edtPathSalvar.text       := diretorio;
       8: edtPathSquemas.text      := diretorio;
     end;
  end;
end;

procedure TFormEmissorNfe.Timer1Timer(Sender: TObject);
begin
   btnStatusServ.enabled:= true;
   timer1.Enabled:= false;
end;

procedure TFormEmissorNfe.FormActivate(Sender: TObject);
begin
  srcEntidade.dataset := DataSetEntidade;
  srcItems.dataset    := DataSetProdutos;
  srcCobranca.dataset := DataSetCobranca;

   if TipoNfe = VENDA_CLIENTE    then
   begin
      FillCombobox( tpCFOP, cboCFOP, 'Descricao like (''VENDA%'') ',
      'CFOP',' CFOP +''  '' +  Descricao as Descricao ','CFOP');
      edtNaturezaOperacao.text := 'VENDA DE MERCADORIA';

      cboCFOP.text := TControllerParametros.GetCFOPPadraoVenda;

   end
   else
   if TipoNfe = DEVOLUCAO_FORNECEDOR then
   begin
      edtNaturezaOperacao.text  := 'DEVOLUCAO DE MERCADORIA';
      edtChaveAcessoRef.text    := DataSetEntidade.FieldByName('ChaveAcesso').AsString;
      edtUFReferenciada.text    := '';
      edtCNPJReferenciada.text  := '';
      edtNotaFiscal.text        := DataSetEntidade.FieldByName('NumeroDocumento').AsString;
      edtMesAnoEmissaoReferenciada.text := SoNumeros('18'+copy(DataSetEntidade.FieldByName('DataEmissao').AsString,3,2));
      edtSerie.Text := DataSetEntidade.FieldByName('Serie').AsString;

      FillCombobox( tpCFOP, cboCFOP, 'Descricao like (''DEVOLU��O DE COMPRA%'') OR '+
                                     'CFOP in (''5949'',''1949'')',
                                     'CFOP','( CFOP +''  '' +  Descricao) as Descricao ','CFOP');

       cboCFOP.text := TControllerParametros.GetCFOPPadraoDevolucaoCompra;

   end;
end;

procedure TFormEmissorNfe.FormCreate(Sender: TObject);
var
 I : TpcnTipoEmissao ;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
begin
  EnviadaComSucesso:= false;
  cbFormaEmissao.Items.Clear ;
  For I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) ) ;
  cbFormaEmissao.Items[0] := 'teNormal' ;
  cbFormaEmissao.ItemIndex := 0 ;

  cbModeloDF.Items.Clear ;
  For J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) ) ;
  cbModeloDF.Items[0] := 'moNFe' ;
  cbModeloDF.ItemIndex := 0 ;

  cbVersaoDF.Items.Clear ;
  For K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) ) ;
  //cbVersaoDF.Items[0] := 've310';
  //cbVersaoDF.ItemIndex := 0 ;

  LerConfiguracao;
  PageControl3.ActivePageIndex := 0;




end;

procedure TFormEmissorNfe.btnSalvarConfigClick(Sender: TObject);
begin
 GravarConfiguracao;
 LerConfiguracao;
end;

procedure TFormEmissorNfe.btnStatusServClick(Sender: TObject);
begin
 try
   btnStatusServ.enabled:= false;
   timer1.Enabled:= true;
   IF ACBrNFe1.WebServices.StatusServico.Executar THEN
     SHOWMESSAGE('ATIVO!')
   ELSE
     SHOWMESSAGE('INATIVO!');

   MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
   memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetornoWS);
   LoadXML(MemoResp, WBResposta);

   PageControl2.ActivePageIndex := 1;

 finally
   MemoDados.Lines.Add('');
   MemoDados.Lines.Add('Status Servi�o');
   MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
   MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.StatusServico.verAplic);
   MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
   MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
   MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
   MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
   MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
   MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
   MemoDados.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);
 end;

end;

procedure TFormEmissorNfe.Button1Click(Sender: TObject);
var
 vAux, CodigoLote : String;
 ContollerNFE : TContollerNFE;
 Enviou :boolean;
  Count: integer;
  Erros: string;
  I: Integer;
begin
  Memo1.lines.clear;
  vAux     := FDataSetEntidade.fieldbyname('Codigo').asstring;
  Memo1.lines.add('TContollerNFE.GetMaxLoteNFE;');

  {Memo1.lines.add('CodigoLote');
  if Trim(CodigoLote) = '' then
  begin
      MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
      exit;
  end; }

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.Configuracoes.Certificados.NumeroSerie:= '46DF16E2ED22844A';//edtNumSerie.text;

  if Tbutton(Sender).tag = 55 then
  begin
     ACBrNFe1.DANFE:= ACBrNFeDANFEFR1;
    CodigoLote := TContollerNFE.GetMaxLoteNFE;
    if cbVersaoDF.Text = 've400' then
        ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400
    else
        ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;
    ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
    Memo1.lines.add('GerarNFe');
    GerarNFe( CodigoLote );
  end
  else
  begin
    ACBrNFe1.DANFE:= ACBrNFeDANFEFR2;
    CodigoLote := TContollerNFE.GetMaxLoteNFC;
    if cbVersaoDF.Text = 've400' then
        ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400
    else
        ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;
    ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
    Memo1.lines.add('GerarNFC');
    GerarNFC( CodigoLote );
  end;

  ACBrNFe1.NotasFiscais.GerarNFe;
  //ACBrNFe1.NotasFiscais.Validar;
  //ACBrNFe1.NotasFiscais.Items[0].ValidarRegrasdeNegocios;
  ACBrNFe1.NotasFiscais.ValidarRegrasdeNegocios(Erros);

  if Erros <> '' then
  begin
     Memo1.lines.add('Erro na valida��o! Motivo: '+ Erros );
     showmessage('Erro na valida��o! Motivo: '+ Erros );
     abort;
  end;


  Memo1.lines.add('Enviar');
  try
    if ACBrNFe1.Enviar( CodigoLote , true , false ) then
    begin
       Memo1.lines.add('ACBrNFe1.Enviar( CodigoLote , false, True )');
      //if rgTipoAmb.itemindex = 0 then
          TContollerNFE.InserirLoteNFE( CodigoLote ,
                                     Stringreplace( ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.id,'NFe','',[]),
                                     ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt,
                                     FDataSetEntidade.fieldbyname('Codigo').asstring,
                                     FDataSetEntidade.fieldbyname('CodigoLoteRecebimento').asstring,
                                     ifthen( ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe,'NFE','NFC') );
       Memo1.lines.add('TContollerNFE.InserirLoteNFE('+ CodigoLote );

       FEnviadaComSucesso:= true;

       showmessage('Opera��o finalizada!');
       Close;
    end
  finally
    if ACBrNFe1.WebServices.Consulta.XMotivo <> '' then
       showmessage('falha no envio! Codigo Erro: '+ ACBrNFe1.WebServices.Consulta.XMotivo );
  end;



  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);
  LoadXML(MemoResp, WBResposta);

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
  MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
  MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
  MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
  MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);

  ACBrNFe1.NotasFiscais.Clear;

end;

procedure TFormEmissorNfe.grdCobrancaCellClick(Column: TColumn);
begin
  if Column.FieldName = 'Selecionado' then
  begin
      srcCobranca.dataset.Edit;
      if srcCobranca.dataset.FieldByName('Selecionado').AsString = 'S' then
      begin
        srcCobranca.dataset.FieldByName('Selecionado').AsString := 'N';
      end
      else
      begin
        srcCobranca.dataset.FieldByName('Selecionado').AsString := 'S';
      end;
      srcCobranca.dataset.Post;
  end;
end;

procedure TFormEmissorNfe.grdCobrancaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
   if Column.FieldName = 'Selecionado' then
   begin
       grdCobranca.Canvas.FillRect(Rect);
       Check := 0;
       if srcCobranca.dataset.FieldByName('Selecionado').AsString = 'S' then
           Check := DFCS_CHECKED
       else
           Check := 0;
       R:=Rect;
       InflateRect(R,-2,-2);
       DrawFrameControl(grdCobranca.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;

end;

procedure TFormEmissorNfe.btnImprimirClick(Sender: TObject);
begin
   OpenDialog1.Title := 'Selecione a NFE';
   OpenDialog1.DefaultExt := '*-nfe.XML';
   OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
   OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
   if OpenDialog1.Execute then
   begin
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo = 55 then
         ACBrNFe1.DANFE:= ACBrNFeDANFEFR1
      else
         ACBrNFe1.DANFE:= ACBrNFeDANFEFR2;
      ACBrNFe1.NotasFiscais.Imprimir;
   end;
end;

procedure TFormEmissorNfe.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
    if not(InputQuery('WebServices Inutiliza��o ', 'Ano',    Ano)) then
       exit;
    if not(InputQuery('WebServices Inutiliza��o ', 'Modelo', Modelo)) then
       exit;
    if not(InputQuery('WebServices Inutiliza��o ', 'Serie',  Serie)) then
       exit;
    if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Inicial', NumeroInicial)) then
       exit;
    if not(InputQuery('WebServices Inutiliza��o ', 'N�mero Inicial', NumeroFinal)) then
       exit;
    if not(InputQuery('WebServices Inutiliza��o ', 'Justificativa', Justificativa)) then
       exit;

     ACBrNFe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Justificativa, StrToInt(Ano),
     StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));

     MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetWS);
     memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetornoWS);
     LoadXML(MemoResp, WBResposta);
end;

procedure TFormEmissorNfe.ACBrNFe1StatusChange(Sender: TObject);
begin
  if ( frmStatus = nil ) then
     frmStatus := TfrmStatus.Create(Application);

  case ACBrNFe1.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
        exit;
    end;
    stNFeStatusServico : frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
    stNFeRecepcao :  frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
    stNfeRetRecepcao :  frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
    stNfeConsulta : frmStatus.lblStatus.Caption := 'Consultando NFe...';
    stNfeCancelamento : frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
    stNfeInutilizacao : frmStatus.lblStatus.Caption := 'Enviando pedido de Inutiliza��o...';
    stNFeRecibo : frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
    stNFeCadastro :  frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
    stNFeEmail : frmStatus.lblStatus.Caption := 'Enviando Email...';
    stNFeCCe :  frmStatus.lblStatus.Caption := 'Enviando Carta de Corre��o...';
    stNFeEvento : frmStatus.lblStatus.Caption := 'Enviando Evento...';
  end;
  frmStatus.Show;
  frmStatus.BringToFront;
  Application.ProcessMessages;
end;

procedure TFormEmissorNfe.btnConsCadClick(Sender: TObject);
var
 UF, Documento : String;
begin
 if not(InputQuery('WebServices Consulta Cadastro ', 'UF do Documento a ser Consultado:',    UF)) then
    exit;
 if not(InputQuery('WebServices Consulta Cadastro ', 'Documento(CPF/CNPJ)',    Documento)) then
    exit;

  ACBrNFe1.WebServices.ConsultaCadastro.UF  := UF;
  if Length(Documento) > 11 then
     ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := Documento
  else
     ACBrNFe1.WebServices.ConsultaCadastro.CPF := Documento;
  ACBrNFe1.WebServices.ConsultaCadastro.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.ConsultaCadastro.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS);
  LoadXML(MemoResp, WBResposta);

  ShowMessage(ACBrNFe1.WebServices.ConsultaCadastro.xMotivo);
  ShowMessage(ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xNome);
end;

procedure TFormEmissorNfe.btnConsultarReciboClick(Sender: TObject);
var
  aux : String;
begin
  if not(InputQuery('Consultar Recibo Lote', 'N�mero do Recibo', aux)) then
    exit;
  ACBrNFe1.WebServices.Recibo.Recibo := aux;;
  ACBrNFe1.WebServices.Recibo.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Recibo.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Recibo.RetornoWS);
  LoadXML(MemoResp, WBResposta);
end;

procedure TFormEmissorNfe.ACBrNFe1GerarLog(const Mensagem: String);
begin
 memoLog.Lines.Add(Mensagem);
end;

procedure TFormEmissorNfe.lblMouseEnter(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold,fsUnderline];
end;

procedure TFormEmissorNfe.lblMouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold];
end;

procedure TFormEmissorNfe.lblColaboradorClick(Sender: TObject);
begin
  ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/5', Nil, Nil, SW_NORMAL);
end;

procedure TFormEmissorNfe.lblPatrocinadorClick(Sender: TObject);
begin
  ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/35', Nil, Nil, SW_NORMAL);
end;

procedure TFormEmissorNfe.lblDoar1Click(Sender: TObject);
begin
  ShellExecute(0, Nil, 'http://acbr.sourceforge.net/drupal/?q=node/14', Nil, Nil, SW_NORMAL);
end;

procedure TFormEmissorNfe.PreencherIde(NotaF: NotaFiscal; NumNFe : String; Modelo:integer);
begin
  with NotaF.NFe do
  begin
     Memo1.lines.add('Ide.cNF');
     Ide.cNF       := StrToInt(NumNFe); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
     Memo1.lines.add('Ide.natOp');

     Ide.natOp     := edtNaturezaOperacao.text;

     Memo1.lines.add('Ide.indPag');
     Ide.indPag    := ipVista; //ipVista, ipPrazo, ipOutras
     Memo1.lines.add('Ide.modelo');
     Ide.modelo    := Modelo;
     Memo1.lines.add('Ide.serie');
     Ide.serie     := 1;
     Memo1.lines.add('Ide.nNF');
     Ide.nNF       := StrToInt(NumNFe);
     Memo1.lines.add('Ide.dEmi');
     Ide.dEmi      := now;

     ide.tpImp     := tiNFCe;
     if Modelo = 55 then
     begin
       Memo1.lines.add('Ide.dSaiEnt');
       Ide.dSaiEnt   := now;
       Memo1.lines.add('Ide.hSaiEnt');

       Memo1.lines.add('Ide.tpImp');
    //if  Assigned( ACBrNFe1.DANFE ) then
        if rgTipoDanfe.ItemIndex = 0 then
           Ide.tpImp     := tiRetrato
        else
           Ide.tpImp     := tipaisagem;
     end;

     Ide.hSaiEnt   := time;
     Memo1.lines.add('Ide.tpNF');
     Ide.tpNF      := tnSaida;
     Memo1.lines.add('Ide.tpEmis');

     Ide.tpEmis    := teNormal;
     Memo1.lines.add('Ide.tpAmb');

     if TipoNfe = VENDA_CLIENTE then
     begin
        Ide.indFinal := cfConsumidorFinal;
        Ide.indPres  := pcPresencial;
        Ide.finNFe  := fnNormal;
     end
     else
     begin
        Ide.indFinal := cfNao;
        Ide.indPres  := pcNao;
        Ide.finNFe  := fnDevolucao;
     end;

     if rgTipoAmb.itemindex = 0 then
     begin
        Memo1.lines.add('Ide.tpAmb :=  taProducao');
        Ide.tpAmb :=  taProducao;
        Memo1.lines.add('Ide.verProc');
     end
     else
     begin
        Memo1.lines.add('Ide.tpAmb :=  taHomologacao');
        Ide.tpAmb := taHomologacao;
        Memo1.lines.add('Ide.verProc');
     end;
     Ide.verProc   := 'Jaws 3.0.0.2';

     Memo1.lines.add('Ide.cUF');
     Ide.cUF       := UFtoCUF(edtEmitUF.Text);
     Memo1.lines.add('Ide.cMunFG');
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Memo1.lines.add('Ide.finNFe');
  end;
end;

procedure TFormEmissorNfe.PreencherNFeref(NotaF: NotaFiscal);
begin
  with NotaF.NFe do
  begin
   Ide.NFref.Clear;
   with Ide.NFref.Add do
   begin
     refNFe       := edtChaveAcessoRef.Text;//NFe Eletronica
     RefNF.cUF    := UfToCUF( NotaF.NFe.Dest.EnderDest.UF );
     RefNF.AAMM   := edtMesAnoEmissaoReferenciada.Text;
     RefNF.CNPJ   := NotaF.NFe.Dest.CNPJCPF;
     RefNF.modelo := 1;  // |- NFe Modelo 1/1A
     RefNF.serie  := strtointdef( edtSerie.Text , 1 );  // |
     //RefNF.nNF    := strtoint(edtNotaFiscal.Text);
   end;
  end;
end;

procedure TFormEmissorNfe.PreencherEmitente(NotaF: NotaFiscal);
begin
  with NotaF.NFe do
  begin
      Memo1.lines.add(' Emit.CNPJCPF');
      Emit.CNPJCPF           := edtEmitCNPJ.Text;
      Memo1.lines.add('Emit.IE ');
      Emit.IE                := edtEmitIE.Text;
      Memo1.lines.add('Emit.xNome ');
      Emit.xNome             := edtEmitRazao.Text;
      Memo1.lines.add('Emit.xFant');
      Emit.xFant             := edtEmitFantasia.Text;
      Memo1.lines.add('Emit.EnderEmit.fone');
      Emit.EnderEmit.fone    := edtEmitFone.Text;
      Memo1.lines.add('Emit.EnderEmit.CEP');
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
      Memo1.lines.add('Emit.EnderEmit.xLgr');
      Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
      Memo1.lines.add('Emit.EnderEmit.nro');
      Emit.EnderEmit.nro     := edtEmitNumero.Text;
      Memo1.lines.add('Emit.EnderEmit.xCpl');
      Emit.EnderEmit.xCpl    := edtEmitComp.Text;
      Memo1.lines.add('Emit.EnderEmit.xBairro');
      Emit.EnderEmit.xBairro := edtEmitBairro.Text;
      Memo1.lines.add('Emit.EnderEmit.cMun');
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
      Memo1.lines.add('Emit.EnderEmit.xMun');
      Emit.EnderEmit.xMun    := edtEmitCidade.Text;
      Memo1.lines.add('Emit.EnderEmit.UF');
      Emit.EnderEmit.UF      := edtEmitUF.Text;
      Memo1.lines.add('Emit.enderEmit.cPais');
      Emit.enderEmit.cPais   := 1058;
      Memo1.lines.add('Emit.enderEmit.xPais');
      Emit.enderEmit.xPais   := 'BRASIL';

      //Emit.enderEmit.nro     := '';

      Memo1.lines.add('Emit.IEST ');
      Emit.IEST              := '';
      Memo1.lines.add('Emit.CRT ');
      Emit.CRT               := crtSimplesNacional;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
  end;
end;

procedure TFormEmissorNfe.PreencherDestinatario(NotaF: NotaFiscal);
var
  DataSetParticipante:TDataSet;
  Controller: TControllerTabelas;
begin
  with NotaF.NFe do
  begin

      if TipoNFe = VENDA_CLIENTE then
      begin
        DataSetParticipante:= Controller.GetSelect('Pessoa T1',
        ' Codigo = '+ DataSetEntidade.fieldbyName('CodigoCliente').asstring);
      end
      else
      if TipoNFe = DEVOLUCAO_FORNECEDOR then
      begin
         DataSetParticipante:= Controller.GetSelect('Pessoa T1',
        ' Codigo = '+ DataSetEntidade.fieldbyName('CodigoFornecedor').asstring);
      end;

      Memo1.lines.add('Dest.CNPJCPF');
      Dest.CNPJCPF           := DataSetParticipante.fieldbyname('CPFCNPJ').AsString;
      if SoNumeros(DataSetParticipante.fieldbyname('InscricaoEstadual').AsString) <> '' then
         Dest.IE        := DataSetParticipante.fieldbyname('InscricaoEstadual').AsString
      else
      begin
         rdbIsento.Checked := true;
      end;

      Memo1.lines.add('Dest.IE');
      if rdbContribuinte.Checked then
      begin
         Dest.indIEDest := inContribuinte;
         if DataSetParticipante.fieldbyname('InscricaoEstadual').AsString='' then
         begin
            showmessage('Informe a IE do destinat�rio');
            abort;
         end;
      end
      else
      if rdbNaoContribuinte.Checked then
        Dest.indIEDest := inNaoContribuinte
      else
        Dest.indIEDest := inIsento;

      Memo1.lines.add('Dest.ISUF');
      Dest.ISUF              := '';
      Memo1.lines.add('Dest.xNome');
      Dest.xNome             := DataSetParticipante.fieldbyname('Nome').AsString;
      Memo1.lines.add('Dest.EnderDest.Fone ');
      Dest.EnderDest.Fone    := copy( trim(  DataSetParticipante.fieldbyname('Telefone').AsString ) ,1,13);
      Memo1.lines.add('Dest.EnderDest.CEP ');
      Dest.EnderDest.CEP     := strtointdef(UtilsString.SoNumeros(DataSetParticipante.fieldbyname('CEP').AsString), 0);
      Memo1.lines.add('Dest.EnderDest.xLgr');
      Dest.EnderDest.xLgr    := DataSetParticipante.fieldbyname('Endereco').AsString;
      Memo1.lines.add('Dest.EnderDest.nro');
      Dest.EnderDest.nro     := '0';
      Memo1.lines.add('Dest.EnderDest.xCpl');
      Dest.EnderDest.xCpl    := DataSetParticipante.fieldbyname('Complemento').AsString;
      Memo1.lines.add('Dest.EnderDest.xBairro');
      Dest.EnderDest.xBairro := DataSetParticipante.fieldbyname('Bairro').AsString;
      Memo1.lines.add('Dest.EnderDest.cMun');
      Dest.EnderDest.cMun    := DataSetEntidade.fieldbyName('CodigoIBGE').AsInteger;
      Memo1.lines.add('Dest.EnderDest.xMun');
      Dest.EnderDest.xMun    := DataSetParticipante.fieldbyname('Municipio').AsString;
      Memo1.lines.add('Dest.EnderDest.UF');
      Dest.EnderDest.UF      := DataSetParticipante.fieldbyname('UF').AsString;

      if Dest.EnderDest.UF  = Emit.EnderEmit.UF then
         Ide.idDest   := doInterna
      else
         Ide.idDest   := doInterestadual;

      Ide.indFinal := cfConsumidorFinal;
      Ide.indPres  := pcNao;

      Memo1.lines.add('Dest.EnderDest.cPais');
      Dest.EnderDest.cPais   := 1058;
      Memo1.lines.add('Dest.EnderDest.xPais');
      Dest.EnderDest.xPais   := 'BRASIL';
  end;
end;

procedure TFormEmissorNfe.PreencherProdutos(NotaF: NotaFiscal);
var
  ValorTotal : Double;
  ValorTotalBaseICMS : Double;
  ValorTotalICMS     : Double;
begin
  with NotaF.NFe do
  begin
    Memo1.lines.add('FDataSetProdutos.first;');
    FDataSetProdutos.first;
    Memo1.lines.add('while not FDataSetProdutos.eof do');

    while not FDataSetProdutos.eof do
    begin
       if FDataSetProdutos.fieldByname('CodificacaoNCM').asstring = '' then
       begin
         showmessage('Produto ('+ FDataSetProdutos.fieldByname('Descricao').asstring+') sem Codigo NCM');
         abort;
       end;

       if cboCFOP.Text = '' then
       begin
         showmessage('CFOP n�o selecionado CFOP!');
         abort;
       end;
       FDataSetProdutos.next;
    end;

    ValorTotal    := 0;
    ValorTotalBaseICMS := 0;
    ValorTotalICMS     := 0;

    FDataSetProdutos.first;
    while not FDataSetProdutos.eof do
    begin
      with Det.Add do
      begin
         Memo1.lines.add('Prod.nItem');
         Prod.nItem    := FDataSetProdutos.fieldByname('Ordem').asInteger; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := FDataSetProdutos.fieldByname('CodigoProduto').asstring;
         Prod.cEAN     := '';//'7896523206646';
         Prod.xProd    := FDataSetProdutos.fieldByname('Descricao').asstring;
         Prod.NCM      := FDataSetProdutos.fieldByname('CodificacaoNCM').asstring;//'94051010'; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     := Copy(cboCFOP.Text,1,4);

         Prod.vProd    := FDataSetProdutos.fieldByname('Total').asFloat;

         Prod.uCom     := 'UND';//FDataSetProdutos.fieldByname('Unidade').asstring;
         Memo1.lines.add('Prod.qCom');
         Prod.qCom     := FDataSetProdutos.fieldByname('Quantidade').asFloat;
         Memo1.lines.add('Prod.vUnCom');
         Prod.vUnCom   := FDataSetProdutos.fieldByname('Valor').asFloat;
         Memo1.lines.add('Prod.vProd');

         Prod.cEANTrib := '';//'7896523206646';
         Prod.uTrib    := 'UND';//FDataSetProdutos.fieldByname('Unidade').asstring;
         Memo1.lines.add('Prod.qTrib');
         Prod.qTrib    := FDataSetProdutos.fieldByname('Quantidade').asFloat;
         Memo1.lines.add('Prod.vUnTrib');
         Prod.vUnTrib  := FDataSetProdutos.fieldByname('Valor').asFloat;

         Prod.vOutro   := 0;
         Prod.vFrete   := 0;
         Prod.vSeg     := 0;
         Prod.vDesc    := 0;

         //Prod.DI.Add.tpViaTransp:= tvMeiosProprios
         //Prod.DI.Add.tpIntermedio
         //infAdProd     := 'Informa��o Adicional do Produto';
         Memo1.lines.add('ValorTotal');
         ValorTotal         := ValorTotal + FDataSetProdutos.fieldByname('Total').asFloat;
         ValorTotalBaseICMS := ValorTotalBaseICMS + FDataSetProdutos.fieldByname('ValorBasecalculoICMS').asFloat;
         ValorTotalICMS     := ValorTotalICMS + FDataSetProdutos.fieldByname('ValorICMS').asFloat;

         with Imposto do
         begin
             with ICMS do
             begin
             //CST := 1;
               vBC        := FDataSetProdutos.fieldByname('ValorBasecalculoICMS').asFloat;
               pICMS      := FDataSetProdutos.fieldByname('PercentualICMS').asFloat;
               vICMS      := FDataSetProdutos.fieldByname('ValorICMS').asFloat;
               pRedBC     := 0;
               vBCSTRet   := 0;
               vICMSSTRet := 0;
               pRedBCST   := 0;
               pICMSST    := 0;
               vICMSST    := 0;
               orig       := oeNacional;

               CSOSN       := csosn300;
               if FDataSetProdutos.fieldByname('SitB').asstring <> '' then
                 CSOSN     := TContollerNFE.RetornarCSOSN( FDataSetProdutos.fieldByname('SitB').asstring);
                           //regime NORMAL
                           //RetornarCST( FDataSetProdutos.fieldByname('SitB').asstring); regime NORMAL
             end;

             with PIS do
             begin
               CST       :=  pis99;
               if FDataSetProdutos.findfield('ValorBasecalculoPIS') <> nil then
               begin
                 vBC       := FDataSetProdutos.fieldByname('ValorBasecalculoPIS').asFloat;
                 pPIS      := FDataSetProdutos.fieldByname('PercentualPIS').asFloat;
                 vPIS      := FDataSetProdutos.fieldByname('ValorPIS').asFloat;
               end
               else
               if FDataSetProdutos.findfield('BasePIS') <> nil then
               begin
                 vBC       := FDataSetProdutos.fieldByname('BasePIS').asFloat;
                 pPIS      := FDataSetProdutos.fieldByname('PercentualPIS').asFloat;
                 vPIS      := FDataSetProdutos.fieldByname('ValorPIS').asFloat;
               end;
               //qBCProd   := FDataSetProdutos.fieldByname('Total').asFloat;
               //vAliqProd := FDataSetProdutos.fieldByname('Total').asFloat;
             end;

             with COFINS do
             begin
               CST        := cof99;//(cof01, cof02, cof03, cof04, cof05, cof06, cof07, cof08, cof09, cof49, cof50, cof51, cof52, cof53, cof54, cof55, cof56, cof60, cof61, cof62, cof63, cof64, cof65, cof66, cof67, cof70, cof71, cof72, cof73, cof74, cof75, cof98, cof99);
               if FDataSetProdutos.findfield('ValorBasecalculoCOFINS') <> nil then
               begin
               COFINS.vBC       := FDataSetProdutos.fieldByname('ValorBasecalculoCOFINS').asFloat;
               COFINS.pCOFINS   := FDataSetProdutos.fieldByname('PercentualCOFINS').asFloat;
               COFINS.vCOFINS   := FDataSetProdutos.fieldByname('ValorCOFINS').asFloat;
               end
               else
               if FDataSetProdutos.findfield('BaseCOFINS') <> nil then
               begin
               COFINS.vBC       := FDataSetProdutos.fieldByname('BaseCOFINS').asFloat;
               COFINS.pCOFINS   := FDataSetProdutos.fieldByname('PercentualCOFINS').asFloat;
               COFINS.vCOFINS   := FDataSetProdutos.fieldByname('ValorCOFINS').asFloat;
               end;
              {COFINS.qBCProd   := 0;//FDataSetProdutos.fieldByname('Total').asFloat;
               COFINS.vAliqProd := 0;//FDataSetProdutos.fieldByname('Total').asFloat;}
             end;

             with IPI do
             begin
               //(ipi00, ipi49, ipi50, ipi99, ipi01, ipi02, ipi03, ipi04, ipi05, ipi51, ipi52, ipi53, ipi54, ipi55);
               if FDataSetProdutos.findfield('BaseIPI') <> nil then
               begin
                 CST  := ipi52;
                 vBC  := FDataSetProdutos.fieldByname('BaseIPI').asFloat;
                 vIPi := FDataSetProdutos.fieldByname('PercentualIPI').asFloat;
                 pIPI := FDataSetProdutos.fieldByname('ValorIPI').asFloat;
               end;
             end;

             {
             with PISST do
             begin
               vBc       := 0;
               pPis      := 0;
               vPIS      := 0;
               qBCProd   := 0;
               vAliqProd := 0;
             end;

             with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               vCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
             end;

             with IPI do
             begin
               CST  := ipi52;//(ipi00, ipi49, ipi50, ipi99, ipi01, ipi02, ipi03, ipi04, ipi05, ipi51, ipi52, ipi53, ipi54, ipi55);
               vBC  := FDataSetProdutos.fieldByname('ValorBasecalculoIPI').asFloat;
               vIPi := FDataSetProdutos.fieldByname('PercentualIPI').asFloat;
               pIPI := FDataSetProdutos.fieldByname('ValorIPI').asFloat;
             end;
            }
         end;

       end;
       FDataSetProdutos.next;
     end;

     Memo1.lines.add('with Total do');
     with Total do
     begin
       ICMSTot.vBC     := ValorTotalBaseICMS;
       ICMSTot.vICMS   := ValorTotalICMS;
       ICMSTot.vBCST   := 0;
       ICMSTot.vST     := 0;
       ICMSTot.vProd   := ValorTotal;
       ICMSTot.vFrete  := 0;
       ICMSTot.vSeg    := 0;
       ICMSTot.vDesc   := 0;
       ICMSTot.vII     := 0;
       ICMSTot.vIPI    := 0;
       ICMSTot.vPIS    := 0;
       ICMSTot.vCOFINS := 0;
       ICMSTot.vOutro  := 0;
       ICMSTot.vNF     := ValorTotal;
     end;
  end;
end;

procedure TFormEmissorNfe.PreencherTransportadora(NotaF: NotaFiscal);
begin
  with NotaF.NFe do
  begin
      Memo1.lines.add('mfSemFrete');
      Transp.modFrete            := mfSemFrete; //(mfContaEmitente, mfContaDestinatario, mfContaTerceiros, mfSemFrete);
      //Transp.Transporta.CNPJCPF  := '0467872000161';
      //Transp.Transporta.xNome    := 'GC COMERCIO DE VEICULOS LTDA ME';
      //Transp.Transporta.IE       := '200985485';
      //Transp.Transporta.xEnder   := 'AV ATONIO BASILIO00';
      //Transp.Transporta.xMun     := 'NATAL';
      //Transp.Transporta.UF       := 'RN';

      Transp.veicTransp.placa := '';
      Transp.veicTransp.UF    := '';
      Transp.veicTransp.RNTC  := '';

      with Transp.Vol.Add do
      begin
        qVol := 1;
      end;
  end;
end;

procedure TFormEmissorNfe.Recalculartotal1Click(Sender: TObject);
var
  lrValorRateio:double;
begin
  if srcCobranca.DataSet.RecordCount > 0 then
  begin
    lrValorRateio:= srcEntidade.dataset.fieldbyname('TotalEntidade').AsFloat /
                    srcCobranca.DataSet.RecordCount;
    srcCobranca.dataset.First;
    while not srcCobranca.dataset.eof  do
    begin
       srcCobranca.dataset.edit;
       srcCobranca.dataset.fieldbyname('Valor').AsFloat := lrValorRateio;
       srcCobranca.dataset.post;

       srcCobranca.dataset.Next;
    end;
  end;
end;

procedure TFormEmissorNfe.PreencherPagamento(NotaF: NotaFiscal);
var
  lbTefOK:boolean;
  lsNSU: string;
  Parcelas:integer;
  CodigoBandeiraTef,  NsuTef,   NsuHost: string;
  CodigoFormaPagamentoPadrao: string ;
  ValorTotal: Double;
begin
  if FDataSetCobranca <> nil then
  begin
    ValorTotal:= 0;
    with NotaF.NFe do
    begin
        Memo1.lines.add('Cobr.Fat.nFat');

      if FDataSetCobranca.FindField('CodigoFormaPagamentoPadrao')<> nil  then
         CodigoFormaPagamentoPadrao:= FDataSetCobranca.fieldbyname('CodigoFormaPagamentoPadrao').AsString
      else
         CodigoFormaPagamentoPadrao:= '01';

      if (CodigoFormaPagamentoPadrao = '03')  or (CodigoFormaPagamentoPadrao = '04')  then
         lsNSU := Inputbox('Numero autorizacao','Autorizacao','');

      if Ide.modelo = 55 then
      begin
         if (FDataSetCobranca.RecordCount > 1) or (ACBRNFE1.Configuracoes.Geral.VersaoDF = ve310) then
         begin
            FDataSetCobranca.first;
            while not FDataSetCobranca.eof do
            begin
               if FDataSetCobranca.fieldbyname('Selecionado').asstring = 'S' then
               begin
                  with Cobr.Dup.Add do
                  begin
                    Memo1.lines.add('Cobr.Dup.Add');
                    if  FDataSetCobranca.fieldbyname('NumeroDocumento').asstring <> '' then
                       nDup  := FDataSetCobranca.fieldbyname('NumeroDocumento').asstring
                    else
                       nDup  := FDataSetCobranca.fieldbyname('Codigo').asstring;

                    dVenc := FDataSetCobranca.fieldbyname('DataVencimento').AsDatetime;
                    vDup  := FDataSetCobranca.fieldbyname('Valor').AsFloat;

                    ValorTotal:= ValorTotal + vDup;
                  end;
               end;
               FDataSetCobranca.Next;
            end;
         end
         else
            ValorTotal:=  FDataSetCobranca.fieldbyname('Valor').AsFloat;

         if (ACBRNFE1.Configuracoes.Geral.VersaoDF = ve400) then
         begin
           if FDataSetCobranca.fieldbyname('Selecionado').asstring = 'S' then
           begin
             with Pag.Add do
             begin
                vPag := ValorTotal ;//srcEntidade.fieldbyname('Valor').AsFloat;
                if TipoNFe = DEVOLUCAO_FORNECEDOR then
                begin
                   tPag := fpSemPagamento;
                 //break;
                end
                else
                begin
                   tPag := TContollerNFE.GetFormaPagamento( CodigoFormaPagamentoPadrao );
                   if ( tPag = fpCartaoCredito ) or ( tPag = fpCartaoDebito ) and (lsNSU <> '' )then
                   begin
                     //if DmTEF = nil then
                     //   Application.CreateForm(TDmTEF, DmTEF);
                     //if not DmTEF.IniciarTEF( FDataSetCobranca.fieldbyname('Valor').AsFloat,  Parcelas,CodigoBandeiraTef, NsuTef, NsuHost ) then
                     //   abort;
                     tpIntegra := tiPagNaoIntegrado;  //iPagIntegrado;
                     CNPJ  := FDataSetCobranca.fieldbyname('CNPJOperadoraCartao').AsString;
                     tBand := pcnConversao.StrToBandeiraCartao( lbTefOK , FDataSetCobranca.fieldbyname('CodigoBandeiraTEF').AsString);
                     cAut  := lsNSU;
                   end;
                end;
             end;
           end;
         end;
      end
      else
      begin
         with Pag.Add do
         begin
            vPag := srcEntidade.DataSet.fieldbyname('TotalEntidade').AsFloat;//srcEntidade.fieldbyname('Valor').AsFloat;
            if TipoNFe = DEVOLUCAO_FORNECEDOR then
            begin
               tPag := fpSemPagamento;
             //break;
            end
            else
            begin
               tPag := TContollerNFE.GetFormaPagamento( CodigoFormaPagamentoPadrao );
               if ( tPag = fpCartaoCredito ) or ( tPag = fpCartaoDebito ) and (lsNSU <> '' )then
               begin
                   //if DmTEF = nil then
                   //   Application.CreateForm(TDmTEF, DmTEF);
                   //if not DmTEF.IniciarTEF( FDataSetCobranca.fieldbyname('Valor').AsFloat,  Parcelas,CodigoBandeiraTef, NsuTef, NsuHost ) then
                   //   abort;
                   tpIntegra := tiPagNaoIntegrado;  //iPagIntegrado;
                   CNPJ  := FDataSetCobranca.fieldbyname('CNPJOperadoraCartao').AsString;
                   tBand := pcnConversao.StrToBandeiraCartao( lbTefOK , FDataSetCobranca.fieldbyname('CodigoBandeiraTEF').AsString);
                   cAut  := lsNSU;
               end;
            end;
         end;
      end;
    end;
  end;
end;

procedure TFormEmissorNfe.PreencherInformacoesAdic(NotaF: NotaFiscal);
begin
  with NotaF.NFe do
  begin
     {InfAdic.infCpl     :=  memoInfoAdicionais.Text;
      InfAdic.infAdFisco :=  '';
      with InfAdic.obsCont.Add do
      begin
         xCampo := 'ObsCont';
         xTexto := memoInfoAdicionais.Text;
      end;}
      with InfAdic do
      begin
         infCpl     :=  memoInfoAdicionais.Text;
         //infAdFisco := 'testte';
      end;
  end;
end;

procedure TFormEmissorNfe.GerarNFe(NumNFe : String);
Var
  NotaF: NotaFiscal;
begin
   if (not rdbContribuinte.Checked) and (not rdbNaoContribuinte.Checked) and (not rdbIsento.Checked) then
   begin
     showmessage('Marque o Indicador da IE do destinat�rio');
     abort;
   end;
   NotaF := ACBrNFe1.NotasFiscais.Add;

   PreencherIde( NotaF, NumNFe , 55);

   ACBrNFe1.Configuracoes.WebServices.Ambiente:= NotaF.Nfe.Ide.tpAmb;

   {if (TipoNfe = 'DEVOLUCAO') and (Ide.NFref.Count = 0) then
   begin
     showmessage('Necess�rio informar dados da NotaReferenciada!');
     abort;
   end;}

   PreencherEmitente( NotaF);
   PreencherDestinatario( NotaF);

   if (edtChaveAcessoRef.Text <> '') and (TipoNFE = DEVOLUCAO_FORNECEDOR) then
   begin
      PreencherNfeRef(NotaF);
   end;

   PreencherProdutos( NotaF);
   PreencherTransportadora( NotaF);
   PreencherPagamento( NotaF);
   PreencherInformacoesAdic( NotaF);
end;

procedure TFormEmissorNfe.GerarNFC(NumNFe : String);
Var
  NotaF: NotaFiscal;
begin
   if (not rdbContribuinte.Checked) and (not rdbNaoContribuinte.Checked) and (not rdbIsento.Checked) then
   begin
      showmessage('Marque o Indicador da IE do destinat�rio');
      abort;
   end;

   NotaF := ACBrNFe1.NotasFiscais.Add;

   PreencherIde( NotaF, NumNFe , 65);

   ACBrNFe1.Configuracoes.WebServices.Ambiente:= NotaF.Nfe.Ide.tpAmb;

   PreencherEmitente( NotaF);

   NotaF.NFe.Ide.indFinal := cfConsumidorFinal;
   NotaF.NFe.Ide.indPres  := pcPresencial;
   NotaF.NFe.Dest.indIEDest := inNaoContribuinte;

   PreencherTransportadora( NotaF);
   PreencherProdutos( NotaF);
   PreencherPagamento( NotaF);
   PreencherInformacoesAdic( NotaF);
end;

procedure TFormEmissorNfe.btnConsultarChaveClick(Sender: TObject);
var
  Ok:boolean;
 vChave : String;
begin
  if not(InputQuery('WebServices Consultar', 'Chave da NF-e:', vChave)) then
    exit;
  ACBrNFe1.WebServices.Consulta.NFeChave := vChave;
  ACBrNFe1.WebServices.Consulta.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS);
  LoadXML(MemoResp, WBResposta);

  LoadConsulta201(ACBrNFe1.WebServices.Consulta.RetWS);
end;

procedure TFormEmissorNfe.btnCancelarChaveClick(Sender: TObject);
var
 Chave, idLote, CNPJ, Protocolo, Justificativa : string;
begin
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Eventos: Cancelamento', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;
  Protocolo:='';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Protocolo de Autoriza��o', Protocolo)) then
     exit;
  Justificativa := 'Justificativa do Cancelamento';
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
     exit;

  ACBrNFe1.EventoNFe.Evento.Clear;
//  ACBrNFe1.EvnvEvento.EnvEventoNFe.idLote := StrToInt(idLote) ;
  with ACBrNFe1.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := Justificativa;
     infEvento.detEvento.nProt := Protocolo;
   end;

  ACBrNFe1.EnviarEvento(StrToInt(idLote));

  MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
  LoadXML(MemoResp, WBResposta);

end;

procedure TFormEmissorNfe.btnCartadeCorrecaoClick(Sender: TObject);
var
 Chave, idLote, CNPJ, nSeqEvento, Correcao : string;
begin
  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;
  nSeqEvento := '1';
  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
     exit;
  Correcao := 'Corre��o a ser considerada, texto livre. A corre��o mais recente substitui as anteriores.';
  if not(InputQuery('WebServices Eventos: Carta de Corre��o', 'Corre��o a ser considerada', Correcao)) then
     exit;
  ACBrNFe1.EventoNFe.Evento.Clear;
//  ACBrNFe1.EnvEvento.EnvEventoNFe..idLote := StrToInt(idLote) ;
  with ACBrNFe1.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCCe;
     infEvento.nSeqEvento := StrToInt(nSeqEvento);
     infEvento.detEvento.xCorrecao := Correcao;
   end;
  ACBrNFe1.EnviarEvento(StrToInt(idLote));

  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
  //memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.EventoRetorno);
//  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].XXXX
  LoadXML(MemoResp, WBResposta);
end;

procedure TFormEmissorNfe.tsNFeEnter(Sender: TObject);
begin
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
end;

procedure TFormEmissorNfe.tsNFCeEnter(Sender: TObject);
begin
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
end;

end.



//b2a0c43d469e7cc8856c081e1032946546704173
