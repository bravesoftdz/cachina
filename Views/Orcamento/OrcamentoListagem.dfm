inherited FormOrcamentoListagem: TFormOrcamentoListagem
  Caption = 'Pesquisa de or'#231'amento'
  ClientHeight = 643
  ClientWidth = 905
  FormStyle = fsMDIChild
  WindowState = wsMaximized
  OnCreate = FormCreate
  ExplicitWidth = 921
  ExplicitHeight = 681
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 905
    Height = 184
    Color = clWhite
    ParentBackground = False
    ExplicitWidth = 905
    ExplicitHeight = 184
    inherited SpeedButton2: TSpeedButton
      Left = 818
      Top = 100
      Height = 30
      Flat = True
      Font.Height = -13
      Font.Style = [fsBold, fsUnderline]
      ExplicitLeft = 818
      ExplicitTop = 100
      ExplicitHeight = 30
    end
    inherited btnSelecionar: TSpeedButton
      Left = 9
      Top = 100
      Height = 30
      Flat = True
      Font.Height = -13
      Font.Style = [fsBold, fsUnderline]
      OnClick = btnSelecionarClick
      ExplicitLeft = 9
      ExplicitTop = 100
      ExplicitHeight = 30
    end
    object btnInserir: TSpeedButton
      Left = 95
      Top = 100
      Width = 80
      Height = 30
      Caption = 'Novo'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = btnInserirClick
    end
    object btnAlterar: TSpeedButton
      Left = 198
      Top = 100
      Width = 80
      Height = 30
      Caption = 'Alterar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = btnAlterarClick
    end
    object SpeedButton1: TSpeedButton
      Left = 391
      Top = 100
      Width = 80
      Height = 30
      Caption = 'Relat'#243'rio'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      PopupMenu = PopupMenu2
    end
    object SpeedButton3: TSpeedButton
      Left = 490
      Top = 100
      Width = 80
      Height = 30
      Caption = 'Imprimir'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 679
      Top = 100
      Width = 126
      Height = 30
      Caption = 'Emitir NF-e/NFC-e'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton6: TSpeedButton
      Left = 576
      Top = 100
      Width = 80
      Height = 30
      Caption = 'Faturar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton5: TSpeedButton
      Left = 295
      Top = 100
      Width = 80
      Height = 30
      Caption = 'Retornar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object lbregistros: TLabel
      Left = 377
      Top = 159
      Width = 10
      Height = 19
      Anchors = [akTop, akRight]
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 5
      Width = 896
      Height = 89
      Caption = 'Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 127
        Top = 21
        Width = 30
        Height = 13
        Caption = 'Placa'
      end
      object Label2: TLabel
        Left = 313
        Top = 42
        Width = 43
        Height = 13
        Caption = 'Per'#237'odo'
      end
      object btnconsultar: TSpeedButton
        Left = 543
        Top = 56
        Width = 80
        Height = 22
        Caption = 'Consultar'
        OnClick = btnconsultarClick
      end
      object Label3: TLabel
        Left = 446
        Top = 22
        Width = 49
        Height = 13
        Caption = 'Situa'#231#227'o'
      end
      object Label4: TLabel
        Left = 5
        Top = 62
        Width = 39
        Height = 13
        Caption = 'Cliente'
      end
      object Label5: TLabel
        Left = 629
        Top = 21
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
      object Label6: TLabel
        Left = 6
        Top = 22
        Width = 13
        Height = 13
        Caption = 'N'#186
      end
      object Label7: TLabel
        Left = 264
        Top = 18
        Width = 41
        Height = 13
        Caption = 'Modelo'
      end
      object edtPlaca: TEdit
        Left = 163
        Top = 17
        Width = 87
        Height = 21
        TabOrder = 1
        OnKeyDown = edtNumeroKeyDown
      end
      object dateInicio: TDateTimePicker
        Left = 311
        Top = 57
        Width = 115
        Height = 22
        Cursor = crIBeam
        Date = 41709.544510381940000000
        Time = 41709.544510381940000000
        TabOrder = 5
        OnKeyDown = edtNumeroKeyDown
      end
      object dateFim: TDateTimePicker
        Left = 432
        Top = 57
        Width = 105
        Height = 22
        Cursor = crIBeam
        Date = 41709.544510474540000000
        Time = 41709.544510474540000000
        TabOrder = 6
        OnKeyDown = edtNumeroKeyDown
      end
      object cboSituacao: TComboBox
        Left = 501
        Top = 15
        Width = 122
        Height = 21
        TabOrder = 2
        OnKeyDown = edtNumeroKeyDown
        Items.Strings = (
          'Pendente'
          'Em andamento'
          'Conclu'#237'do'
          'Cancelado'
          'A Faturar'
          'Faturado'
          'Retorno'
          'Faturado e A Faturar')
      end
      object edtCliente: TEdit
        Left = 50
        Top = 58
        Width = 244
        Height = 21
        TabOrder = 4
        OnKeyDown = edtNumeroKeyDown
      end
      object cboFuncionario: TComboBox
        Left = 700
        Top = 17
        Width = 103
        Height = 21
        TabOrder = 3
        OnKeyDown = edtNumeroKeyDown
      end
      object edtNumero: TEdit
        Left = 34
        Top = 17
        Width = 87
        Height = 21
        TabOrder = 0
        OnKeyDown = edtNumeroKeyDown
      end
      object edtModelo: TEdit
        Left = 311
        Top = 15
        Width = 115
        Height = 21
        TabOrder = 7
        OnKeyDown = edtNumeroKeyDown
      end
      object chkSefaz: TCheckBox
        Left = 638
        Top = 60
        Width = 131
        Height = 17
        Caption = 'Enviado '#224' SEFAZ'
        TabOrder = 8
      end
    end
    object GroupBox4: TGroupBox
      Left = 198
      Top = 136
      Width = 155
      Height = 43
      Caption = 'Selecionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lbSelecionado: TLabel
        Left = 8
        Top = 16
        Width = 35
        Height = 19
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 7
      Top = 135
      Width = 185
      Height = 43
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object lbTotal: TLabel
        Left = 8
        Top = 16
        Width = 35
        Height = 19
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited Grid1: TDBGrid
    Top = 184
    Width = 905
    Height = 271
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PopupMenu1
    OnCellClick = Grid1CellClick
    OnDrawColumnCell = Grid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        ReadOnly = True
        Title.Caption = 'N'#186
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        ReadOnly = True
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoLoteRecebimento'
        ReadOnly = True
        Title.Caption = 'Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        ReadOnly = True
        Width = 259
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Modelo'
        ReadOnly = True
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Placa'
        ReadOnly = True
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalEntidade'
        ReadOnly = True
        Title.Caption = 'Total'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Situacao'
        ReadOnly = True
        Title.Caption = 'Situa'#231#227'o'
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Faturar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'X'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ChaveAcesso'
        Title.Caption = 'Chave NFe'
        Width = 274
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataInicio'
        Title.Caption = 'DataHoraInicio'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataEmissaoNfe'
        ReadOnly = True
        Title.Caption = 'Data NFe'
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataFaturamento'
        Title.Caption = 'Data de Fat.'
        Width = 111
        Visible = True
      end>
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 495
    Width = 905
    Height = 148
    Align = alBottom
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 521
      Top = 1
      Width = 383
      Height = 146
      Align = alClient
      DataSource = srcRecebimento
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FormaPagamento'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataVencimento'
          Title.Caption = 'Vencimento'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Situacao'
          Width = 69
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 520
      Height = 146
      Align = alLeft
      DataSource = srcItens
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Ordem'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Funcionario'
          Width = 86
          Visible = True
        end>
    end
  end
  object DBMemo1: TDBMemo [3]
    Left = 0
    Top = 455
    Width = 905
    Height = 40
    Align = alBottom
    DataField = 'Observacao'
    DataSource = srcEntidade
    ReadOnly = True
    TabOrder = 3
  end
  inherited srcEntidade: TDataSource
    AutoEdit = True
    OnDataChange = srcEntidadeDataChange
    Left = 32
    Top = 222
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 232
    object Faturar1: TMenuItem
      Caption = 'Faturar'
    end
    object VisualizarFatura1: TMenuItem
      Caption = 'Visualizar Fatura'
      OnClick = VisualizarFatura1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Retornar1: TMenuItem
      Caption = 'Retornar'
      OnClick = Retornar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Analticofinanceiro1: TMenuItem
        Caption = 'Anal'#237'tico Financeiro'
        Enabled = False
      end
      object Geral1: TMenuItem
        Caption = 'Rela'#231#227'o geral'
      end
      object Comisso1: TMenuItem
        Caption = 'Comiss'#227'o'
        Enabled = False
      end
    end
  end
  object srcItens: TDataSource
    Left = 440
    Top = 478
  end
  object srcRecebimento: TDataSource
    Left = 712
    Top = 438
  end
  object PopupMenu2: TPopupMenu
    Left = 352
    Top = 232
    object Oramentos1: TMenuItem
      Caption = 'Or'#231'amentos'
      OnClick = Oramentos1Click
    end
    object Comisses1: TMenuItem
      Caption = 'Comiss'#245'es'
      OnClick = Comisses1Click
    end
    object Produto1: TMenuItem
      Caption = 'Produtos'
    end
    object Servios1: TMenuItem
      Caption = 'Servi'#231'os'
    end
  end
end
