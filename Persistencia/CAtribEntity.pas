unit CAtribEntity;

interface

uses SySUtils;

type

  Modulo = class(TCustomAttribute)
  private
    FName: String;
  public
    constructor Create(aName: String);
    property Name: String read FName write FName;
  end;

  TableName = class(TCustomAttribute)
  private
    FName: String;
  public
    constructor Create(aName: String);
    property Name: String read FName write FName;
  end;

  type
    KeyField = class(TCustomAttribute)
  private
    FName: String;
  public
    constructor Create(aName: String);
    property Name: String read FName write FName;
  end;

  type

  FieldName = class(TCustomAttribute)
    private FName: String;
    private Flength: String;
  public
    constructor Create(aName: String; len : Integer = 50);
    property Name: String read FName write FName;
    property length: String read Flength write Flength;
  end;

  type
  Required = class(TCustomAttribute)
    private FName: String;
  public
    constructor Create(aName: String);
    property Name: String read FName write FName;
  end;

  type
  LogAuditoria = class(TCustomAttribute)
  private  FName: String;
  public
    constructor Create(aName: String);
    property Name: String read FName write FName;
  end;

implementation

constructor TableName.Create(aName: String);
begin
  FName := aName
end;

constructor KeyField.Create(aName: String);
begin
  FName := aName;
end;

constructor FieldName.Create(aName: String; len : Integer = 50);
begin
  FName := aName;
  FLength:= inttostr(len);
end;

constructor Required.Create(aName: String);
begin
  FName := aName;
end;

constructor Modulo.Create(aName: String);
begin
  FName := aName;
end;

constructor LogAuditoria.Create(aName: String);
begin
   FName := aName;
end;

end.
