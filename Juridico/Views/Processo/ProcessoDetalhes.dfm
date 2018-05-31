inherited FormProcessoDetalhes: TFormProcessoDetalhes
  Caption = 'Processo'
  ClientHeight = 547
  ClientWidth = 1059
  ExplicitWidth = 1075
  ExplicitHeight = 585
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1059
    Height = 498
    ExplicitWidth = 1059
    ExplicitHeight = 498
    inherited tabPrincipal: TPageControl
      Width = 1057
      Height = 496
      ExplicitWidth = 1057
      ExplicitHeight = 496
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1049
        ExplicitHeight = 468
        inherited grdEntidade: TDBGrid
          Width = 1049
          Height = 397
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Numero'
              Width = 154
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataInicio'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeCliente'
              Title.Caption = 'Cliente'
              Width = 242
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeContrario'
              Title.Caption = 'Contr'#225'rio'
              Width = 205
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeAdvogado'
              Title.Caption = 'Advogado'
              Width = 210
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeObjeto'
              Title.Caption = 'Objeto'
              Width = 223
              Visible = True
            end>
        end
        inherited pnlSuperior: TPanel
          Width = 1049
          ExplicitWidth = 1049
        end
        inherited pnlInferior: TPanel
          Top = 446
          Width = 1049
          ExplicitTop = 446
          ExplicitWidth = 1049
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1049
        ExplicitHeight = 468
        object lbValorFinal: TLabel
          Left = 202
          Top = 341
          Width = 55
          Height = 13
          Caption = 'ValorFinal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbValorProvisionado: TLabel
          Left = 202
          Top = 310
          Width = 102
          Height = 13
          Caption = 'ValorProvisionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbValorCausa: TLabel
          Left = 5
          Top = 310
          Width = 63
          Height = 13
          Caption = 'ValorCausa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbValorPedido: TLabel
          Left = 5
          Top = 342
          Width = 67
          Height = 13
          Caption = 'ValorPedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCodigoContrario: TLabel
          Left = 5
          Top = 115
          Width = 53
          Height = 13
          Caption = 'Contrario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCodigoAdvogado: TLabel
          Left = 5
          Top = 83
          Width = 57
          Height = 13
          Caption = 'Advogado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCodigoCliente: TLabel
          Left = 5
          Top = 51
          Width = 39
          Height = 13
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbNumero: TLabel
          Left = 5
          Top = 21
          Width = 44
          Height = 13
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCodigoFaseAtual: TLabel
          Left = 5
          Top = 211
          Width = 59
          Height = 13
          Caption = 'Fase Atual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCodigoTipoAcao: TLabel
          Left = 5
          Top = 179
          Width = 72
          Height = 13
          Caption = 'Tipo da A'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCodigoObjeto: TLabel
          Left = 5
          Top = 147
          Width = 38
          Height = 13
          Caption = 'Objeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCodigoAreaJuridica: TLabel
          Left = 432
          Top = 19
          Width = 74
          Height = 13
          Caption = #193'rea Jur'#237'dica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCodigoDistribuicao: TLabel
          Left = 5
          Top = 244
          Width = 67
          Height = 13
          Caption = 'Distribui'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDataInicio: TLabel
          Left = 255
          Top = 19
          Width = 58
          Height = 13
          Caption = 'DataInicio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbParticipacao: TLabel
          Left = 427
          Top = 341
          Width = 70
          Height = 13
          Caption = 'Participacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCodigoResultado: TLabel
          Left = 5
          Top = 277
          Width = 57
          Height = 13
          Caption = 'Resultado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDataEncerramento: TLabel
          Left = 427
          Top = 277
          Width = 90
          Height = 13
          Caption = 'Data de Encerro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbRiscoPerda: TLabel
          Left = 427
          Top = 310
          Width = 63
          Height = 13
          Caption = 'RiscoPerda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 616
          Top = 16
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 616
          Top = 49
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 616
          Top = 112
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 616
          Top = 79
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 616
          Top = 239
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 616
          Top = 206
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton6Click
        end
        object SpeedButton7: TSpeedButton
          Left = 616
          Top = 176
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton7Click
        end
        object SpeedButton8: TSpeedButton
          Left = 616
          Top = 143
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton8Click
        end
        object SpeedButton9: TSpeedButton
          Left = 401
          Top = 273
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton9Click
        end
        object edtValorCausa: TEdit
          Left = 83
          Top = 305
          Width = 100
          Height = 21
          TabOrder = 0
        end
        object edtValorPedido: TEdit
          Left = 83
          Top = 335
          Width = 100
          Height = 21
          TabOrder = 1
        end
        object edtValorProvisionado: TEdit
          Left = 310
          Top = 305
          Width = 100
          Height = 21
          TabOrder = 2
        end
        object edtValorFinal: TEdit
          Left = 310
          Top = 335
          Width = 100
          Height = 21
          TabOrder = 3
        end
        object cboCodigoAreaJuridica: TDBLookupComboBox
          Left = 512
          Top = 16
          Width = 100
          Height = 21
          TabOrder = 4
        end
        object cboCodigoDistribuicao: TDBLookupComboBox
          Left = 83
          Top = 240
          Width = 530
          Height = 21
          TabOrder = 5
        end
        object cboCodigoFaseAtual: TDBLookupComboBox
          Left = 83
          Top = 208
          Width = 530
          Height = 21
          TabOrder = 6
        end
        object cboCodigoTipoAcao: TDBLookupComboBox
          Left = 83
          Top = 176
          Width = 530
          Height = 21
          TabOrder = 7
        end
        object cboCodigoObjeto: TDBLookupComboBox
          Left = 83
          Top = 144
          Width = 530
          Height = 21
          TabOrder = 8
        end
        object cboCodigoAdvogado: TDBLookupComboBox
          Left = 83
          Top = 80
          Width = 530
          Height = 21
          TabOrder = 9
        end
        object cboCodigoCliente: TDBLookupComboBox
          Left = 83
          Top = 48
          Width = 530
          Height = 21
          TabOrder = 10
        end
        object edtNumero: TEdit
          Left = 83
          Top = 16
          Width = 167
          Height = 21
          TabOrder = 11
        end
        object cboCodigoContrario: TDBLookupComboBox
          Left = 83
          Top = 112
          Width = 530
          Height = 21
          TabOrder = 12
        end
        object cboCodigoResultado: TDBLookupComboBox
          Left = 83
          Top = 273
          Width = 316
          Height = 21
          TabOrder = 13
        end
        object edtParticipacao: TEdit
          Left = 527
          Top = 335
          Width = 100
          Height = 21
          TabOrder = 14
        end
        object dateDataInicio: TDateTimePicker
          Left = 324
          Top = 14
          Width = 101
          Height = 21
          Date = 41788.874003148150000000
          Time = 41788.874003148150000000
          TabOrder = 15
        end
        object dateDataEncerramento: TDateTimePicker
          Left = 527
          Top = 273
          Width = 100
          Height = 21
          Date = 41788.874003148150000000
          Time = 41788.874003148150000000
          TabOrder = 16
        end
        object edtRiscoPerda: TEdit
          Left = 527
          Top = 305
          Width = 100
          Height = 21
          TabOrder = 17
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Observa'#231#227'o'
        ImageIndex = 2
        object memoObservacao: TMemo
          Left = 0
          Top = 0
          Width = 1049
          Height = 468
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitTop = 7
          ExplicitWidth = 1038
          ExplicitHeight = 454
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1059
    ExplicitWidth = 1059
    inherited btnSair: TBitBtn
      Left = 974
      ExplicitLeft = 974
    end
  end
end
