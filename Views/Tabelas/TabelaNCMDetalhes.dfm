inherited FormTabelaNCMDetalhes: TFormTabelaNCMDetalhes
  Caption = 'Tabela NCM'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited tabPrincipal: TPageControl
      ActivePage = TabSheet2
      inherited TabSheet1: TTabSheet
        inherited grdEntidade: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'CodigoNCM'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 523
              Visible = True
            end>
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 643
        ExplicitHeight = 399
        object Label1: TLabel
          Left = 40
          Top = 13
          Width = 65
          Height = 13
          Caption = 'C'#243'digo NCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 40
          Top = 61
          Width = 55
          Height = 13
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtCodigoNCM: TEdit
          Left = 40
          Top = 34
          Width = 148
          Height = 21
          TabOrder = 0
        end
        object memoDescricao: TMemo
          Left = 40
          Top = 80
          Width = 577
          Height = 89
          TabOrder = 1
        end
      end
    end
  end
end
