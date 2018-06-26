{$I ACBr.inc}

unit EmissorNFSe;

interface

uses IniFiles, ShellAPI,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, OleCtrls, SHDocVw, StdCtrls, Buttons, ExtCtrls,
  pcnConversao, pnfsConversao,  DB, ACBrDFeSSL,
  ACBrNFSe, ACBrNFSeDANFSeClass, pnfsNFSe, ACBrBase,
  ACBrDFe, blcksock;

type
  TFormEmissorNFSe = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    btnImprimir: TButton;
    btnConsultarLote: TButton;
    btnCancNFSe: TButton;
    btnGerarEnviarLote: TButton;
    btnGerarRPS: TButton;
    btnConsultarSitLote: TButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFSe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    OpenDialog1: TOpenDialog;
    btnConsultarNFSeRPS: TButton;
    btnConsultarNFSePeriodo: TButton;
    ACBrNFSe1: TACBrNFSe;
    btnGerarEnviarNFSe: TButton;
    btnEnviaremail: TButton;
    btnLinkNFSe: TButton;
    btnGerarLoteRPS: TButton;
    btnGerarEnviarSincrono: TButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure btnGerarEnviarLoteClick(Sender: TObject);
    procedure btnConsultarLoteClick(Sender: TObject);
    procedure btnCancNFSeClick(Sender: TObject);
    procedure btnConsultarSitLoteClick(Sender: TObject);
    procedure btnGerarRPSClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ACBrNFSe1StatusChange(Sender: TObject);
    procedure ACBrNFSe1GerarLog(const Mensagem: String);
    procedure btnConsultarNFSeRPSClick(Sender: TObject);
    procedure btnConsultarNFSePeriodoClick(Sender: TObject);
    procedure cbCidadesChange(Sender: TObject);
    function RoundTo5(Valor: Double; Casas: Integer): Double;
    procedure btnGerarEnviarNFSeClick(Sender: TObject);
    procedure btnLinkNFSeClick(Sender: TObject);
    procedure btnGerarLoteRPSClick(Sender: TObject);
    procedure btnGerarEnviarSincronoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    {
    procedure lblMouseEnter(Sender: TObject);
    procedure lblMouseLeave(Sender: TObject);
    }
  strict private
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
  private
    { Private declarations }
    Ok : Boolean;
    FDataSetVenda: TDataSet;
    FDataSetCobranca: TDataSet;
    FDataSetProdutos: TDataSet;
    procedure LerConfiguracao;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure GerarNFSe(NumNFSe : String);
    procedure SetDataSetCobranca(const Value: TDataSet);
    procedure SetDataSetProdutos(const Value: TDataSet);
    procedure SetDataSetVenda(const Value: TDataSet);
  public
    { Public declarations }
    property DataSetVenda:TDataSet read FDataSetVenda write SetDataSetVenda;
    property DataSetProdutos: TDataSet read FDataSetProdutos write SetDataSetProdutos;
    property DataSetCobranca: TDataSet read FDataSetCobranca write SetDataSetCobranca;
  end;

var
  FormEmissorNFSe: TFormEmissorNFSe;

implementation

uses
 FileCtrl, DateUtils, Math,
 ufrmStatus,
 ACBrNFSeNotasFiscais, ACBrDFeUtil, Pessoa, ControllerClientes,
  Mapper, UtilsString;

const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure TFormEmissorNFSe.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
begin
  ACBrNFSe1.SSL.DescarregarCertificado;

  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
  Ini := TIniFile.Create( IniFile );
  try
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

      ACBrNFSe1.Configuracoes.Arquivos.PathSalvar   := edtPathSalvar;
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

      with ACBrNFSe1.Configuracoes.arquivos do
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

      with ACBrNFSe1.Configuracoes.WebServices do
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

      if ACBrNFSe1.DANFSE <> nil then
      begin
         if rgTipoDanfe > -1 then

         //ACBrNFSe1.DANFSE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe));
         ACBrNFSe1.DANFSE.Logo       := edtLogoMarca;
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

procedure TFormEmissorNFSe.LoadXML(MyMemo: TMemo;
  MyWebBrowser: TWebBrowser);
begin

end;

procedure TFormEmissorNFSe.GerarNFSe(NumNFSe: String);
var
 ValorISS: Double;
  Cliente: TPessoa;
  ControllerCliente: TControllerClientes;
  MapperCliente: TMapper;
  Total: Double;
begin
 ACBrNFSe1.NotasFiscais.Clear;

 with ACBrNFSe1 do
 begin
   NotasFiscais.NumeroLote:='1';
   NotasFiscais.Transacao := True;
   with NotasFiscais.Add.NFSe do
   begin
     IdentificacaoRps.Numero := FormatFloat('#########0', StrToInt(NumNFSe));
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
     Servico.Valores.ValorServicos          := FDataSetVenda.fieldByname('TotalEntidade').asFloat;
     Servico.Valores.ValorDeducoes          := 0.00;
     Servico.Valores.ValorPis               := 0.00;
     Servico.Valores.ValorCofins            := 0.00;
     Servico.Valores.ValorInss              := 0.00;
     Servico.Valores.ValorIr                := 0.00;
     Servico.Valores.ValorCsll              := 0.00;

     Servico.MunicipioIncidencia            := 2408102;
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
   //A fun��o RoundTo5 � usada para arredondar valores, sendo que o segundo
   //parametro se refere ao numero de casas decimais.
   //exemplos: RoundTo5(50.532, -2) ==> 50.53
   //exemplos: RoundTo5(50.535, -2) ==> 50.54
   //exemplos: RoundTo5(50.536, -2) ==> 50.54
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
     Servico.Discriminacao             := FDataSetProdutos.fieldByname('CodigoNFSe').asstring+' - '+
                                          FDataSetProdutos.fieldByname('DescricaoServicoNFSe').asstring;
   //Para o provedor ISS.NET em ambiente de Homologa��o
   //o Codigo do Municipio tem que ser '999'
     Servico.CodigoMunicipio := edtEmitCodCidade;
   //Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
     Servico.ExigibilidadeISS := exiExigivel;
   //Informar para Saatri
     Servico.CodigoPais := 1058; // Brasil
     Servico.MunicipioIncidencia := StrToIntDef(edtEmitCodCidade, 0);

     // Somente o provedor SimplISS permite infomar mais de 1 servi�o

     Servico.ItemServico.Add;

    { with Servico.ItemServico do
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
     Prestador.cUF  := 24;


     PrestadorServico.RazaoSocial                 := edtEmitRazao;
     PrestadorServico.NomeFantasia                := edtEmitFantasia;
     PrestadorServico.IdentificacaoPrestador.Cnpj := edtEmitCNPJ;
     //PrestadorServico.IdentificacaoPrestador.InscricaoMunicipal := edtEmitIM;
     PrestadorServico.Contato.Email               := 'lindemberg.cortez@gmail.com';
     PrestadorServico.Contato.Telefone            := edtEmitFone;
     PrestadorServico.Endereco.Endereco           := edtEmitLogradouro;
     PrestadorServico.Endereco.UF                 := edtEmitUF;
     PrestadorServico.Endereco.Bairro             := edtEmitBairro;
     PrestadorServico.Endereco.CEP                := edtEmitCEP;
     PrestadorServico.Endereco.Complemento        := edtEmitComp;
     PrestadorServico.Endereco.CodigoMunicipio    := edtEmitCodCidade;


     Cliente           := TPessoa.create;
     ControllerCliente := TControllerClientes.create;
     MapperCliente     := TMapper.Create( Cliente,
                          ControllerCliente.GetCliente(
                          DataSetVenda.fieldbyName('CodigoCliente').asstring) );
     with MapperCliente do
     begin
       Associar('Codigo'     , nil);
       Associar('CPFCNPJ'    , nil);
       Associar('CodigoClassificacao', nil);
       Associar('Telefone'   , nil);
       Associar('Email'      , nil);
       Associar('Observacao' , nil);
       Associar('Endereco'   , nil);
       Associar('Bairro'     , nil);
       Associar('Municipio'  , nil);
       Associar('UF'         , nil);
       Associar('CEP'        , nil);
       Associar('Nome'       , nil);
       Associar('Complemento', nil);
       Associar('RazaoSocial', nil);
       Associar('Faturar'    , nil);
     end;

     MapperCliente.SendDataSetToEntidade;

     Tomador.IdentificacaoTomador.CpfCnpj := Cliente.CpfCnpj;
   //Tomador.IdentificacaoTomador.InscricaoMunicipal := Cliente;
     Tomador.RazaoSocial                  := Cliente.Nome;
     Tomador.Endereco.Endereco            := Cliente.Endereco;
   //Tomador.Endereco.Numero              := '100';
     Tomador.Endereco.Complemento         := Cliente.Complemento;
     Tomador.Endereco.Bairro              := Cliente.Bairro;
     Tomador.Endereco.CodigoMunicipio     := Cliente.CodigoIBGE;
     Tomador.Endereco.UF                  := Cliente.UF;
     Tomador.Endereco.CEP                 := UtilsString.SoNumeros(Cliente.CEP);
   //Provedor Equiplano � obrigat�rio o pais e IE
     Tomador.Endereco.xPais               := 'BRASIL';
     Tomador.IdentificacaoTomador.InscricaoEstadual := Cliente.InscricaoEstadual;
     Tomador.Contato.Telefone             := Cliente.Telefone;
     Tomador.Contato.Email                := Cliente.Email;

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

procedure TFormEmissorNFSe.FormCreate(Sender: TObject);
begin
 LerConfiguracao;

end;

procedure TFormEmissorNFSe.btnSalvarConfigClick(Sender: TObject);
begin
   LerConfiguracao;
end;

procedure TFormEmissorNFSe.btnGerarEnviarLoteClick(Sender: TObject);
var
 vAux, vNumLote : String;
begin
 if not(InputQuery('Gerar e Enviar Lote', 'Numero do RPS', vAux))
  then exit;

 if not(InputQuery('Gerar e Enviar Lote', 'Numero do Lote', vNumLote))
  then exit;

 ACBrNFSe1.NotasFiscais.Clear;
 GerarNFSe(vAux);
 ACBrNFSe1.Enviar(vNumLote);

 ACBrNFSe1.NotasFiscais.Clear;
end;

procedure TFormEmissorNFSe.btnConsultarLoteClick(Sender: TObject);
var
 Lote, Protocolo : String;
begin
 if not(InputQuery('Consultar Lote', 'N�mero do Lote', Lote))
  then exit;
 if not(InputQuery('Consultar Lote', 'N�mero do Protocolo', Protocolo))
  then exit;

 ACBrNFSe1.ConsultarLoteRps(Lote, Protocolo);

 MemoResp.Lines.Text   := UTF8Encode(ACBrNFSe1.WebServices.ConsLote.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrNFSe1.WebServices.ConsLote.RetWS);
 LoadXML(MemoResp, WBResposta);
end;

procedure TFormEmissorNFSe.btnCancNFSeClick(Sender: TObject);
var
 Codigo, Motivo : String; 
begin
  {
 OpenDialog1.Title := 'Selecione a NFSe';
 OpenDialog1.DefaultExt := '*-NFSe.xml';
 OpenDialog1.Filter := 'Arquivos NFSe (*-NFSe.xml)|*-NFSe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Geral.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrNFSe1.NotasFiscais.Clear;
   ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

   // Codigo de Cancelamento
   // 1 - Erro de emiss�o
   // 2 - Servi�o n�o concluido
   // 3 - RPS Cancelado na Emiss�o

   if not(InputQuery('Cancelar NFSe', 'C�digo de Cancelamento', Codigo))
    then exit;
	
   //Provedor Equiplano � obrigat�rio o motivo de cancelamento
   //if not(InputQuery('Cancelar NFSe', 'Motivo de Cancelamento', Motivo))
   // then exit;
   //ACBrNFSe1.NotasFiscais.Items[0].NFSe.MotivoCancelamento:= Motivo;

//   ACBrNFSe1.WebServices.CancelaNFSe(Codigo, '1', '03310700000170', '0306223', '0');
   ACBrNFSe1.CancelarNFSe(Codigo);

   MemoDados.Lines.Add('Arquivo Carregado de: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoDados.Lines.Add('Retorno do Cancelamento:');
   MemoDados.Lines.Add('C�d. Cancelamento: ' + ACBrNFSe1.WebServices.CancNfse.CodigoCancelamento);
   MemoDados.Lines.Add('Data / Hora      : ' +
    DFeUtil.SeSenao(ACBrNFSe1.WebServices.CancNfse.DataHora = 0, '',
                      DateTimeToStr(ACBrNFSe1.WebServices.CancNfse.DataHora)));
   LoadXML(MemoResp, WBResposta);
   PageControl2.ActivePageIndex := 1;
  end;
  }

end;

procedure TFormEmissorNFSe.btnConsultarSitLoteClick(Sender: TObject);
var
 Protocolo : String;
begin
{
 if not(InputQuery('Consultar Situa��o do Lote', 'N�mero do Protocolo', Protocolo))
  then exit;

 ACBrNFSe1.ConsultarSituacao(edtEmitCNPJ.Text, edtEmitIM.Text, Protocolo);

 MemoResp.Lines.Text   := UTF8Encode(ACBrNFSe1.WebServices.ConsSitLote.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrNFSe1.WebServices.ConsSitLote.RetWS);
 LoadXML(MemoResp, WBResposta);
 }
end;

procedure TFormEmissorNFSe.btnGerarRPSClick(Sender: TObject);
var
 vAux : String;
begin
   vAux :=  FDataSetVenda.fieldbyname('Codigo').value ;

   ACBrNFSe1.NotasFiscais.Clear;
   GerarNFSe(vAux);

   //ACBrNFSe1.NotasFiscais.Items[0].SaveToFile;

   ShowMessage('Arquivo gerado em: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoDados.Lines.Add('Arquivo gerado em: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   LoadXML(MemoResp, WBResposta);
   PageControl2.ActivePageIndex := 1;
end;

procedure TFormEmissorNFSe.btnImprimirClick(Sender: TObject);
begin
{
 OpenDialog1.Title := 'Selecione a NFSe';
 OpenDialog1.DefaultExt := '*-NFSe.xml';
 OpenDialog1.Filter := 'Arquivos NFSe (*-NFSe.xml)|*-NFSe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Geral.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrNFSe1.NotasFiscais.Clear;
   ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
   ACBrNFSe1.NotasFiscais.Imprimir;

   MemoDados.Lines.Add('Arquivo Carregado de: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   MemoDados.Lines.Add('Nota Numero: '+ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero);
   MemoDados.Lines.Add('C�digo de Verifica��o: '+ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao);
   MemoDados.Lines.Add('Data de Emiss�o: '+DateToStr(ACBrNFSe1.NotasFiscais.Items[0].NFSe.DataEmissao));
   MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
   LoadXML(MemoResp, WBResposta);
   PageControl2.ActivePageIndex := 1;
  end;
  }
end;

procedure TFormEmissorNFSe.ACBrNFSe1StatusChange(Sender: TObject);
begin
 case ACBrNFSe1.Status of
  stNFSeIdle : begin
            if ( frmStatus <> nil ) then frmStatus.Hide;
           end;
  stNFSeRecepcao : begin
                   if ( frmStatus = nil )
                    then frmStatus := TfrmStatus.Create(Application);
                   frmStatus.lblStatus.Caption := 'Enviando dados da NFSe...';
                   frmStatus.Show;
                   frmStatus.BringToFront;
                  end;
  stNFSeConsulta : begin
                   if ( frmStatus = nil )
                    then frmStatus := TfrmStatus.Create(Application);
                   frmStatus.lblStatus.Caption := 'Consultando...';
                   frmStatus.Show;
                   frmStatus.BringToFront;
                  end;
  stNFSeCancelamento : begin
                       if ( frmStatus = nil )
                        then frmStatus := TfrmStatus.Create(Application);
                       frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFSe...';
                       frmStatus.Show;
                       frmStatus.BringToFront;
                      end;
  stNFSeEmail : begin
                if ( frmStatus = nil )
                 then frmStatus := TfrmStatus.Create(Application);
                frmStatus.lblStatus.Caption := 'Enviando Email...';
                frmStatus.Show;
                frmStatus.BringToFront;
               end;
 end;
 Application.ProcessMessages;
end;

procedure TFormEmissorNFSe.ACBrNFSe1GerarLog(const Mensagem: String);
begin
 memoLog.Lines.Add(Mensagem);
end;

procedure TFormEmissorNFSe.SetDataSetCobranca(const Value: TDataSet);
begin
  FDataSetCobranca := Value;
end;

procedure TFormEmissorNFSe.SetDataSetProdutos(const Value: TDataSet);
begin
  FDataSetProdutos := Value;
end;

procedure TFormEmissorNFSe.SetDataSetVenda(const Value: TDataSet);
begin
  FDataSetVenda := Value;
end;

procedure TFormEmissorNFSe.btnConsultarNFSeRPSClick(Sender: TObject);
begin
 {
 OpenDialog1.Title := 'Selecione o Rps';
 OpenDialog1.DefaultExt := '*-Rps.xml';
 OpenDialog1.Filter := 'Arquivos Rps (*-Rps.xml)|*-Rps.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 //OpenDialog1.InitialDir := ACBrNFSe1.Configuracoes.Geral.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrNFSe1.NotasFiscais.Clear;
   ACBrNFSe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

   ACBrNFSe1.ConsultarNFSeporRps(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero,
                                ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Serie,
                                TipoRPSToStr(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Tipo),
                                ACBrNFSe1.NotasFiscais.Items[0].NFSe.Prestador.Cnpj,
                                ACBrNFSe1.NotasFiscais.Items[0].NFSe.Prestador.InscricaoMunicipal);

   MemoResp.Lines.Text   := UTF8Encode(ACBrNFSe1.WebServices.ConsNfseRps.RetWS);
   memoRespWS.Lines.Text := UTF8Encode(ACBrNFSe1.WebServices.ConsNfseRps.RetWS);
   LoadXML(MemoResp, WBResposta);
  end;
  }
end;

procedure TFormEmissorNFSe.btnConsultarNFSePeriodoClick(Sender: TObject);
var
 DataInicial, DataFinal : String;
begin
 if not(InputQuery('Consultar NFSe por Per�odo', 'Data Inicial (DD/MM/AAAA):', DataInicial))
  then exit;
 if not(InputQuery('Consultar NFSe por Per�odo', 'Data Final (DD/MM/AAAA):', DataFinal))
  then exit;

 //ACBrNFSe1.ConsultarNFSe(edtEmitCNPJ.Text, edtEmitIM.Text, StrToDate(DataInicial), StrToDate(DataFinal));

 MemoResp.Lines.Text   := UTF8Encode(ACBrNFSe1.WebServices.ConsNfse.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrNFSe1.WebServices.ConsNfse.RetWS);
 LoadXML(MemoResp, WBResposta);
end;

procedure TFormEmissorNFSe.cbCidadesChange(Sender: TObject);

begin

end;

// Fun��o criada para arredondar valores quando a n Casa for maior ou igual a 5
// pois a fun��o RoundTo arredonda quando a n Casa for maior ou igual a 6
function TFormEmissorNFSe.RoundTo5(Valor: Double; Casas: Integer): Double;
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

procedure TFormEmissorNFSe.btnGerarEnviarNFSeClick(Sender: TObject);
var
 vNumRPS, sNomeArq : String;
begin

 vNumRPS := DataSetVenda.fieldbyname('Codigo').asstring;

 ACBrNFSe1.NotasFiscais.Clear;
 GerarNFSe(vNumRPS);

 ACBrNFSe1.Gerar(StrToInt(vNumRPS));

 sNomeArq := ACBrNFSe1.NotasFiscais.Items[0].NomeArq;

 ACBrNFSe1.NotasFiscais.Clear;
 ACBrNFSe1.NotasFiscais.LoadFromFile(sNomeArq);
 ACBrNFSe1.NotasFiscais.Imprimir;

 MemoDados.Lines.Add('Arquivo Carregado de: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
 MemoResp.Lines.LoadFromFile(ACBrNFSe1.NotasFiscais.Items[0].NomeArq);
 LoadXML(MemoResp, WBResposta);
 PageControl2.ActivePageIndex := 1;
end;

procedure TFormEmissorNFSe.btnLinkNFSeClick(Sender: TObject);
var
   vNumNFSe, sCodVerif, sIM, sLink : String;
begin
   if not(InputQuery('Gerar o Link da NFSe', 'Numero da NFSe', vNumNFSe))
    then exit;
   if not(InputQuery('Gerar o Link da NFSe', 'Codigo de Verificacao', sCodVerif))
    then exit;
   if not(InputQuery('Gerar o Link da NFSe', 'Inscri��o Municipal', sIM))
    then exit;

   sLink := ACBrNFSe1.LinkNFSe(StrToIntDef(vNumNFSe, 0), sCodVerif, sIM);

   MemoResp.Lines.Add('Link Gerado: ' + sLink);
   PageControl2.ActivePageIndex := 0;
end;

procedure TFormEmissorNFSe.btnGerarLoteRPSClick(Sender: TObject);
var
   vAux, vNumLote : String;
begin
   //**************************************************************************
   //
   // A function GerarLote apenas gera o XML do lote, assina se necess�rio
   // e valida, salvando o arquivo com o nome: <lote>-lot-rps.xml na pasta Ger
   // N�o ocorre o envio para nenhum webservice.
   //
   //**************************************************************************

   if not(InputQuery('Gerar e Enviar Lote', 'Numero do RPS', vAux))
    then exit;

   if not(InputQuery('Gerar e Enviar Lote', 'Numero do Lote', vNumLote))
    then exit;

   ACBrNFSe1.NotasFiscais.Clear;
   GerarNFSe(vAux);
   ACBrNFSe1.GerarLote(vNumLote);

   ShowMessage('Arquivo gerado em: '+ACBrNFSe1.NotasFiscais.Items[0].NomeArq);

   ACBrNFSe1.NotasFiscais.Clear;
end;

procedure TFormEmissorNFSe.btnGerarEnviarSincronoClick(Sender: TObject);
var
   vAux, vNumLote : String;
begin
   //**************************************************************************
   //
   // A function EnviarSincrono s� esta disponivel para alguns provedores.
   //
   //**************************************************************************

   if not(InputQuery('Gerar e Enviar Lote - Sincrono', 'Numero do RPS', vAux))
    then exit;

   if not(InputQuery('Gerar e Enviar Lote - Sincrono', 'Numero do Lote', vNumLote))
    then exit;

   ACBrNFSe1.NotasFiscais.Clear;
   GerarNFSe(vAux);
   ACBrNFSe1.EnviarSincrono(vNumLote);

   ACBrNFSe1.NotasFiscais.Clear;
end;

procedure TFormEmissorNFSe.Button1Click(Sender: TObject);
var
 vAux, provedor : String;
begin
 if not(InputQuery('Informe o c�digo IBGE da cidade com 7 digitos', 'C�digo:', vAux))
  then exit;
 //provedor := CodCidadeToProvedor(StrToIntDef(vAux, 0));
 ShowMessage('Provedor: ' + provedor);
end;

end.

{

Bom dia,

Fiz umas adapta��es nos componentes da ACBR para poder funcionar aqui para Natal.

Veja os m�todos:
ACBrNFSe1.NotasFiscais.AssinarRps; Usar no final de cada rps gerada.
ACBrNFSe1.GerarLote(NumLote); Usar quando for gerar o lote.

Estou usando Capicom e a assinatura por um Token.

Abra�os,

Danilo Junior
Arquivo(s) anexado(s)
Arquivo anexado  ACBrNFSe.rar   207.14K   50 Downloads
Arquivo anexado  ACBr_NFSe.rar   3.23K   35 Downloads
}
