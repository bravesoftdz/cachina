inherited FormModelosDetalhes: TFormModelosDetalhes
  Caption = 'Modelos de produtos'
  ClientHeight = 508
  ClientWidth = 672
  ExplicitWidth = 688
  ExplicitHeight = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 672
    Height = 459
    ExplicitWidth = 642
    ExplicitHeight = 494
    inherited tabPrincipal: TPageControl
      Width = 670
      Height = 457
      ExplicitWidth = 640
      ExplicitHeight = 492
      inherited TabSheet1: TTabSheet
        ExplicitWidth = 632
        ExplicitHeight = 464
        inherited grdEntidade: TDBGrid
          Width = 662
          Height = 342
        end
        inherited pnlSuperior: TPanel
          Width = 662
          ExplicitWidth = 632
        end
        inherited pnlInferior: TPanel
          Top = 407
          Width = 662
          ExplicitTop = 442
          ExplicitWidth = 632
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 632
        ExplicitHeight = 386
        object lbDescriacao: TLabel
          Left = 8
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
          Tag = 1
          Left = 88
          Top = 29
          Width = 481
          Height = 21
          TabOrder = 0
          OnKeyPress = EditPress
        end
        object cboMarca: TComboBox
          Left = 88
          Top = 64
          Width = 145
          Height = 21
          TabOrder = 1
          Text = 'cboMarca'
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 672
    ExplicitWidth = 642
  end
end
