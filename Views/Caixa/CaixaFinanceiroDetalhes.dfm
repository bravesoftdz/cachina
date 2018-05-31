inherited FormCaixaFinanceiroDetalhes: TFormCaixaFinanceiroDetalhes
  Caption = 'Caixa Financeiro'
  ClientHeight = 543
  ClientWidth = 927
  ExplicitWidth = 943
  ExplicitHeight = 581
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 927
    Height = 494
    ExplicitWidth = 927
    ExplicitHeight = 494
    inherited tabPrincipal: TPageControl
      Width = 925
      Height = 492
      ExplicitWidth = 925
      ExplicitHeight = 492
      inherited TabSheet1: TTabSheet
        ExplicitWidth = 917
        ExplicitHeight = 464
        inherited grdEntidade: TDBGrid
          Top = 67
          Width = 917
          Height = 375
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CodigoConta'
              Title.Caption = 'Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataHora'
              Title.Caption = 'Data'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Observacao'
              Title.Caption = 'Hist'#243'rico'
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipo'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorFormatado'
              Title.Caption = 'Valor'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Caixa'
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Categoria'
              Width = 148
              Visible = True
            end>
        end
        inherited pnlSuperior: TPanel
          Width = 917
          Height = 67
          ExplicitWidth = 917
          ExplicitHeight = 67
          inherited grpPesquisa: TGroupBox
            Left = 4
            Top = -3
            Width = 901
            Height = 64
            ExplicitLeft = 4
            ExplicitTop = -3
            ExplicitWidth = 901
            ExplicitHeight = 64
            object Label11: TLabel [0]
              Left = 716
              Top = 13
              Width = 24
              Height = 13
              Caption = 'Tipo'
            end
            object Label9: TLabel [1]
              Left = 11
              Top = 13
              Width = 50
              Height = 13
              Caption = 'Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel [2]
              Left = 190
              Top = 13
              Width = 60
              Height = 13
              Caption = 'Cod. Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel [3]
              Left = 484
              Top = 13
              Width = 43
              Height = 13
              Caption = 'Per'#237'odo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel [4]
              Left = 305
              Top = 13
              Width = 31
              Height = 13
              Caption = 'Caixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            inherited edtValorPesquisa: TEdit
              Left = 7
              Top = 27
              Width = 177
              ExplicitLeft = 7
              ExplicitTop = 27
              ExplicitWidth = 177
            end
            inherited btnPesquisar: TButton
              Left = 823
              Top = 25
              ExplicitLeft = 823
              ExplicitTop = 25
            end
            object cboTipoPesquisa: TComboBox
              Left = 715
              Top = 26
              Width = 102
              Height = 21
              Style = csDropDownList
              TabOrder = 2
              Items.Strings = (
                'CR'#201'DITO'
                'D'#201'BITO')
            end
            object edtConta: TEdit
              Left = 190
              Top = 27
              Width = 91
              Height = 21
              TabOrder = 3
              OnKeyPress = EditPress
            end
          end
          object dateInicio: TDateTimePicker
            Left = 487
            Top = 24
            Width = 97
            Height = 22
            Cursor = crIBeam
            Date = 41709.544510381940000000
            Time = 41709.544510381940000000
            TabOrder = 1
          end
          object dateFim: TDateTimePicker
            Left = 600
            Top = 23
            Width = 97
            Height = 22
            Cursor = crIBeam
            Date = 41709.544510474540000000
            Time = 41709.544510474540000000
            TabOrder = 3
          end
          object cboCaixaPesquisa: TComboBox
            Left = 300
            Top = 24
            Width = 171
            Height = 21
            Style = csDropDownList
            TabOrder = 2
          end
        end
        inherited pnlInferior: TPanel
          Top = 442
          Width = 917
          ExplicitTop = 442
          ExplicitWidth = 917
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 917
        ExplicitHeight = 464
        object Label1: TLabel
          Left = 3
          Top = 19
          Width = 24
          Height = 13
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 56
          Width = 29
          Height = 13
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 3
          Top = 97
          Width = 27
          Height = 13
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 3
          Top = 130
          Width = 65
          Height = 13
          Caption = 'Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 3
          Top = 168
          Width = 90
          Height = 13
          Caption = 'Caixa financeiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 3
          Top = 211
          Width = 50
          Height = 13
          Caption = 'Hist'#243'rico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 3
          Top = 249
          Width = 55
          Height = 13
          Caption = 'Categoria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtValor: TEdit
          Left = 100
          Top = 54
          Width = 186
          Height = 21
          TabOrder = 1
        end
        object cboTipo: TComboBox
          Left = 100
          Top = 16
          Width = 186
          Height = 21
          TabOrder = 0
          Items.Strings = (
            'CR'#201'DITO'
            'D'#201'BITO')
        end
        object cboFuncionario: TComboBox
          Left = 100
          Top = 127
          Width = 186
          Height = 21
          DropDownCount = 20
          TabOrder = 3
        end
        object dateDataHora: TDateTimePicker
          Left = 100
          Top = 89
          Width = 113
          Height = 21
          Date = 41778.467957268520000000
          Time = 41778.467957268520000000
          TabOrder = 2
        end
        object cboCaixa: TComboBox
          Left = 100
          Top = 165
          Width = 186
          Height = 21
          TabOrder = 4
        end
        object edtObservacao: TEdit
          Left = 100
          Top = 203
          Width = 501
          Height = 21
          TabOrder = 5
          OnKeyPress = EditPress
        end
        object cboCategoria: TComboBox
          Left = 100
          Top = 246
          Width = 501
          Height = 21
          DropDownCount = 20
          TabOrder = 6
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 927
    ExplicitWidth = 927
  end
  inherited srcEntidade: TDataSource
    Left = 120
    Top = 398
  end
  inherited srcPesquisa: TDataSource
    Top = 342
  end
end
