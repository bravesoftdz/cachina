inherited FormTabelaCIDDetalhes: TFormTabelaCIDDetalhes
  Caption = 'Tabela CID'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited tabPrincipal: TPageControl
      inherited TabSheet1: TTabSheet
        inherited grdEntidade: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'Descricao'
              Title.Caption = 'Descri'#231#227'o'
              Width = 591
              Visible = True
            end>
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 643
        ExplicitHeight = 399
        object lbDescricao: TLabel
          Left = 9
          Top = 38
          Width = 46
          Height = 13
          Caption = 'Descricao'
        end
        object Label1: TLabel
          Left = 61
          Top = 18
          Width = 98
          Height = 11
          Caption = 'Obs: X.00 - Descricao...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtDescricao: TEdit
          Left = 61
          Top = 35
          Width = 554
          Height = 21
          TabOrder = 0
          OnKeyPress = EditPress
        end
      end
    end
  end
end
