object FormAgendaRecorrencia: TFormAgendaRecorrencia
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Recorr'#234'ncia'
  ClientHeight = 270
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbPsicologo: TLabel
    Left = 8
    Top = 20
    Width = 66
    Height = 13
    Caption = 'Especialista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 50
    Width = 31
    Height = 13
    Caption = 'In'#237'cio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 78
    Width = 20
    Height = 13
    Caption = 'Fim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 108
    Width = 38
    Height = 13
    Caption = 'A cada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 188
    Top = 107
    Width = 21
    Height = 13
    Caption = 'min'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 215
    Top = 101
    Width = 57
    Height = 22
    Caption = 'Atualizar'
    OnClick = SpeedButton1Click
  end
  object cboEspecialista: TComboBox
    Left = 80
    Top = 12
    Width = 370
    Height = 21
    DropDownCount = 20
    TabOrder = 0
  end
  object chkHoras: TCheckListBox
    Left = 119
    Top = 129
    Width = 330
    Height = 102
    Columns = 5
    ItemHeight = 13
    Items.Strings = (
      '08:00'
      '08:30'
      '09:00'
      '09:30'
      '10:00'
      '10:30'
      '11:00'
      '11:30'
      '12:00'
      '12:30'
      '13:00'
      '13:30'
      '14:00'
      '14:30'
      '15:00'
      '15:30'
      '16:00'
      '16:30'
      '17:00'
      '17:30'
      '18:00')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 296
    Top = 237
    Width = 75
    Height = 25
    Caption = 'Gerar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 80
    Top = 42
    Width = 105
    Height = 21
    Date = 41720.613903391200000000
    Time = 41720.613903391200000000
    TabOrder = 3
  end
  object DateTimePicker2: TDateTimePicker
    Left = 80
    Top = 72
    Width = 105
    Height = 21
    Date = 41720.613903391200000000
    Time = 41720.613903391200000000
    TabOrder = 4
  end
  object Button2: TButton
    Left = 377
    Top = 237
    Width = 75
    Height = 25
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object chkDiasDaSemana: TCheckListBox
    Left = 8
    Top = 129
    Width = 105
    Height = 102
    Columns = 1
    ItemHeight = 13
    Items.Strings = (
      'segunda-feira'
      'ter'#231'a-feira'
      'quarta-feira'
      'quinta-feira'
      'sexta-feira'
      's'#225'bado')
    TabOrder = 6
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 241
    Width = 274
    Height = 17
    Step = 1
    TabOrder = 7
  end
  object edtMinutos: TEdit
    Left = 80
    Top = 102
    Width = 105
    Height = 21
    TabOrder = 8
    Text = '30'
  end
  object chkTodos: TCheckBox
    Left = 362
    Top = 106
    Width = 88
    Height = 17
    Caption = 'Marcar todos'
    TabOrder = 9
    OnClick = chkTodosClick
  end
  object MainMenu1: TMainMenu
    Left = 392
    Top = 8
  end
end
