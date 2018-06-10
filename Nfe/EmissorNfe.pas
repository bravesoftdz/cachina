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
  EntidadeFactory, ControllerParametros, ControllerSequencias;

{$R *.dfm}


procedure TFormEmissorNfe.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
begin
  ACBrNFe1.SSL.DescarregarCertificado;

  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
  Ini := TIniFile.Create( IniFile );
  try
      ACBrNFe1.Configuracoes.Certificados.NumeroSerie :=  Ini.ReadString( 'Certificado','NumSerie','') ;

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

      with ACBrNFe1.Configuracoes.arquivos do
      begin
         PathSalvar   := edtPathSalvar;
         PathSchemas  := edtPathSquemas;
      end;

      cbUF             := Ini.ReadString( 'WebService','UF','RN') ;
      rgTipoAmb        := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      ckxVisualizar    := Ini.ReadBool(    'WebService','Visualizar',False) ;
      cbxSalvarSOAP    := Ini.ReadBool(  'WebService','SalvarSOAP',False) ;
      cbxAjustarAut    := Ini.ReadBool(  'WebService','AjustarAut',False) ;
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
             edtIntervalo := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas);
          }

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

procedure TFormEmissorNfe.PreencherNFeref(NotaF: NotaFiscal);
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

procedure TFormEmissorNfe.PreencherEmitente(NotaF: NotaFiscal);
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

   if (edtChaveAcessoRef <> '') and (TipoNFE = DEVOLUCAO_FORNECEDOR) then
   begin
      PreencherNfeRef(NotaF);
   end;

   PreencherProdutos( NotaF);
   PreencherTransportadora( NotaF);
   PreencherPagamento( NotaF);
   PreencherInformacoesAdic( NotaF);
end;

procedure TFormEmissorNfe.GravarConfiguracao;
begin

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
