object FormLembretesExibir: TFormLembretesExibir
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lembretes'
  ClientHeight = 382
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 366
    Height = 382
    Align = alClient
    AllowDelete = False
    AllowInsert = False
    DataSource = srcLembretes
    PanelHeight = 127
    PanelWidth = 349
    TabOrder = 0
    object DBText1: TDBText
      Left = 8
      Top = 104
      Width = 65
      Height = 17
      DataSource = srcLembretes
    end
    object DBMemo1: TDBMemo
      Left = 3
      Top = 4
      Width = 342
      Height = 93
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = False
      DataField = 'Descricao'
      DataSource = srcLembretes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      OnDblClick = DBMemo1DblClick
    end
  end
  object srcLembretes: TDataSource
    Left = 144
    Top = 144
  end
end
