inherited FormUnidadeImovelDetalhes: TFormUnidadeImovelDetalhes
  Caption = 'Unidades'
  OnShow = FormShow
  ExplicitWidth = 669
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited tabPrincipal: TPageControl
      ExplicitWidth = 651
      inherited TabSheet1: TTabSheet
        Caption = 'Cadastro'
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 643
        ExplicitHeight = 399
        object Label1: TLabel
          Left = 16
          Top = 14
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
        object SpeedButton1: TSpeedButton
          Left = 185
          Top = 372
          Width = 66
          Height = 22
          Caption = 'Repetir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Label2: TLabel
          Left = 16
          Top = 376
          Width = 15
          Height = 13
          Caption = 'De'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 103
          Top = 376
          Width = 20
          Height = 13
          Caption = 'At'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 399
          Top = 11
          Width = 42
          Height = 13
          Caption = 'Projeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 16
          Top = 63
          Width = 601
          Height = 296
          DataSource = srcEntidade
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 324
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DescricaoProjeto'
              Title.Caption = 'Projeto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 174
              Visible = True
            end>
        end
        object edtDescricao: TEdit
          Left = 16
          Top = 30
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object SpinEdit1: TSpinEdit
          Left = 43
          Top = 373
          Width = 49
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 1
        end
        object SpinEdit2: TSpinEdit
          Left = 129
          Top = 373
          Width = 49
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 3
          Value = 1
        end
        object cboProjeto: TComboBox
          Left = 399
          Top = 30
          Width = 218
          Height = 21
          TabOrder = 4
        end
      end
    end
  end
end
