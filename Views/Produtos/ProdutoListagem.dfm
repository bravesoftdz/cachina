inherited FormProdutoListagem: TFormProdutoListagem
  BorderStyle = bsDialog
  Caption = 'Produtos'
  ClientHeight = 280
  ClientWidth = 685
  ExplicitWidth = 691
  ExplicitHeight = 308
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 685
    Height = 70
    ExplicitWidth = 685
    ExplicitHeight = 70
    inherited SpeedButton2: TSpeedButton
      Left = 600
      Top = 42
      Font.Height = -13
      ExplicitLeft = 600
      ExplicitTop = 42
    end
    inherited btnSelecionar: TSpeedButton
      Left = 428
      Top = 42
      Caption = 'Selecionar'
      Font.Height = -13
      OnClick = btnSelecionarClick
      ExplicitLeft = 428
      ExplicitTop = 42
    end
    object lbdescricao: TLabel
      Left = 10
      Top = 51
      Width = 64
      Height = 13
      Caption = 'lbdescricao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 514
      Top = 42
      Width = 80
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 209
      Top = 6
      Width = 80
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object edtdescricao: TEdit
      Left = 8
      Top = 7
      Width = 185
      Height = 21
      TabOrder = 0
    end
  end
  inherited Grid1: TDBGrid
    Top = 70
    Width = 685
    Height = 210
  end
end
