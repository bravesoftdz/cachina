inherited FormCargoDetalhes: TFormCargoDetalhes
  Caption = 'Cargos'
  ExplicitWidth = 743
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited tabPrincipal: TPageControl
      inherited TabSheet1: TTabSheet
        object Label1: TLabel [0]
          Left = 304
          Top = 192
          Width = 31
          Height = 13
          Caption = 'Label1'
        end
        inherited grdEntidade: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 603
              Visible = True
            end>
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 717
        ExplicitHeight = 399
        object Label2: TLabel
          Left = 16
          Top = 32
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
        object edtDescricao: TEdit
          Left = 80
          Top = 29
          Width = 505
          Height = 21
          TabOrder = 0
        end
        object chkProducao: TCheckBox
          Left = 80
          Top = 80
          Width = 97
          Height = 17
          Caption = 'Produ'#231#227'o'
          TabOrder = 1
        end
      end
    end
  end
end
