inherited FormParametrosPrecoVendaDetalhes: TFormParametrosPrecoVendaDetalhes
  Caption = 'Parametros pre'#231'o de venda'
  ExplicitWidth = 743
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited tabPrincipal: TPageControl
      ActivePage = TabSheet2
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 717
        ExplicitHeight = 399
        object Label8: TLabel
          Left = 8
          Top = 48
          Width = 58
          Height = 16
          Caption = 'Imposto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 5
          Top = 79
          Width = 83
          Height = 16
          Caption = 'Taxa Cart'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 5
          Top = 108
          Width = 58
          Height = 16
          Caption = 'Comis'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 164
          Top = 48
          Width = 118
          Height = 16
          Caption = 'Desconto Maximo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 164
          Top = 79
          Width = 69
          Height = 16
          Caption = 'Custo fixo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 164
          Top = 108
          Width = 41
          Height = 16
          Caption = 'Lucro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 364
          Top = 108
          Width = 59
          Height = 16
          Caption = 'Mark-up:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 8
          Top = 14
          Width = 68
          Height = 16
          Caption = 'Descric'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 493
          Top = 101
          Width = 23
          Height = 22
        end
        object edtParamImpostoSimples: TEdit
          Left = 94
          Top = 40
          Width = 57
          Height = 21
          TabOrder = 0
          Text = '2,5'
        end
        object edtParamTaxa: TEdit
          Left = 94
          Top = 70
          Width = 57
          Height = 21
          TabOrder = 1
          Text = '4,7'
        end
        object edtParamComissao: TEdit
          Left = 94
          Top = 100
          Width = 57
          Height = 21
          TabOrder = 2
          Text = '5'
        end
        object edtParamDesconto: TEdit
          Left = 288
          Top = 40
          Width = 57
          Height = 21
          TabOrder = 3
          Text = '10'
        end
        object edtParamCustoFixo: TEdit
          Left = 288
          Top = 70
          Width = 57
          Height = 21
          TabOrder = 4
          Text = '7'
        end
        object edtParamLucro: TEdit
          Left = 288
          Top = 100
          Width = 57
          Height = 21
          TabOrder = 5
          Text = '8'
        end
        object edtMarkup: TEdit
          Left = 429
          Top = 100
          Width = 57
          Height = 21
          TabOrder = 6
          Text = '37,2'
        end
        object edtDescricao: TEdit
          Left = 94
          Top = 13
          Width = 403
          Height = 21
          TabOrder = 7
          OnKeyPress = EditPress
        end
      end
    end
  end
end
