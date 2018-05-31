unit srvModBaseDados;

interface

uses
  System.Classes, Data.DBXDataSnap, IndyPeerImpl, Data.DBXCommon,IniFiles, Forms,
  sysUtils, Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.DBClient,
  Datasnap.DSConnect, Dialogs, Winapi.Windows, IPPeerClient, System.Win.ComObj;

type
  TDSServerModuleBaseDados = class(TDataModule)
    SQLConnection1: TSQLConnection;
    cdsConsulta: TClientDataSet;
    DSProviderConnectioneBase: TDSProviderConnection;
    ServerMethod_ExecSQL: TSqlServerMethod;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Conectar:boolean;
    function Desconectar:boolean;
    function getDataSet(strQry:string):TClientDataSet; overload;
    function execSql(strQry:string): boolean;
  end;

var
  DSServerModuleBaseDados: TDSServerModuleBaseDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uCustomDatabaseManager;

{$R *.dfm}

function TDSServerModuleBaseDados.Conectar:boolean;
begin
  try
    SQLConnection1.Connected := true;
    result := true;
  except
    result := false;
  end;
end;

procedure TDSServerModuleBaseDados.DataModuleCreate(Sender: TObject);
var
  arquivo:TIniFile;
  HostName: string;
  Manager: TCustomDatabaseManager;
begin
  arquivo   := TIniFile.create(ExtractFilePath(application.ExeName)+'configuracao.ini');
  HostName  := arquivo.ReadString('Configuracao', 'HostName', HostName);
  SQLConnection1.Params.Values['HostName']:= HostName;


  //Manager:= TCustomDatabaseManager.Create(;
  //Manager.SincronizarEstrutura;
end;

function TDSServerModuleBaseDados.Desconectar:boolean;
begin

  try
    SQLConnection1.Connected := false;
    result := true;
  except
    result := false;
  end;

end;

function TDSServerModuleBaseDados.getDataSet(strQry:string): TClientDataSet;
begin
  cdsConsulta.Close;
  cdsConsulta.datarequest(strQry);
  cdsConsulta.Open;

  result := cdsConsulta;
end;

function TDSServerModuleBaseDados.execSql(strQry:string): boolean;
Var
   msgErro:string;
begin
  result := false;
  try
    ServerMethod_ExecSQL.ParamByName('SQL').Value := strQry;
    ServerMethod_ExecSQL.ExecuteMethod;
    result := true;
  except
    on e: Exception do
    begin
      application.messagebox(Pchar('N�o � poss�vel excluir este registro, pois se encontra em uso!'+#13+#13+
      'Detalhes:  '+ E.Message), 'Aten��o!', MB_ICONWARNING + mb_ok );
      raise;
    end;
  end;
end;

end.
