unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
     DataSnap.DSProviderDataModuleAdapter,
     Datasnap.Provider, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.DB;


type
  TServerMethodsGeneric = class(TDSServerModule)
    dspConsulta: TDataSetProvider;
    FDQuery1: TFDQuery;
    function dspConsultaDataRequest(Sender: TObject;
      Input: OleVariant): OleVariant;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure ExecSQL(SQL: string);
  end;

implementation

{$R *.dfm}

uses System.StrUtils, ServerContainerUnit1;

function TServerMethodsGeneric.dspConsultaDataRequest(Sender: TObject;
  Input: OleVariant): OleVariant;
begin
   FDQuery1.SQL.Text:= Input;
end;

function TServerMethodsGeneric.EchoString(Value: string): string;
begin
  Result := Value;
end;

procedure TServerMethodsGeneric.ExecSQL(SQL: string);
begin
  ServerContainer1.FDConnection1.ExecSQL(SQL);
end;

function TServerMethodsGeneric.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

