inherited FormConvenioDetalhes: TFormConvenioDetalhes
  Caption = ',,,'
  ExplicitWidth = 669
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
              FieldName = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 520
              Visible = True
            end>
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 630
        ExplicitHeight = 399
        object lbDescricao: TLabel
          Left = 8
          Top = 32
          Width = 46
          Height = 13
          Caption = 'Descricao'
        end
        object edtDescricao: TEdit
          Left = 88
          Top = 32
          Width = 521
          Height = 21
          TabOrder = 0
        end
      end
    end
  end
  inherited Panel2: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
  end
end