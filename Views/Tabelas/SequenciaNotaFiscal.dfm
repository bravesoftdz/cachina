inherited FormSequenciaNotaFiscal: TFormSequenciaNotaFiscal
  Caption = 'FormSequenciaNotaFiscal'
  ExplicitWidth = 743
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited tabPrincipal: TPageControl
      inherited TabSheet1: TTabSheet
        inherited grdEntidade: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'Sequencia'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Especie'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Serie'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dispositivo'
              Visible = True
            end>
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitTop = 32
        ExplicitWidth = 717
        ExplicitHeight = 399
        object Label2: TLabel
          Left = 19
          Top = 32
          Width = 58
          Height = 13
          Caption = 'Sequencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 243
          Top = 31
          Width = 42
          Height = 13
          Caption = 'Especie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 443
          Top = 30
          Width = 28
          Height = 13
          Caption = 'serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Sequencia: TEdit
          Left = 83
          Top = 27
          Width = 97
          Height = 21
          TabOrder = 0
        end
        object Especie: TEdit
          Left = 309
          Top = 28
          Width = 97
          Height = 21
          TabOrder = 1
        end
        object Serie: TEdit
          Left = 509
          Top = 27
          Width = 97
          Height = 21
          TabOrder = 2
        end
      end
    end
  end
end
