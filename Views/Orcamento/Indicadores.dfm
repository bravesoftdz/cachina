object FormIndicadores: TFormIndicadores
  Left = 0
  Top = 0
  Caption = 'FormIndicadores'
  ClientHeight = 589
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 17
    Width = 49
    Height = 16
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 527
    Top = 10
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label2: TLabel
    Left = 326
    Top = 15
    Width = 65
    Height = 13
    Caption = 'Funcion'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 73
    Top = 9
    Width = 107
    Height = 24
    Date = 43200.904675462960000000
    Time = 43200.904675462960000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 184
    Top = 9
    Width = 108
    Height = 24
    Date = 43200.904675462960000000
    Time = 43200.904675462960000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object cboFuncionario: TComboBox
    Left = 397
    Top = 11
    Width = 103
    Height = 21
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 46
    Width = 1113
    Height = 539
    ActivePage = TabSheet1
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Indicadores'
      object GroupBox1: TGroupBox
        Left = 9
        Top = 14
        Width = 321
        Height = 241
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 16
          Top = 210
          Width = 37
          Height = 16
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbtotalQtd1: TLabel
          Left = 114
          Top = 210
          Width = 8
          Height = 16
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbtotalValor1: TLabel
          Left = 250
          Top = 210
          Width = 8
          Height = 16
          Alignment = taRightJustify
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 16
          Top = 27
          Width = 290
          Height = 178
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Situacao'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qtd'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 85
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 341
        Top = 14
        Width = 321
        Height = 241
        Caption = 'Tipo de pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label10: TLabel
          Left = 23
          Top = 210
          Width = 37
          Height = 16
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbtotalQtd2: TLabel
          Left = 111
          Top = 210
          Width = 8
          Height = 16
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbtotalValor2: TLabel
          Left = 258
          Top = 210
          Width = 8
          Height = 16
          Alignment = taRightJustify
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid2: TDBGrid
          Left = 16
          Top = 27
          Width = 284
          Height = 178
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Descricao'
              Title.Caption = 'Pagamento'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qtd'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 86
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 341
        Top = 256
        Width = 321
        Height = 241
        Caption = 'Anual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object lbtotalValor3: TLabel
          Left = 265
          Top = 207
          Width = 8
          Height = 16
          Alignment = taRightJustify
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbtotalQtd3: TLabel
          Left = 111
          Top = 210
          Width = 8
          Height = 16
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 23
          Top = 210
          Width = 37
          Height = 16
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid3: TDBGrid
          Left = 16
          Top = 25
          Width = 289
          Height = 178
          DataSource = DataSource3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Ano'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qtd'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 96
              Visible = True
            end>
        end
      end
      object GroupBox4: TGroupBox
        Left = 9
        Top = 256
        Width = 321
        Height = 243
        Caption = 'Funcion'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object lbtotalValor4: TLabel
          Left = 250
          Top = 210
          Width = 8
          Height = 16
          Alignment = taRightJustify
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbtotalQtd4: TLabel
          Left = 114
          Top = 210
          Width = 8
          Height = 16
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 16
          Top = 210
          Width = 37
          Height = 16
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid4: TDBGrid
          Left = 16
          Top = 25
          Width = 289
          Height = 178
          DataSource = DataSource4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Funcionario'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qtd'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 80
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Gr'#225'ficos'
      ImageIndex = 1
      object DBChart1: TDBChart
        Left = 385
        Top = 21
        Width = 356
        Height = 293
        BackWall.Visible = False
        BottomWall.Visible = False
        LeftWall.Visible = False
        Title.Text.Strings = (
          'TDBChart')
        Legend.Visible = False
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TPieSeries
          XLabelsSource = 'Situacao'
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          YValues.ValueSource = 'Valor'
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
        end
      end
      object DBChart4: TDBChart
        Left = 751
        Top = 20
        Width = 356
        Height = 293
        BackWall.Visible = False
        BottomWall.Visible = False
        LeftWall.Visible = False
        Title.Text.Strings = (
          '')
        Legend.Visible = False
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series4: TPieSeries
          XLabelsSource = 'Funcionario'
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          YValues.ValueSource = 'Valor'
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
        end
      end
      object DBChart3: TDBChart
        Left = 13
        Top = 20
        Width = 356
        Height = 293
        BackWall.Visible = False
        BottomWall.Visible = False
        LeftWall.Visible = False
        Title.Text.Strings = (
          'TDBChart')
        Legend.Visible = False
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        TabOrder = 2
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series3: TPieSeries
          XLabelsSource = 'Ano'
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          YValues.ValueSource = 'Valor'
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 2
      object GroupBox5: TGroupBox
        Left = 18
        Top = 21
        Width = 639
        Height = 76
        Caption = 'Recebido/Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label6: TLabel
          Left = 16
          Top = 24
          Width = 52
          Height = 13
          Caption = 'Receitas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 184
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Despesas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 328
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Diferen'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbRecebido: TLabel
          Left = 77
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbPago: TLabel
          Left = 255
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbDiferenca1: TLabel
          Left = 391
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object GroupBox6: TGroupBox
        Left = 18
        Top = 109
        Width = 639
        Height = 76
        Caption = 'A Receber /A Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label14: TLabel
          Left = 16
          Top = 24
          Width = 52
          Height = 13
          Caption = 'Receitas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 184
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Despesas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 328
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Diferen'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbAReceber: TLabel
          Left = 77
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbAPagar: TLabel
          Left = 255
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbDiferenca2: TLabel
          Left = 391
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object GroupBox7: TGroupBox
        Left = 18
        Top = 191
        Width = 639
        Height = 74
        Caption = 'Em atraso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label21: TLabel
          Left = 16
          Top = 24
          Width = 52
          Height = 13
          Caption = 'Receitas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 184
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Despesas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 328
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Diferen'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbReceberAtrasado: TLabel
          Left = 77
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbPagarAtrasado: TLabel
          Left = 255
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbDiferenca3: TLabel
          Left = 391
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 256
    Top = 411
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 256
    Top = 467
    object ClientDataSet1Situacao: TStringField
      FieldName = 'Situacao'
    end
    object ClientDataSet1Qtd: TIntegerField
      FieldName = 'Qtd'
    end
    object ClientDataSet1Valor: TFloatField
      FieldName = 'Valor'
    end
    object ClientDataSet1totalQtd: TAggregateField
      FieldName = 'totalQtd'
      Active = True
      DisplayName = ''
      Expression = 'SUM(Qtd)'
    end
    object ClientDataSet1totalValor: TAggregateField
      FieldName = 'totalValor'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(Valor)'
    end
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 344
    Top = 411
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 352
    Top = 467
    object ClientDataSet2Situacao: TStringField
      FieldName = 'Descricao'
    end
    object ClientDataSet2Qtd: TIntegerField
      FieldName = 'Qtd'
    end
    object ClientDataSet2Valor: TFloatField
      FieldName = 'Valor'
    end
    object ClientDataSet2totalQtd: TAggregateField
      FieldName = 'totalQtd'
      Active = True
      DisplayName = ''
      Expression = 'SUM(Qtd)'
    end
    object ClientDataSet2totalValor: TAggregateField
      FieldName = 'totalValor'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(Valor)'
    end
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet3
    Left = 48
    Top = 408
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 48
    Top = 467
    object ClientDataSet3Ano: TIntegerField
      FieldName = 'Ano'
    end
    object ClientDataSet3Qtd: TIntegerField
      FieldName = 'Qtd'
    end
    object ClientDataSet3Valor: TFloatField
      FieldName = 'Valor'
    end
    object ClientDataSet3totalQtd: TAggregateField
      FieldName = 'totalQtd'
      Active = True
      DisplayName = ''
      Expression = 'SUM(Qtd)'
    end
    object ClientDataSet3totalValor: TAggregateField
      FieldName = 'totalValor'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(Valor)'
    end
  end
  object DataSource4: TDataSource
    DataSet = ClientDataSet4
    Left = 160
    Top = 407
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 160
    Top = 468
    object ClientDataSet4Descrciao: TStringField
      FieldName = 'Funcionario'
    end
    object ClientDataSet4Qtd: TIntegerField
      FieldName = 'Qtd'
    end
    object ClientDataSet4Valor: TFloatField
      FieldName = 'Valor'
    end
    object ClientDataSet4totalQtd: TAggregateField
      FieldName = 'totalQtd'
      Active = True
      DisplayName = ''
      Expression = 'SUM(Qtd)'
    end
    object ClientDataSet4totalValor: TAggregateField
      FieldName = 'totalValor'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(Valor)'
    end
  end
  object ClientDataSet5: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1041
    Top = 373
  end
  object ClientDataSet6: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1041
    Top = 421
  end
  object ClientDataSet7: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1041
    Top = 477
  end
end
