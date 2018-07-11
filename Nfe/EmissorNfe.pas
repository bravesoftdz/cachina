{$I ACBr.inc}

unit EmissorNfe;

interface

uses
  IniFiles, ShellAPI, pcnRetConsReciNFe, math, Windows, Messages, SysUtils,
  Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, OleCtrls, SHDocVw,ACBrNFe, pcnConversao, ACBrNFeDANFEClass,
  ACBrUtil, pcnNFeW, pcnNFeRTXT, pcnAuxiliar, ACBrDFeUtil,  DB, XMLIntf, XMLDoc,
  Vcl.Grids, Vcl.DBGrids, ACBrNFeDANFEFRDM, ACBrNFeDANFEFR, ACBrBase, ACBrDFe,
  ACBrNFeNotasFiscais,ACBrNFSeNotasFiscais, strUtils, frxClass, Vcl.Menus, blcksock, ACBrDFeSSL,
  ACBrNFSe, ACBrNFSeDANFSeClass,  pnfsConversao, ACBrNFSeDANFSeFR;

type
  TFormEmissorNfe = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    ACBrNFe1: TACBrNFe;
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
    Panel4: TPanel;
    Label38: TLabel;
    edtNaturezaOperacao: TEdit;
    rdbContribuinte: TRadioButton;
    rdbNaoContribuinte: TRadioButton;
    rdbIsento: TRadioButton;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    ACBrNFeDANFEFR2: TACBrNFeDANFEFR;
    frxReport1: TfrxReport;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Recalculartotal1: TMenuItem;
    cboCFOP: TComboBox;
    Label59: TLabel;
    Panel5: TPanel;
    Button2: TButton;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button3: TButton;
    ACBrNFSe1: TACBrNFSe;
    ACBrNFSeDANFSeFR1: TACBrNFSeDANFSeFR;
    procedure FormCreate(Sender: TObject);
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
    procedure FormActivate(Sender: TObject);
    procedure grdCobrancaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdCobrancaCellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Recalculartotal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    liFormaEmissao      : integer;
    lbSalvar            : boolean;
    edtPathNfe          : string;
    edtPathCancelamento : string;
    edtPathDPEC         : string;
    edtPathCCe          : string;
    edtPathMDe          : string;
    edtPathInutilizacao : string;
    edtPathSalvar       : string;
    edtPathSquemas      : string;
    cbModeloDF          : integer;
    cbVersaoDF          : integer;
    edtIdToken          : string;
    edtToken            : string;
    cboSSLCryptLib      : integer;
    cboSSLHTTPLib       : integer;
    cboSSLLib           : integer;
    cboSSLXMLLib        : integer;

    cbUF                : string;
    rgTipoAmb           : integer;
    ckxVisualizar       : boolean;
    cbxSalvarSOAP       : boolean;
    cbxAjustarAut       : boolean;
    edtAguardar         : string;
    edtTentativas       : string;
    edtIntervalo        : string;
    cboSSLType          : integer;
    edtProxyHost        : string;
    edtProxyPorta       : string;
    edtProxyUser        : string;
    edtProxySenha       : string;

    rgTipoDanfe       : integer;
    edtLogoMarca      : string;
    edtEmitCNPJ       : String;
    edtEmitIE         : String;
    edtEmitRazao      : String;
    edtEmitFantasia   : String;
    edtEmitFone       : String;
    edtEmitCEP        : String;
    edtEmitLogradouro : String;
    edtEmitNumero     : String;
    edtEmitComp       : String;
    edtEmitBairro     : String;
    edtEmitCodCidade  : String;
    edtEmitCidade     : String;
    edtEmitUF         : String;
    edtCNAE           : String;

    edtSmtpHost       : String;
    edtSmtpPort       : String;
    edtSmtpUser       : String;
    edtSmtpPass       : String;
    edtEmailAssunto   : String;
    cbEmailSSL        : Boolean;

    edtChaveAcessoRef           : String;
    edtUFReferenciada           : String;
    edtCNPJReferenciada         : String;
    edtNotaFiscal               : String;
    edtMesAnoEmissaoReferenciada: String;
    edtSerie: string;

    FDataSetProdutos: TDataSet;
    FDataSetEntidade: TDataSet;
    FDataSetCobranca: TDataSet;
    FEnviadaComSucesso:boolean;
    { Private declarations }
    procedure GravarConfiguracao ;
    procedure LerConfiguracao ;
    procedure GerarNFe(NumNFe : String);
    procedure GerarNFC(NumNFe: String);
    procedure GerarNFSe(NumNFe: String );

    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure LoadConsulta201(XML: string);
    procedure SetDataSetProdutos(const Value: TDataSet);
    procedure SetDataSetVenda(const Value: TDataSet);
    procedure SetDataSetCobranca(const Value: TDataSet);
    procedure PreencherIde(NotaF: ACBrNFeNotasFiscais.NotaFiscal;NumNFe : String;Modelo:integer);
    procedure PreencherNFeref(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
    procedure PreencherEmitente(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
    procedure PreencherDestinatario(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
    procedure PreencherProdutos(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
    procedure PreencherServicos(NotaF: ACBrNFSeNotasFiscais.NotaFiscal);
    procedure PreencherTransportadora(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
    procedure PreencherPagamento(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
    procedure PreencherInformacoesAdic(NotaF: ACBrNFeNotasFiscais.NotaFiscal);

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
  uDataModuleTEF, ControllerTabelas, UtilsString, DBUtils,
  EntidadeFactory, ControllerParametros, ControllerSequencias;

{$R *.dfm}


procedure TFormEmissorNfe.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
begin
  ACBrNFe1.SSL.DescarregarCertificado;
  ACBrNFSe1.SSL.DescarregarCertificado;

  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
  Ini := TIniFile.Create( IniFile );
  try
      ACBrNFe1.Configuracoes.Certificados.NumeroSerie  :=  Ini.ReadString( 'Certificado','NumSerie','') ;
      ACBrNFSe1.Configuracoes.Certificados.NumeroSerie :=  Ini.ReadString( 'Certificado','NumSerie','') ;

      liFormaEmissao      := Ini.ReadInteger( 'Geral','FormaEmissao'  ,0);
      lbSalvar            := Ini.ReadBool(   'Geral','Salvar'         ,True);
      edtPathNfe          := Ini.ReadString( 'Geral','PathNfe'         ,'');
      edtPathCancelamento := Ini.ReadString( 'Geral','PathCancelamento','');
      edtPathDPEC         := Ini.ReadString( 'Geral','PathDPEC'        ,'');
      edtPathCCe          := Ini.ReadString( 'Geral','PathCCe'         ,'');
      edtPathMDe          := Ini.ReadString( 'Geral','PathMDe'         ,'');
      edtPathInutilizacao := Ini.ReadString( 'Geral','PathInutilizacao','');
      edtPathSalvar       := Ini.ReadString( 'Geral','PathSalvar'      ,'');
      edtPathSquemas      := Ini.ReadString( 'Geral','PathSquemas'     ,'');

      cbModeloDF          := Ini.ReadInteger( 'Geral','ModeloDF',0);
      cbVersaoDF          := Ini.ReadInteger( 'Geral','VersaoDF',0);
      edtIdToken          := Ini.ReadString( 'Geral','IdToken'  ,'');
      edtToken            := Ini.ReadString( 'Geral','Token'  ,'');

      cboSSLCryptLib      := Ini.ReadInteger( 'Geral','SSLCryptLib',0);
      cboSSLHTTPLib       := Ini.ReadInteger( 'Geral','SSLHTTPLib',0);
      cboSSLLib           := Ini.ReadInteger( 'Geral','SSLLib',0);
      cboSSLXMLLib        := Ini.ReadInteger( 'Geral','SSLXMLLib',0);

      ACBrNFe1.Configuracoes.Arquivos.PathSalvar   := edtPathSalvar;
      ACBrNFSe1.Configuracoes.Arquivos.PathSalvar   := edtPathSalvar;
      with ACBrNFe1.Configuracoes.Geral do
      begin
         if liFormaEmissao >-1 then
            FormaEmissao          := TpcnTipoEmissao(liFormaEmissao);
         if cbModeloDF >-1 then
            ModeloDF              := TpcnModeloDF(cbModeloDF);
         if cbVersaoDF >-1 then
            VersaoDF              := TpcnVersaoDF(cbVersaoDF);
         Salvar        := lbSalvar;
         SSLCryptLib   := TSSLCryptLib(cboSSLCryptLib);
         SSLHTTPLib    := TSSLHTTPLib(cboSSLHTTPLib);
         SSLLib        := TSSLLib(cboSSLLib);
         SSLXMLSignLib := TSSLXMLSignLib(cboSSLXMLLib);
      end;

      with ACBrNFSe1.Configuracoes.Geral do
      begin
         if liFormaEmissao >-1 then
            FormaEmissao          := TpcnTipoEmissao(liFormaEmissao);
         Salvar        := lbSalvar;
         SSLCryptLib   := TSSLCryptLib(cboSSLCryptLib);
         SSLHTTPLib    := TSSLHTTPLib(cboSSLHTTPLib);
         SSLLib        := TSSLLib(cboSSLLib);
         SSLXMLSignLib := TSSLXMLSignLib(cboSSLXMLLib);
      end;

      with ACBrNFe1.Configuracoes.arquivos do
      begin
         PathSalvar   := edtPathSalvar;
         PathSchemas  := edtPathSquemas;
      end;

      with ACBrNFSe1.Configuracoes.arquivos do
      begin
         PathSalvar   := edtPathSalvar;
         PathSchemas  := edtPathSquemas;
      end;

      cbUF             := Ini.ReadString( 'WebService','UF','RN') ;
      rgTipoAmb        := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      ckxVisualizar    := Ini.ReadBool( 'WebService','Visualizar',False) ;
      cbxSalvarSOAP    := Ini.ReadBool( 'WebService','SalvarSOAP',False) ;
      cbxAjustarAut    := Ini.ReadBool( 'WebService','AjustarAut',False) ;
      edtAguardar      := Ini.ReadString( 'WebService','Aguardar'  ,'0') ;
      edtTentativas    := Ini.ReadString( 'WebService','Tentativas','3') ;
      edtIntervalo     := Ini.ReadString( 'WebService','Intervalo' ,'0') ;
      cboSSLType       := Ini.ReadInteger( 'WebService','SSLType' ,0 ) ;
      edtProxyHost     := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta    := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser     := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha    := Ini.ReadString( 'Proxy','Pass'   ,'') ;

      with ACBrNFe1.Configuracoes.WebServices do
      begin
          UF         := cbUF;
          Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb+1));
          Visualizar := ckxVisualizar;
          Salvar     := cbxSalvarSOAP;
         { AjustaAguardaConsultaRet := cbxAjustarAut;
          if (edtAguardar <> '') and (edtAguardar <> '0') then
             AguardarConsultaRet := ifthen(StrToInt(edtAguardar)<1000,StrToInt(edtAguardar)*1000,StrToInt(edtAguardar))
          else
             edtAguardar := IntToStr(AguardarConsultaRet);

          if edtTentativas<>'' then
             Tentativas          := StrToInt(edtTentativas)
          else
             edtTentativas := IntToStr(Tentativas);

          if edtIntervalo<>'' then
             IntervaloTentativas := ifthen(StrToInt(edtIntervalo)<1000,StrToInt(edtIntervalo)*1000,StrToInt(edtIntervalo))
          else
             edtIntervalo := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas); }
          SSLType := TSSLType( cboSSLType  );
      end;

      with ACBrNFSe1.Configuracoes.WebServices do
      begin
          UF         := cbUF;
          Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb+1));
          Visualizar := ckxVisualizar;
          Salvar     := cbxSalvarSOAP;
          SSLType := TSSLType( cboSSLType  );
      end;

      rgTipoDanfe    := Ini.ReadInteger( 'Geral','DANFE'       ,0) ;
      edtLogoMarca   := Ini.ReadString( 'Geral','LogoMarca'   ,'') ;

      if ACBrNFe1.DANFE <> nil then
      begin
         if rgTipoDanfe > -1 then

         ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe));
         ACBrNFe1.DANFE.Logo       := edtLogoMarca;
      end;

      edtEmitCNPJ       := Ini.ReadString( 'Emitente','CNPJ'       ,'') ;
      edtEmitIE         := Ini.ReadString( 'Emitente','IE'         ,'') ;
      edtEmitRazao      := Ini.ReadString( 'Emitente','RazaoSocial','') ;
      edtEmitFantasia   := Ini.ReadString( 'Emitente','Fantasia'   ,'') ;
      edtEmitFone       := Ini.ReadString( 'Emitente','Fone'       ,'') ;
      edtEmitCEP        := Ini.ReadString( 'Emitente','CEP'        ,'') ;
      edtEmitLogradouro := Ini.ReadString( 'Emitente','Logradouro' ,'') ;
      edtEmitNumero     := Ini.ReadString( 'Emitente','Numero'     ,'') ;
      edtEmitComp       := Ini.ReadString( 'Emitente','Complemento','') ;
      edtEmitBairro     := Ini.ReadString( 'Emitente','Bairro'     ,'') ;
      edtEmitCodCidade  := Ini.ReadString( 'Emitente','CodCidade'  ,'') ;
      edtEmitCidade     := Ini.ReadString( 'Emitente','Cidade'     ,'') ;
      edtEmitUF         := Ini.ReadString( 'Emitente','UF'         ,'') ;
      edtCNAE           := Ini.ReadString( 'Emitente','CNAE'       ,'') ;

      edtSmtpHost       := Ini.ReadString( 'Email','Host'   ,'') ;
      edtSmtpPort       := Ini.ReadString( 'Email','Port'   ,'') ;
      edtSmtpUser       := Ini.ReadString( 'Email','User'   ,'') ;
      edtSmtpPass       := Ini.ReadString( 'Email','Pass'   ,'') ;
      edtEmailAssunto   := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL        := Ini.ReadBool(   'Email','SSL'    ,False) ;

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
      edtNaturezaOperacao.text     := 'DEVOLUCAO DE MERCADORIA';
      edtChaveAcessoRef            := DataSetEntidade.FieldByName('ChaveAcesso').AsString;
      edtUFReferenciada            := '';
      edtCNPJReferenciada          := '';
      edtNotaFiscal                := DataSetEntidade.FieldByName('NumeroDocumento').AsString;
      edtMesAnoEmissaoReferenciada := SoNumeros('18'+copy(DataSetEntidade.FieldByName('DataEmissao').AsString,3,2));
      edtSerie := DataSetEntidade.FieldByName('Serie').AsString;

      FillCombobox( tpCFOP, cboCFOP, 'Descricao like (''DEVOLU��O DE COMPRA%'') OR '+
                                     'CFOP in (''5949'',''1949'')',
                                     'CFOP','( CFOP +''  '' +  Descricao) as Descricao ','CFOP');

       cboCFOP.text := TControllerParametros.GetCFOPPadraoDevolucaoCompra;

   end;
end;

procedure TFormEmissorNfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action:= cafree;
  //FormPrincipal.UnRegisterForm('TFormEmissorNfe');
end;

procedure TFormEmissorNfe.FormCreate(Sender: TObject);
begin
  EnviadaComSucesso:= false;
  LerConfiguracao;
  PageControl3.ActivePageIndex := 0;
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
    CodigoLote := TControllerSequencias.GetSequenciaNFE;
    //if cbVersaoDF = 've400' then
    //   ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400
    //else
        ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;
    ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
    Memo1.lines.add('GerarNFe');
    GerarNFe( CodigoLote );
  end
  else
  begin
    ACBrNFe1.DANFE:= ACBrNFeDANFEFR2;
    CodigoLote := TControllerSequencias.GetSequenciaNFC;
    //if cbVersaoDF = 've400' then
    //    ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400
    //else
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

procedure TFormEmissorNfe.Button3Click(Sender: TObject);
var
 vAux, CodigoLote , sNomeArq , vNumRPS : String;
begin
    vNumRPS := srcEntidade.DataSet.fieldbyname('Codigo').asstring;

    CodigoLote := TControllerSequencias.GetSequenciaNFS;

    GerarNFSe( CodigoLote );

    ACBrNFSe1.Gerar(StrToInt(vNumRPS));

    TContollerNFE.InserirLoteNFE( CodigoLote ,
                               Stringreplace( ACBrNFSe1.NotasFiscais.Items[0].NFSe.InfID.id,'NFSe','',[]),
                               ACBrNFSe1.NotasFiscais.Items[0].NFSe.Protocolo,
                               FDataSetEntidade.fieldbyname('Codigo').asstring,
                               FDataSetEntidade.fieldbyname('CodigoLoteRecebimento').asstring,
                               'NFS' );

    sNomeArq := ACBrNFSe1.NotasFiscais.Items[0].NomeArq;

    ACBrNFSe1.NotasFiscais.Clear;
    ACBrNFSe1.NotasFiscais.LoadFromFile(sNomeArq);
    ACBrNFSe1.NotasFiscais.Imprimir;
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

     ACBrNFe1.WebServices.Inutiliza(edtEmitCNPJ, Justificativa, StrToInt(Ano),
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

procedure TFormEmissorNfe.PreencherIde(NotaF: ACBrNFeNotasFiscais.NotaFiscal;NumNFe : String;Modelo:integer);
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
        if rgTipoDanfe = 0 then
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

     if rgTipoAmb = 0 then
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
     Ide.cUF       := UFtoCUF(edtEmitUF);
     Memo1.lines.add('Ide.cMunFG');
     Ide.cMunFG    := StrToInt(edtEmitCodCidade);
     Memo1.lines.add('Ide.finNFe');
  end;
end;

procedure TFormEmissorNfe.PreencherNFeref(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
begin
  with NotaF.NFe do
  begin
   Ide.NFref.Clear;
   with Ide.NFref.Add do
   begin
     refNFe       := edtChaveAcessoRef;//NFe Eletronica
     RefNF.cUF    := UfToCUF( NotaF.NFe.Dest.EnderDest.UF );
     RefNF.AAMM   := edtMesAnoEmissaoReferenciada;
     RefNF.CNPJ   := NotaF.NFe.Dest.CNPJCPF;
     RefNF.modelo := 1;  // |- NFe Modelo 1/1A
     RefNF.serie  := strtointdef( edtSerie , 1 );  // |
     //RefNF.nNF    := strtoint(edtNotaFiscal.Text);
   end;
  end;
end;

procedure TFormEmissorNfe.PreencherEmitente(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
begin
  with NotaF.NFe do
  begin
      Memo1.lines.add(' Emit.CNPJCPF');
      Emit.CNPJCPF           := edtEmitCNPJ;
      Memo1.lines.add('Emit.IE ');
      Emit.IE                := edtEmitIE;
      Memo1.lines.add('Emit.xNome ');
      Emit.xNome             := edtEmitRazao;
      Memo1.lines.add('Emit.xFant');
      Emit.xFant             := edtEmitFantasia;
      Memo1.lines.add('Emit.EnderEmit.fone');
      Emit.EnderEmit.fone    := edtEmitFone;
      Memo1.lines.add('Emit.EnderEmit.CEP');
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP);
      Memo1.lines.add('Emit.EnderEmit.xLgr');
      Emit.EnderEmit.xLgr    := edtEmitLogradouro;
      Memo1.lines.add('Emit.EnderEmit.nro');
      Emit.EnderEmit.nro     := edtEmitNumero;
      Memo1.lines.add('Emit.EnderEmit.xCpl');
      Emit.EnderEmit.xCpl    := edtEmitComp;
      Memo1.lines.add('Emit.EnderEmit.xBairro');
      Emit.EnderEmit.xBairro := edtEmitBairro;
      Memo1.lines.add('Emit.EnderEmit.cMun');
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade);
      Memo1.lines.add('Emit.EnderEmit.xMun');
      Emit.EnderEmit.xMun    := edtEmitCidade;
      Memo1.lines.add('Emit.EnderEmit.UF');
      Emit.EnderEmit.UF      := edtEmitUF;
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

procedure TFormEmissorNfe.PreencherDestinatario(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
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

procedure TFormEmissorNfe.PreencherProdutos(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
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

procedure TFormEmissorNfe.PreencherServicos(NotaF: ACBrNFSeNotasFiscais.NotaFiscal);

  function RoundTo5(Valor: Double; Casas: Integer): Double;
  var
   xValor, xDecimais: String;
   p, nCasas: Integer;
   nValor: Double;
  begin
   nValor := Valor;
   xValor := Trim(FloatToStr(Valor));
   p      := pos(',', xValor);
   if Casas < 0
    then nCasas := - Casas
    else nCasas := Casas;
   if p > 0
    then begin
     xDecimais := Copy(xValor, p + 1, length(xValor));
     if length(xDecimais) > nCasas
      then begin
       if xDecimais[nCasas + 1] >= '5'
        then SetRoundMode(rmUP)
        else SetRoundMode(rmNearest);
      end;
     nValor := RoundTo(Valor, Casas);
    end;
   Result := nValor;
  end;


var
 ValorISS: Double;
  Cliente: TPessoa;
  ControllerCliente: TControllerClientes;
  MapperCliente: TMapper;
  Total: Double;

  DataSetParticipante:TDataSet;
  Controller: TControllerTabelas;

begin
 ACBrNFSe1.NotasFiscais.Clear;

 with ACBrNFSe1 do
 begin
   NotasFiscais.NumeroLote:='1';
   NotasFiscais.Transacao := True;
   with NotasFiscais.Add.NFSe do
   begin
   //IdentificacaoRps.Numero := FormatFloat('#########0', StrToInt(NumNFSe));
   //Para o provedor ISS.NET em ambiente de Homologa��o mudar a s�rie para '8'
     IdentificacaoRps.Serie := 'UNICA';
   //TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
     IdentificacaoRps.Tipo := trRPS;
     DataEmissao := Date;
   //TnfseNaturezaOperacao = ( noTributacaoNoMunicipio, noTributacaoForaMunicipio, noIsencao, noImune, noSuspensaDecisaoJudicial, noSuspensaProcedimentoAdministrativo );
     NaturezaOperacao := no0;
     //NaturezaOperacao := noTributacaoNoMunicipio51;
   //TnfseRegimeEspecialTributacao = ( retNenhum, retMicroempresaMunicipal, retEstimativa, retSociedadeProfissionais, retCooperativa, retMicroempresarioIndividual, retMicroempresarioEmpresaPP );
   //RegimeEspecialTributacao := retNenhum;
     RegimeEspecialTributacao := retMicroempresaMunicipal;
   //TnfseSimNao = ( snSim, snNao );
     OptanteSimplesNacional := snSim;
   //TnfseSimNao = ( snSim, snNao );
     IncentivadorCultural := snNao;
   //TnfseSimNao = ( snSim, snNao );
   //snSim = Ambiente de Produ��o
   //snNao = Ambiente de Homologa��o
     Producao := snNao;
   //TnfseStatusRPS = ( srNormal, srCancelado );
     Status := srNormal;
   //Somente Os provedores Betha, FISSLex e SimplISS permitem incluir no RPS
   //a TAG: OutrasInformacoes os demais essa TAG � gerada e preenchida pelo
   //WebService do provedor.
     OutrasInformacoes := 'Pagamento a Vista';
     (*
     Usando quando o RPS for substituir outro
     RpsSubstituido.Numero := FormatFloat('#########0', i);
     RpsSubstituido.Serie  := 'UNICA';
     // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
     RpsSubstituido.Tipo   := trRPS;
     *)
     Servico.Valores.ValorServicos := srcEntidade.dataset.fieldbyname('TotalEntidade').asFloat;
     Servico.Valores.ValorDeducoes := 0.00;
     Servico.Valores.ValorPis      := 0.00;
     Servico.Valores.ValorCofins   := 0.00;
     Servico.Valores.ValorInss     := 0.00;
     Servico.Valores.ValorIr       := 0.00;
     Servico.Valores.ValorCsll     := 0.00;

     Servico.MunicipioIncidencia   := 2408102;
   //TnfseSituacaoTributaria = ( stRetencao, stNormal, stSubstituicao );
   //stRetencao = snSim
   //stNormal   = snNao
   //Neste exemplo n�o temos ISS Retido ( stNormal = N�o )
   //Logo o valor do ISS Retido � igual a zero.
     Servico.Valores.IssRetido              := stNormal;
     Servico.Valores.ValorIssRetido         := 0.00;
     Servico.Valores.OutrasRetencoes        := 0.00;
     Servico.Valores.DescontoIncondicionado := 0.00;
     Servico.Valores.DescontoCondicionado   := 0.00;

     Servico.Valores.BaseCalculo := Servico.Valores.ValorServicos -
                                    Servico.Valores.ValorDeducoes -
                                    Servico.Valores.DescontoIncondicionado;
   //No caso do provedor Ginfes devemos informar a aliquota j� dividida por 100
   //para outros provedores devemos informar por exemplo 3, mas ao fazer o calculo
   //do valor do ISS devemos dividir por 100
     Servico.Valores.Aliquota    := 0.00;
   //Valor do ISS calculado multiplicando-se a base de calculo pela aliquota
     ValorISS := Servico.Valores.BaseCalculo * Servico.Valores.Aliquota;
     Servico.Valores.ValorIss         := RoundTo5(ValorISS, -2);
     Servico.Valores.ValorLiquidoNfse := Servico.Valores.ValorServicos -
                                         Servico.Valores.ValorPis -
                                         Servico.Valores.ValorCofins -
                                         Servico.Valores.ValorInss -
                                         Servico.Valores.ValorIr -
                                         Servico.Valores.ValorCsll -
                                         Servico.Valores.OutrasRetencoes -
                                         Servico.Valores.ValorIssRetido -
                                         Servico.Valores.DescontoIncondicionado -
                                         Servico.Valores.DescontoCondicionado;

     Servico.ItemListaServico         := FDataSetProdutos.fieldByname('Ordem').asstring;

   //Para o provedor ISS.NET em ambiente de Homologa��o
   //o Codigo CNAE tem que ser '6511102'
     Servico.CodigoCnae                := '4520003'; // Informa��o Opcional
     //Servico.CodigoTributacaoMunicipio := '118879';
     Servico.Discriminacao             := srcItems.DataSet.fieldByname('CodigoNFSe').asstring+' - '+
                                          srcItems.DataSet.fieldByname('DescricaoServicoNFSe').asstring;
   //Para o provedor ISS.NET em ambiente de Homologa��o
   //o Codigo do Municipio tem que ser '999'
     Servico.CodigoMunicipio := edtEmitCodCidade;
   //Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
     Servico.ExigibilidadeISS := exiExigivel;
   //Informar para Saatri
     Servico.CodigoPais := 1058; // Brasil
     Servico.MunicipioIncidencia := StrToIntDef(edtEmitCodCidade, 0);
     // Somente o provedor SimplISS permite infomar mais de 1 servi�o

     {
     Servico.ItemServico.Add;

     with Servico.ItemServico do
     begin
       Total                  := FDataSetProdutos.fieldByname('Valor').asFloat *
                                 FDataSetProdutos.fieldByname('Quantidade').asInteger;
       Items[0].BaseCalculo   := Total;
       Items[0].Descricao     := FDataSetProdutos.fieldByname('Descricao').AsString;
       Items[0].Quantidade    := FDataSetProdutos.fieldByname('Quantidade').asInteger;
       Items[0].ValorUnitario := FDataSetProdutos.fieldByname('Valor').asFloat;
       Items[0].ValorTotal    := Total;
       Items[0].Tributavel    := snNao;
     end;
     }

     Prestador.Cnpj               := edtEmitCNPJ;
     //Prestador.InscricaoMunicipal := edtEmitIM;
     // Para o provedor ISSDigital deve-se informar tamb�m:
     //Prestador.Senha        := 'senha';
     //Prestador.FraseSecreta := 'frase secreta';
     Prestador.cUF                                := 24;
     PrestadorServico.RazaoSocial                 := edtEmitRazao;
     PrestadorServico.NomeFantasia                := edtEmitFantasia;
     PrestadorServico.IdentificacaoPrestador.Cnpj := edtEmitCNPJ;
     PrestadorServico.Contato.Email               := '';
     PrestadorServico.Contato.Telefone            := edtEmitFone;
     PrestadorServico.Endereco.Endereco           := edtEmitLogradouro;
     PrestadorServico.Endereco.UF                 := edtEmitUF;
     PrestadorServico.Endereco.Bairro             := edtEmitBairro;
     PrestadorServico.Endereco.CEP                := edtEmitCEP;
     PrestadorServico.Endereco.Complemento        := edtEmitComp;
     PrestadorServico.Endereco.CodigoMunicipio    := edtEmitCodCidade;

     DataSetParticipante:= Controller.GetSelect('Pessoa T1',
        ' Codigo = '+ DataSetEntidade.fieldbyName('CodigoCliente').asstring);

     MapperCliente.SendDataSetToEntidade;

     Tomador.IdentificacaoTomador.CpfCnpj := DataSetParticipante.fieldbyname('CpfCnpj').AsString;
   //Tomador.IdentificacaoTomador.InscricaoMunicipal := Cliente;
     Tomador.RazaoSocial                  := DataSetParticipante.fieldbyname('Nome').AsString;
     Tomador.Endereco.Endereco            := DataSetParticipante.fieldbyname('Endereco').AsString;
   //Tomador.Endereco.Numero              := '100';
     Tomador.Endereco.Complemento         := DataSetParticipante.fieldbyname('Complemento').AsString;
     Tomador.Endereco.Bairro              := DataSetParticipante.fieldbyname('Bairro').AsString;
     Tomador.Endereco.CodigoMunicipio     := DataSetParticipante.fieldbyname('CodigoIBGE').AsString;
     Tomador.Endereco.UF                  := DataSetParticipante.fieldbyname('UF').AsString;
     Tomador.Endereco.CEP                 := UtilsString.SoNumeros(Cliente.CEP);
   //Provedor Equiplano � obrigat�rio o pais e IE
     Tomador.Endereco.xPais               := 'BRASIL';
     Tomador.IdentificacaoTomador.InscricaoEstadual := DataSetParticipante.fieldbyname('InscricaoEstadual').AsString;
     Tomador.Contato.Telefone             := DataSetParticipante.fieldbyname('Telefone').AsString;
     Tomador.Contato.Email                := DataSetParticipante.fieldbyname('Email').AsString;

     (* Usando quando houver um intermediario na presta��o do servi�o
     IntermediarioServico.RazaoSocial        := 'razao';
     IntermediarioServico.CpfCnpj            := '00000000000';
     IntermediarioServico.InscricaoMunicipal := '12547478';
     *)
     (* Usando quando o servi�o for uma obra
     ConstrucaoCivil.CodigoObra := '88888';
     ConstrucaoCivil.Art        := '433';
     *)
    end;

  end;

end;

procedure TFormEmissorNfe.PreencherTransportadora(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
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

procedure TFormEmissorNfe.PreencherPagamento(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
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

procedure TFormEmissorNfe.PreencherInformacoesAdic(NotaF: ACBrNFeNotasFiscais.NotaFiscal);
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
  NotaF: ACBrNFENotasFiscais.NotaFiscal;
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

   if (edtChaveAcessoRef <> '') and (TipoNFE = DEVOLUCAO_FORNECEDOR) then
   begin
      PreencherNfeRef(NotaF);
   end;

   PreencherProdutos( NotaF);
   PreencherTransportadora( NotaF);
   PreencherPagamento( NotaF);
   PreencherInformacoesAdic( NotaF);
end;

procedure TFormEmissorNfe.GerarNFSe(NumNFe: String);
Var
  NotaF: ACBrNFSeNotasFiscais.NotaFiscal;
begin
   NotaF := ACBrNFSe1.NotasFiscais.Add;
   //PreencherIde( NotaF, NumNFe , 55);
   //PreencherEmitente( NotaF);
   //PreencherDestinatario( NotaF);
   PreencherServicos( NotaF);
   //PreencherPagamento( NotaF);
   //PreencherInformacoesAdic( NotaF);

end;

procedure TFormEmissorNfe.GravarConfiguracao;
begin

end;

procedure TFormEmissorNfe.GerarNFC(NumNFe : String);
Var
  NotaF: ACBrNFeNotasFiscais.NotaFiscal;
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
