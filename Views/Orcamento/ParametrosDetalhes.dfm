object FormParametrosDetalhes: TFormParametrosDetalhes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Parametros do sistema'
  ClientHeight = 502
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 665
    Height = 461
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 502
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 663
      Height = 459
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'Venda'
        ImageIndex = 1
        ExplicitHeight = 472
        object Label1: TLabel
          Left = 97
          Top = 20
          Width = 112
          Height = 13
          Caption = 'CFOP padr'#227'o de venda'
        end
        object Label2: TLabel
          Left = 10
          Top = 52
          Width = 199
          Height = 13
          Caption = 'CFOP padr'#227'o venda  para fora do estado'
        end
        object CFOPPADRAOVENDA: TComboBox
          Left = 213
          Top = 15
          Width = 148
          Height = 21
          MaxLength = 4
          TabOrder = 0
        end
        object CFOPPADRAOVENDAFORAESTADO: TComboBox
          Left = 213
          Top = 45
          Width = 148
          Height = 21
          MaxLength = 4
          TabOrder = 1
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Compra'
        ImageIndex = 2
        ExplicitHeight = 472
        object Label3: TLabel
          Left = 114
          Top = 17
          Width = 117
          Height = 13
          Caption = 'CFOP padr'#227'o de compra'
        end
        object Label4: TLabel
          Left = 42
          Top = 47
          Width = 191
          Height = 13
          Caption = 'CFOP padr'#227'o compra de fora do estado'
        end
        object Label5: TLabel
          Left = 102
          Top = 74
          Width = 131
          Height = 13
          Caption = 'CFOP padr'#227'o de devolu'#231#227'o'
        end
        object Label6: TLabel
          Left = 3
          Top = 102
          Width = 230
          Height = 13
          Caption = 'CFOP padr'#227'o de devolu'#231#227'o para fora do estado'
        end
        object CFOPPADRAOCOMPRA: TComboBox
          Left = 237
          Top = 14
          Width = 148
          Height = 21
          MaxLength = 4
          TabOrder = 0
        end
        object CFOPPADRAOCOMPRAFORAESTADO: TComboBox
          Left = 237
          Top = 44
          Width = 148
          Height = 21
          MaxLength = 4
          TabOrder = 1
        end
        object CFOPPADRAODEVOLUCAO: TComboBox
          Left = 237
          Top = 69
          Width = 148
          Height = 21
          MaxLength = 4
          TabOrder = 2
        end
        object CFOPPADRAODEVOLUCAOFORAESTADO: TComboBox
          Left = 237
          Top = 96
          Width = 148
          Height = 21
          MaxLength = 4
          TabOrder = 3
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Financeiro'
        ImageIndex = 3
        ExplicitHeight = 472
      end
      object TabSheet5: TTabSheet
        Caption = 'Fiscal'
        ImageIndex = 4
        ExplicitHeight = 472
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 665
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 655
    object Button1: TButton
      Left = 584
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
