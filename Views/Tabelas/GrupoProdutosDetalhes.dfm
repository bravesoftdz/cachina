inherited FormGrupoProdutosDetalhes: TFormGrupoProdutosDetalhes
  Caption = 'Grupo de produtos'
  FormStyle = fsStayOnTop
  ExplicitWidth = 656
  ExplicitHeight = 516
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
        object Familia: TLabel
          Left = 8
          Top = 64
          Width = 65
          Height = 13
          Caption = 'CodigoFamilia'
        end
        object Label1: TLabel
          Left = 3
          Top = 35
          Width = 46
          Height = 13
          Caption = 'Descricao'
        end
        object edtDescriacao: TEdit
          Tag = 1
          Left = 88
          Top = 32
          Width = 441
          Height = 21
          TabOrder = 0
          OnKeyPress = EditPress
        end
        object cboCodigoFamilia: TComboBox
          Left = 88
          Top = 64
          Width = 441
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
end
