inherited FormSaidaDetalhes: TFormSaidaDetalhes
  Caption = 'Sa'#237'da'
  ClientHeight = 513
  ClientWidth = 819
  FormStyle = fsStayOnTop
  ExplicitWidth = 835
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 819
    Height = 464
    ExplicitWidth = 819
    ExplicitHeight = 464
    object lbData: TLabel
      Left = 67
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCodigoFornecedor: TLabel
      Left = 175
      Top = 12
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
    object Label1: TLabel
      Left = 7
      Top = 11
      Width = 38
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 55
      Width = 54
      Height = 13
      Caption = 'Aplica'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object gpbItens: TGroupBox
      Left = 7
      Top = 97
      Width = 799
      Height = 96
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label6: TLabel
        Left = 436
        Top = 19
        Width = 20
        Height = 13
        Caption = 'Qtd'
      end
      object Label10: TLabel
        Left = 55
        Top = 19
        Width = 38
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label11: TLabel
        Left = 104
        Top = 19
        Width = 45
        Height = 13
        Caption = 'Produto'
      end
      object Label9: TLabel
        Left = 9
        Top = 19
        Width = 28
        Height = 13
        Caption = 'Item'
      end
      object Label2: TLabel
        Left = 699
        Top = 19
        Width = 45
        Height = 13
        Caption = 'Estoque'
      end
      object Label12: TLabel
        Left = 625
        Top = 19
        Width = 29
        Height = 13
        Caption = 'Valor'
        Visible = False
      end
      object Label5: TLabel
        Left = 511
        Top = 19
        Width = 28
        Height = 13
        Caption = 'Unid.'
      end
      object Label7: TLabel
        Left = 573
        Top = 19
        Width = 28
        Height = 13
        Caption = 'Coef.'
      end
      object BitBtn1: TSpeedButton
        Left = 600
        Top = 65
        Width = 90
        Height = 25
        Caption = '&Adicionar'
        OnClick = BitBtn1Click
      end
      object CornerButton1: TSpeedButton
        Left = 699
        Top = 65
        Width = 95
        Height = 25
        Caption = '&Remover'
      end
      object edtCodigoItem: TEdit
        Left = 55
        Top = 38
        Width = 41
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 1
        OnChange = edtCodigoItemChange
      end
      object edtQuantidade: TEdit
        Left = 439
        Top = 38
        Width = 65
        Height = 21
        NumbersOnly = True
        TabOrder = 3
      end
      object edtOrdem: TEdit
        Left = 8
        Top = 38
        Width = 41
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 0
      end
      object cboProduto: TDBLookupComboBox
        Left = 104
        Top = 38
        Width = 326
        Height = 21
        DropDownRows = 15
        DropDownWidth = 400
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = srcProdutos
        TabOrder = 2
        OnCloseUp = cboProdutoCloseUp
      end
      object cboEstoque: TDBLookupComboBox
        Left = 699
        Top = 38
        Width = 95
        Height = 21
        DropDownRows = 15
        DropDownWidth = 200
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = srcEstoque
        TabOrder = 7
        OnCloseUp = cboProdutoCloseUp
      end
      object edtValor: TEdit
        Left = 622
        Top = 38
        Width = 68
        Height = 21
        Cursor = crIBeam
        NumbersOnly = True
        TabOrder = 6
        Visible = False
      end
      object cboUnidadeMedida: TComboBox
        Left = 511
        Top = 38
        Width = 51
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edtFator: TEdit
        Left = 573
        Top = 38
        Width = 41
        Height = 21
        NumbersOnly = True
        TabOrder = 5
      end
    end
    object dateData: TDateTimePicker
      Left = 67
      Top = 27
      Width = 100
      Height = 22
      Cursor = crIBeam
      Date = 41733.672745023150000000
      Time = 41733.672745023150000000
      TabOrder = 1
    end
    object cboCodigoFuncionario: TDBLookupComboBox
      Left = 173
      Top = 27
      Width = 366
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = srcfuncionario
      TabOrder = 2
    end
    object grdItens: TDBGrid
      Left = 7
      Top = 199
      Width = 799
      Height = 250
      DataSource = srcItens
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = grdItensCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Ordem'
          Title.Caption = 'Item'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 611
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Width = 75
          Visible = True
        end>
    end
    object edtCodigo: TEdit
      Left = 7
      Top = 27
      Width = 52
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edtAplicacao: TEdit
      Left = 7
      Top = 70
      Width = 799
      Height = 21
      TabOrder = 3
    end
  end
  inherited Panel2: TPanel
    Width = 819
    ExplicitWidth = 819
    inherited btnInserir: TSpeedButton
      Left = 9
      Top = 2
      ExplicitLeft = 9
      ExplicitTop = 2
    end
    inherited btnAlterar: TSpeedButton
      Left = 98
      ExplicitLeft = 98
    end
    inherited btnCancelar: TSpeedButton
      Left = 196
      Top = 2
      ExplicitLeft = 196
      ExplicitTop = 2
    end
    inherited btnExcluir: TSpeedButton
      Left = 301
      Top = 2
      ExplicitLeft = 301
      ExplicitTop = 2
    end
    inherited btnConfirmar: TSpeedButton
      Left = 402
      Top = 2
      ExplicitLeft = 402
      ExplicitTop = 2
    end
    inherited btnSair: TSpeedButton
      Left = 743
      Top = 2
      ExplicitLeft = 743
      ExplicitTop = 2
    end
    object CornerButton2: TSpeedButton
      Left = 512
      Top = 2
      Width = 83
      Height = 42
      Caption = 'Pesquisa'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = CornerButton2Click
    end
  end
  inherited srcEntidade: TDataSource
    Left = 424
    Top = 366
  end
  object srcItens: TDataSource
    AutoEdit = False
    Left = 496
    Top = 366
  end
  object srcfuncionario: TDataSource
    AutoEdit = False
    Left = 576
    Top = 366
  end
  object srcProdutos: TDataSource
    AutoEdit = False
    Left = 664
    Top = 366
  end
  object srcEstoque: TDataSource
    AutoEdit = False
    Left = 736
    Top = 366
  end
end
