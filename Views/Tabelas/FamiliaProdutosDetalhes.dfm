inherited FormFamiliaProdutosDetalhes: TFormFamiliaProdutosDetalhes
  Caption = 'Familia de produtos'
  FormStyle = fsStayOnTop
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited tabPrincipal: TPageControl
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 630
        ExplicitHeight = 399
        object Label1: TLabel
          Left = 8
          Top = 40
          Width = 46
          Height = 13
          Caption = 'Descricao'
        end
        object edtDescricao: TEdit
          Tag = 1
          Left = 88
          Top = 32
          Width = 481
          Height = 21
          TabOrder = 0
          OnKeyPress = EditPress
        end
      end
    end
  end
end
