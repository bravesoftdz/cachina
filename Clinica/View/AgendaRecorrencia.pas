unit AgendaRecorrencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.CheckLst, DateUtils, Vcl.Buttons;

type
  TFormAgendaRecorrencia = class(TForm)
    lbPsicologo: TLabel;
    cboEspecialista: TComboBox;
    chkHoras: TCheckListBox;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    Button2: TButton;
    chkDiasDaSemana: TCheckListBox;
    ProgressBar1: TProgressBar;
    edtMinutos: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    chkTodos: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chkTodosClick(Sender: TObject);
  private

    { Private declarations }
    procedure PreencherHorarios(minutos: integer);

  public
    { Public declarations }
  end;

var
  FormAgendaRecorrencia: TFormAgendaRecorrencia;

implementation

{$R *.dfm}

uses DBUtils, EntidadeFactory, ControllerAgenda, GenericEntidade, Mapper,
  Principal;

procedure TFormAgendaRecorrencia.Button1Click(Sender: TObject);
var
  Agenda: TGenericEntidade;
  Fields: TStringList;
  Mapper: TMapper;
  ControllerAgenda: TControllerAgenda;

  Data: TDatetime;
  Hora: string;
  I , J : Integer;
  MaxDay: Integer;
  Aux:integer;
  Controle:Integer;
  PrimeiroDia:boolean;
begin
   ControllerAgenda := TControllerAgenda.Create;

   Agenda   := TEntidadeFactory.Criar(tpAgendamento);

   Mapper   := TMapper.Create(nil, nil);

   Mapper.Associar('CodigoEspecialista',nil);
   Mapper.Associar('Situacao',nil);
   Mapper.Associar('Data',nil);
   Mapper.Associar('Hora',nil);

   Mapper.Entidade     := Agenda;

   MaxDay := DateUtils.DaysBetween(DateTimePicker1.DateTime, DateTimePicker2.DateTime);

   Data     := DateTimePicker1.DateTime;
   Aux      := 0;
   PrimeiroDia := true;
   ProgressBar1.Max:= MaxDay;
   ProgressBar1.Position:= 0;
   //for I := 1 to MaxDay do
   while Data <= DateTimePicker2.DateTime do
   begin
     if (dateutils.DayOfTheWeek(Data) <> 7) and (chkDiasDaSemana.Checked[dateutils.DayOfTheWeek(Data)-1])  then
     begin
        for j := 0 to chkHoras.Items.Count -1 do
        begin
          if chkHoras.Checked[j] then
          begin
            Hora := chkHoras.Items.Strings[j];
            Mapper.SendValueToFieldEntidade('CodigoEspecialista', Inttostr( Integer( cboEspecialista.Items.Objects[ cboEspecialista.ItemIndex ] ) ) );
            Mapper.SendValueToFieldEntidade('Situacao','Agendado');
            Mapper.SendValueToFieldEntidade('Data',datetostr(Data));
            Mapper.SendValueToFieldEntidade('Hora',Hora);
            Mapper.SendValueToFieldEntidade('Codigo', ControllerAgenda.GetMaxAgenda );
            ControllerAgenda.Inserir(Agenda);
          end;
        end;
        Aux:= 0;
     end;
     Data:= IncDay(Data);
     ProgressBar1.StepIt;
   end;

   Agenda.Free;
   Mapper.Free;
   ControllerAgenda.Free;
   showmessage('Opera��o finalizada!');
end;

procedure TFormAgendaRecorrencia.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFormAgendaRecorrencia.chkTodosClick(Sender: TObject);
var
  I: Integer;
begin
  if chkTodos.Checked  then
     chkHoras.CheckAll(cbChecked)
  else
    chkHoras.CheckAll(cbUnchecked);
end;

procedure TFormAgendaRecorrencia.FormCreate(Sender: TObject);
begin
  FillCombobox(tpEspecialista,cboEspecialista);
  DateTimePicker1.DateTime := date;
  DateTimePicker2.DateTime := date;
end;

procedure TFormAgendaRecorrencia.PreencherHorarios(minutos: integer);
var
  i: integer;
  hora:tdatetime;
begin
  chkHoras.Items.Clear;
  hora := strtotime('08:00');
  while hora <= strtotime('18:00') do
  begin
    chkHoras.Items.Add( Formatdatetime('HH:MM', hora));
    hora := incMinute( hora, minutos);
  end;
end;

procedure TFormAgendaRecorrencia.SpeedButton1Click(Sender: TObject);
begin
  PreencherHorarios( strtoint(edtMinutos.Text));
end;

end.
