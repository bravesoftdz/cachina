object FormEmissorNfe: TFormEmissorNfe
  Left = 269
  Top = 149
  ClientHeight = 605
  ClientWidth = 1217
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 605
    Align = alLeft
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 295
      Height = 603
      Align = alClient
      Caption = 'Configura'#231#245'es'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 291
        Height = 586
        ActivePage = TabSheet4
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Certificado'
          object GroupBox2: TGroupBox
            Left = 1
            Top = 3
            Width = 265
            Height = 144
            Caption = 'Certificado'
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 16
              Width = 41
              Height = 13
              Caption = 'Caminho'
            end
            object Label2: TLabel
              Left = 8
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object sbtnCaminhoCert: TSpeedButton
              Left = 235
              Top = 32
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnCaminhoCertClick
            end
            object Label25: TLabel
              Left = 8
              Top = 96
              Width = 79
              Height = 13
              Caption = 'N'#250'mero de S'#233'rie'
            end
            object sbtnGetCert: TSpeedButton
              Left = 235
              Top = 110
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
            end
            object edtCaminho: TEdit
              Left = 8
              Top = 32
              Width = 225
              Height = 21
              TabOrder = 0
            end
            object edtSenha: TEdit
              Left = 8
              Top = 72
              Width = 249
              Height = 21
              PasswordChar = '*'
              TabOrder = 1
            end
            object edtNumSerie: TEdit
              Left = 4
              Top = 114
              Width = 225
              Height = 21
              TabOrder = 2
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Geral'
          ImageIndex = 1
          object Label44: TLabel
            Left = 156
            Top = 426
            Width = 57
            Height = 13
            Caption = 'Token/CSC'
          end
          object Label45: TLabel
            Left = 139
            Top = 402
            Width = 75
            Height = 13
            Caption = 'IdToken/IdCSC'
          end
          object Label46: TLabel
            Left = 11
            Top = 312
            Width = 121
            Height = 13
            Caption = 'Vers'#227'o Documento Fiscal'
          end
          object Label47: TLabel
            Left = 9
            Top = 287
            Width = 123
            Height = 13
            Caption = 'Modelo Documento Fiscal'
          end
          object Label48: TLabel
            Left = 9
            Top = 262
            Width = 86
            Height = 13
            Caption = 'Forma de Emiss'#227'o'
          end
          object Label49: TLabel
            Left = 9
            Top = 233
            Width = 68
            Height = 13
            Caption = 'Formato Alerta'
          end
          object Label54: TLabel
            Left = 14
            Top = 339
            Width = 67
            Height = 13
            Caption = 'SSL Crypt  Lib'
          end
          object Label55: TLabel
            Left = 103
            Top = 339
            Width = 63
            Height = 13
            Caption = 'SSL Http  Lib'
          end
          object Label56: TLabel
            Left = 196
            Top = 339
            Width = 37
            Height = 13
            Caption = 'SSL Lib'
          end
          object Label57: TLabel
            Left = 14
            Top = 379
            Width = 65
            Height = 13
            Caption = 'SSL XML  Lib'
          end
          object Label58: TLabel
            Left = 14
            Top = 419
            Width = 47
            Height = 13
            Caption = 'SSL Type'
          end
          object GroupBox3: TGroupBox
            Left = 1
            Top = -1
            Width = 265
            Height = 202
            Caption = 'Geral'
            TabOrder = 0
            object Label7: TLabel
              Left = 13
              Top = 136
              Width = 57
              Height = 13
              Caption = 'Logo Marca'
            end
            object sbtnLogoMarca: TSpeedButton
              Left = 240
              Top = 148
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnLogoMarcaClick
            end
            object edtLogoMarca: TEdit
              Left = 13
              Top = 152
              Width = 228
              Height = 21
              TabOrder = 0
            end
            object ckSalvar: TCheckBox
              Left = 25
              Top = 179
              Width = 209
              Height = 15
              Caption = 'Salvar Arquivos de Envio e Resposta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object rgTipoDanfe: TRadioGroup
              Left = 8
              Top = 16
              Width = 249
              Height = 49
              Caption = 'DANFE'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Retrato'
                'Paisagem')
              TabOrder = 2
            end
            object rgFormaEmissao: TRadioGroup
              Left = 13
              Top = 73
              Width = 249
              Height = 63
              Caption = 'Forma de Emiss'#227'o'
              Columns = 3
              ItemIndex = 0
              Items.Strings = (
                'Normal'
                'Conting'#234'ncia'
                'SCAN'
                'DPEC'
                'FSDA'
                'SVCAN'
                'SVCRS '
                'SVCSP'
                'OffLine')
              TabOrder = 3
            end
          end
          object cbxRetirarAcentos: TCheckBox
            Left = 9
            Top = 205
            Width = 89
            Height = 17
            Caption = 'Retirar Acentos'
            TabOrder = 1
          end
          object CheckBox1: TCheckBox
            Left = 104
            Top = 207
            Width = 159
            Height = 15
            Caption = 'Salvar Arquivos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edtToken: TEdit
            Left = 219
            Top = 423
            Width = 61
            Height = 21
            TabOrder = 3
          end
          object edtIdToken: TEdit
            Left = 219
            Top = 397
            Width = 61
            Height = 21
            TabOrder = 4
          end
          object cbVersaoDF: TComboBox
            Left = 138
            Top = 309
            Width = 133
            Height = 21
            TabOrder = 5
          end
          object cbModeloDF: TComboBox
            Left = 138
            Top = 282
            Width = 134
            Height = 21
            TabOrder = 6
          end
          object cbFormaEmissao: TComboBox
            Left = 104
            Top = 255
            Width = 168
            Height = 21
            TabOrder = 7
          end
          object edtFormatoAlerta: TEdit
            Left = 104
            Top = 228
            Width = 168
            Height = 21
            TabOrder = 8
          end
          object cboSSLCryptLib: TComboBox
            Left = 12
            Top = 358
            Width = 86
            Height = 21
            TabOrder = 9
            Items.Strings = (
              'cryWinCrypt'
              'cryCapicom'
              'cryNone'
              'cryOpenSSL'
              'cryWinCrypt')
          end
          object cboSSLHTTPLib: TComboBox
            Left = 104
            Top = 358
            Width = 86
            Height = 21
            TabOrder = 10
            Items.Strings = (
              'httpIndy'
              'httpNone'
              'httpOpenSSL'
              'httpWinHttp'
              'httpWinINet')
          end
          object cboSSLLib: TComboBox
            Left = 198
            Top = 358
            Width = 86
            Height = 21
            TabOrder = 11
            Items.Strings = (
              'libCapicom'
              'libCapicomDelphiSoap'
              'libCustom'
              'libNone'
              'libOpenSSL'
              'libWinCrypt')
          end
          object cboSSLXMLLib: TComboBox
            Left = 14
            Top = 398
            Width = 86
            Height = 21
            TabOrder = 12
            Items.Strings = (
              'xsLibXml2'
              'xsMsXml'
              'xsMsXmlCapicom'
              'xsNone'
              'xsXmlSec')
          end
          object cboSSLType: TComboBox
            Left = 14
            Top = 438
            Width = 86
            Height = 21
            TabOrder = 13
            Items.Strings = (
              'LT_all'
              'LT_SSHv2'
              'LT_SSLv2'
              'LT_SSLv3'
              'LT_TLSv1'
              'LT_TLSv1_1'
              'LT_TLSv1_2')
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'WebService'
          ImageIndex = 2
          object GroupBox4: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 141
            Caption = 'WebService'
            TabOrder = 0
            object Label6: TLabel
              Left = 8
              Top = 16
              Width = 121
              Height = 13
              Caption = 'Selecione UF de Destino:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object ckxVisualizar: TCheckBox
              Left = 8
              Top = 118
              Width = 153
              Height = 17
              Caption = 'Visualizar Mensagem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbUF: TComboBox
              Left = 8
              Top = 32
              Width = 249
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemIndex = 24
              ParentFont = False
              TabOrder = 1
              Text = 'SP'
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
            end
            object rgTipoAmb: TRadioGroup
              Left = 7
              Top = 61
              Width = 249
              Height = 52
              Caption = 'Selecione o Ambiente de Destino'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
              TabOrder = 2
            end
            object cbxSalvarSOAP: TCheckBox
              Left = 127
              Top = 119
              Width = 135
              Height = 17
              Caption = 'Salvar envelope SOAP'
              TabOrder = 3
            end
          end
          object gbProxy: TGroupBox
            Left = 0
            Top = 152
            Width = 265
            Height = 105
            Caption = 'Proxy'
            TabOrder = 1
            object Label8: TLabel
              Left = 8
              Top = 16
              Width = 22
              Height = 13
              Caption = 'Host'
            end
            object Label9: TLabel
              Left = 208
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label10: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label11: TLabel
              Left = 138
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object edtProxyHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtProxyPorta: TEdit
              Left = 208
              Top = 32
              Width = 50
              Height = 21
              TabOrder = 1
            end
            object edtProxyUser: TEdit
              Left = 8
              Top = 72
              Width = 123
              Height = 21
              TabOrder = 2
            end
            object edtProxySenha: TEdit
              Left = 135
              Top = 72
              Width = 123
              Height = 21
              PasswordChar = '*'
              TabOrder = 3
            end
          end
          object gbxRetornoEnvio: TGroupBox
            Left = 1
            Top = 261
            Width = 265
            Height = 114
            Caption = 'Retorno de Envio de NFe'
            TabOrder = 2
            object Label50: TLabel
              Left = 102
              Top = 27
              Width = 50
              Height = 13
              Caption = 'Tentativas'
            end
            object Label51: TLabel
              Left = 7
              Top = 67
              Width = 41
              Height = 13
              Caption = 'Intervalo'
            end
            object Label52: TLabel
              Left = 8
              Top = 27
              Width = 43
              Height = 13
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              Caption = 'Aguardar'
            end
            object cbxAjustarAut: TCheckBox
              Left = 8
              Top = 12
              Width = 234
              Height = 17
              Caption = 'Ajustar Automaticamente prop. "Aguardar"'
              TabOrder = 0
            end
            object edtTentativas: TEdit
              Left = 102
              Top = 43
              Width = 85
              Height = 21
              TabOrder = 2
            end
            object edtIntervalo: TEdit
              Left = 7
              Top = 83
              Width = 85
              Height = 21
              TabOrder = 3
            end
            object edtAguardar: TEdit
              Left = 8
              Top = 43
              Width = 85
              Height = 21
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              TabOrder = 1
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Emitente'
          ImageIndex = 3
          object Label12: TLabel
            Left = 8
            Top = 4
            Width = 27
            Height = 13
            Caption = 'CNPJ'
          end
          object Label13: TLabel
            Left = 136
            Top = 4
            Width = 41
            Height = 13
            Caption = 'Insc.Est.'
          end
          object Label14: TLabel
            Left = 8
            Top = 44
            Width = 63
            Height = 13
            Caption = 'Raz'#227'o Social'
          end
          object Label15: TLabel
            Left = 8
            Top = 84
            Width = 40
            Height = 13
            Caption = 'Fantasia'
          end
          object Label16: TLabel
            Left = 8
            Top = 164
            Width = 54
            Height = 13
            Caption = 'Logradouro'
          end
          object Label17: TLabel
            Left = 208
            Top = 164
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
          end
          object Label18: TLabel
            Left = 8
            Top = 204
            Width = 64
            Height = 13
            Caption = 'Complemento'
          end
          object Label19: TLabel
            Left = 136
            Top = 204
            Width = 27
            Height = 13
            Caption = 'Bairro'
          end
          object Label20: TLabel
            Left = 8
            Top = 244
            Width = 61
            Height = 13
            Caption = 'C'#243'd. Cidade '
          end
          object Label21: TLabel
            Left = 76
            Top = 244
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label22: TLabel
            Left = 225
            Top = 244
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label23: TLabel
            Left = 136
            Top = 124
            Width = 21
            Height = 13
            Caption = 'CEP'
          end
          object Label24: TLabel
            Left = 8
            Top = 124
            Width = 24
            Height = 13
            Caption = 'Fone'
          end
          object Label29: TLabel
            Left = 8
            Top = 282
            Width = 29
            Height = 13
            Caption = 'CNAE'
          end
          object edtEmitCNPJ: TEdit
            Left = 8
            Top = 19
            Width = 123
            Height = 21
            TabOrder = 0
          end
          object edtEmitIE: TEdit
            Left = 137
            Top = 20
            Width = 123
            Height = 21
            TabOrder = 1
          end
          object edtEmitRazao: TEdit
            Left = 8
            Top = 60
            Width = 252
            Height = 21
            TabOrder = 2
          end
          object edtEmitFantasia: TEdit
            Left = 8
            Top = 100
            Width = 252
            Height = 21
            TabOrder = 3
          end
          object edtEmitFone: TEdit
            Left = 8
            Top = 140
            Width = 125
            Height = 21
            TabOrder = 4
          end
          object edtEmitCEP: TEdit
            Left = 137
            Top = 140
            Width = 123
            Height = 21
            TabOrder = 5
          end
          object edtEmitLogradouro: TEdit
            Left = 8
            Top = 180
            Width = 196
            Height = 21
            TabOrder = 6
          end
          object edtEmitNumero: TEdit
            Left = 210
            Top = 180
            Width = 50
            Height = 21
            TabOrder = 7
          end
          object edtEmitComp: TEdit
            Left = 8
            Top = 220
            Width = 123
            Height = 21
            TabOrder = 8
          end
          object edtEmitBairro: TEdit
            Left = 137
            Top = 220
            Width = 123
            Height = 21
            TabOrder = 9
          end
          object edtEmitCodCidade: TEdit
            Left = 8
            Top = 260
            Width = 61
            Height = 21
            TabOrder = 10
          end
          object edtEmitCidade: TEdit
            Left = 76
            Top = 260
            Width = 142
            Height = 21
            TabOrder = 11
          end
          object edtEmitUF: TEdit
            Left = 225
            Top = 260
            Width = 35
            Height = 21
            TabOrder = 12
          end
          object edtCNAE: TEdit
            Left = 8
            Top = 299
            Width = 142
            Height = 21
            TabOrder = 13
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Email'
          ImageIndex = 4
          object GroupBox5: TGroupBox
            Left = 1
            Top = 4
            Width = 264
            Height = 324
            Caption = 'Email'
            TabOrder = 0
            object Label3: TLabel
              Left = 8
              Top = 16
              Width = 72
              Height = 13
              Caption = 'Servidor SMTP'
            end
            object Label4: TLabel
              Left = 206
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label5: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label26: TLabel
              Left = 137
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object Label27: TLabel
              Left = 8
              Top = 96
              Width = 121
              Height = 13
              Caption = 'Assunto do email enviado'
            end
            object Label28: TLabel
              Left = 8
              Top = 168
              Width = 95
              Height = 13
              Caption = 'Mensagem do Email'
            end
            object edtSmtpHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtSmtpPort: TEdit
              Left = 206
              Top = 32
              Width = 51
              Height = 21
              TabOrder = 1
            end
            object edtSmtpUser: TEdit
              Left = 8
              Top = 72
              Width = 120
              Height = 21
              TabOrder = 2
            end
            object edtSmtpPass: TEdit
              Left = 137
              Top = 72
              Width = 120
              Height = 21
              TabOrder = 3
            end
            object edtEmailAssunto: TEdit
              Left = 8
              Top = 112
              Width = 249
              Height = 21
              TabOrder = 4
            end
            object cbEmailSSL: TCheckBox
              Left = 10
              Top = 144
              Width = 167
              Height = 17
              Caption = 'SMTP exige conex'#227'o segura'
              TabOrder = 5
            end
            object mmEmailMsg: TMemo
              Left = 8
              Top = 184
              Width = 249
              Height = 130
              TabOrder = 6
            end
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Pastas'
          ImageIndex = 5
          object Label30: TLabel
            Left = 8
            Top = 0
            Width = 20
            Height = 13
            Caption = 'NFe'
          end
          object SpeedButton1: TSpeedButton
            Tag = 1
            Left = 238
            Top = 13
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object Label31: TLabel
            Left = 8
            Top = 42
            Width = 68
            Height = 13
            Caption = 'Cancelamento'
          end
          object SpeedButton2: TSpeedButton
            Tag = 2
            Left = 235
            Top = 58
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object Label32: TLabel
            Left = 8
            Top = 81
            Width = 29
            Height = 13
            Caption = 'DPEC'
          end
          object SpeedButton3: TSpeedButton
            Tag = 3
            Left = 235
            Top = 97
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object Label33: TLabel
            Left = 8
            Top = 199
            Width = 53
            Height = 13
            Caption = 'Inutiliza'#231#227'o'
          end
          object SpeedButton4: TSpeedButton
            Tag = 6
            Left = 235
            Top = 215
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object Label34: TLabel
            Left = 8
            Top = 160
            Width = 23
            Height = 13
            Caption = 'MDe'
          end
          object Label35: TLabel
            Left = 8
            Top = 121
            Width = 20
            Height = 13
            Caption = 'CCe'
          end
          object SpeedButton5: TSpeedButton
            Tag = 4
            Left = 235
            Top = 137
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object SpeedButton6: TSpeedButton
            Tag = 5
            Left = 235
            Top = 176
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object Label36: TLabel
            Left = 8
            Top = 242
            Width = 30
            Height = 13
            Caption = 'Salvar'
          end
          object SpeedButton7: TSpeedButton
            Tag = 7
            Left = 235
            Top = 258
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object Label37: TLabel
            Left = 8
            Top = 283
            Width = 44
            Height = 13
            Caption = 'Schemas'
          end
          object SpeedButton8: TSpeedButton
            Tag = 8
            Left = 235
            Top = 297
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object edtPathNfe: TEdit
            Left = 8
            Top = 16
            Width = 225
            Height = 21
            TabOrder = 0
          end
          object edtPathCancelamento: TEdit
            Left = 8
            Top = 58
            Width = 225
            Height = 21
            TabOrder = 1
          end
          object edtPathDPEC: TEdit
            Left = 8
            Top = 97
            Width = 225
            Height = 21
            TabOrder = 2
          end
          object edtPathInutilizacao: TEdit
            Left = 8
            Top = 215
            Width = 225
            Height = 21
            TabOrder = 3
          end
          object edtPathMDe: TEdit
            Left = 8
            Top = 176
            Width = 225
            Height = 21
            TabOrder = 4
          end
          object edtPathCCe: TEdit
            Left = 8
            Top = 137
            Width = 225
            Height = 21
            TabOrder = 5
          end
          object edtPathSalvar: TEdit
            Left = 8
            Top = 258
            Width = 225
            Height = 21
            TabOrder = 6
          end
          object edtPathSquemas: TEdit
            Left = 8
            Top = 299
            Width = 225
            Height = 21
            TabOrder = 7
          end
        end
        object TabSheet15: TTabSheet
          Caption = 'Nfe Referenciada'
          ImageIndex = 6
          object Label39: TLabel
            Left = 4
            Top = 6
            Width = 136
            Height = 13
            Caption = 'Chave Acesso Referenciada'
          end
          object Label40: TLabel
            Left = 7
            Top = 46
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label41: TLabel
            Left = 3
            Top = 85
            Width = 27
            Height = 13
            Caption = 'CNPJ'
          end
          object Label42: TLabel
            Left = 3
            Top = 129
            Width = 68
            Height = 13
            Caption = 'N'#186' Nota Fiscal'
          end
          object Label43: TLabel
            Left = 3
            Top = 171
            Width = 146
            Height = 13
            Caption = 'M'#234's/Ano de emiss'#227'o (MM/AA)'
          end
          object Label53: TLabel
            Left = 3
            Top = 214
            Width = 24
            Height = 13
            Caption = 'Serie'
          end
          object edtChaveAcessoRef: TEdit
            Left = 3
            Top = 23
            Width = 261
            Height = 21
            TabOrder = 0
          end
          object edtUFReferenciada: TEdit
            Left = 3
            Top = 62
            Width = 261
            Height = 21
            MaxLength = 2
            TabOrder = 1
          end
          object edtCNPJReferenciada: TEdit
            Left = 5
            Top = 104
            Width = 261
            Height = 21
            TabOrder = 2
          end
          object edtNotaFiscal: TEdit
            Left = 3
            Top = 144
            Width = 261
            Height = 21
            TabOrder = 3
          end
          object edtMesAnoEmissaoReferenciada: TEdit
            Left = 3
            Top = 188
            Width = 261
            Height = 21
            MaxLength = 5
            TabOrder = 4
          end
          object edtSerie: TEdit
            Left = 3
            Top = 231
            Width = 261
            Height = 21
            MaxLength = 5
            TabOrder = 5
          end
        end
      end
    end
    object btnSalvarConfig: TBitBtn
      Left = 126
      Top = 508
      Width = 153
      Height = 25
      Caption = 'Salvar Configura'#231#245'es'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnSalvarConfigClick
    end
  end
  object Panel2: TPanel
    Left = 297
    Top = 0
    Width = 920
    Height = 605
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 918
      Height = 603
      Align = alClient
      TabOrder = 0
      object PageControl3: TPageControl
        Left = 1
        Top = 1
        Width = 916
        Height = 601
        ActivePage = TabSheet14
        Align = alClient
        TabOrder = 0
        object TabSheet14: TTabSheet
          Caption = 'Conte'#250'do'
          ImageIndex = 3
          object grdCobranca: TDBGrid
            Left = 0
            Top = 400
            Width = 908
            Height = 180
            Align = alTop
            DataSource = srcCobranca
            PopupMenu = PopupMenu1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = grdCobrancaCellClick
            OnDrawColumnCell = grdCobrancaDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Codigo'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Datavencimento'
                Title.Caption = 'Vencimento'
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NumeroDocumento'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Selecionado'
                Visible = True
              end>
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 69
            Width = 908
            Height = 98
            Align = alTop
            DataSource = srcEntidade
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Codigo'
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TotalEntidade'
                Title.Caption = 'Total'
                Width = 63
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome'
                Width = 210
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CPFCNPJ'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InscricaoEstadual'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Endereco'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Bairro'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CodigoIBGE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Municipio'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UF'
                Width = 22
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CEP'
                Width = 100
                Visible = True
              end>
          end
          object DBGrid3: TDBGrid
            Left = 0
            Top = 218
            Width = 908
            Height = 182
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = srcItems
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Ordem'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao'
                Width = 262
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Quantidade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Total'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CodificacaoNCM'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SitA'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SitB'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ValorBasecalculoICMS'
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PercentualICMS'
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ValorICMS'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Val. Base calc. ICMS_ST'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Perc.  ICMS_ST'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Val. ICMS_ST'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Val. Base calc. ICMS_RET'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Perc. ICMS_RET'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Val. ICMS_RET'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Val. Base calc. PIS'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Perc. PIS'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Val. PIS'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Val. Base calc. COFINS'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Perc. COFINS'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Val. COFINS'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Val. Base calc. IPI'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Perc. IPI'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Val. IPI'
                Visible = False
              end>
          end
          object memoInfoAdicionais: TMemo
            Left = 0
            Top = 167
            Width = 908
            Height = 51
            Align = alTop
            Lines.Strings = (
              'Valor aproximado dos tributos  8,28 %')
            ScrollBars = ssVertical
            TabOrder = 3
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 908
            Height = 69
            Align = alTop
            TabOrder = 4
            object Label38: TLabel
              Left = 3
              Top = 14
              Width = 43
              Height = 13
              Caption = 'Natureza'
            end
            object Label59: TLabel
              Left = 11
              Top = 44
              Width = 28
              Height = 13
              Caption = 'CFOP'
            end
            object edtNaturezaOperacao: TEdit
              Left = 52
              Top = 10
              Width = 301
              Height = 21
              TabOrder = 0
            end
            object rdbContribuinte: TRadioButton
              Left = 531
              Top = 11
              Width = 124
              Height = 17
              Caption = 'Contribuinte ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object rdbNaoContribuinte: TRadioButton
              Left = 661
              Top = 11
              Width = 154
              Height = 17
              Caption = 'N'#227'o Contribuinte ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object rdbIsento: TRadioButton
              Left = 821
              Top = 11
              Width = 68
              Height = 17
              Caption = 'ISENTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object cboCFOP: TComboBox
              Left = 45
              Top = 37
              Width = 837
              Height = 21
              DropDownCount = 20
              TabOrder = 4
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 532
            Width = 908
            Height = 41
            Align = alBottom
            TabOrder = 5
            object Button2: TButton
              Tag = 65
              Left = 194
              Top = 5
              Width = 177
              Height = 28
              Caption = 'Enviar NFC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Button1Click
            end
            object Button1: TButton
              Tag = 55
              Left = 11
              Top = 5
              Width = 177
              Height = 28
              Caption = 'Enviar NFE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = Button1Click
            end
          end
        end
        object tsNFe: TTabSheet
          Caption = 'NF-e'
          OnEnter = tsNFeEnter
          object btnImprimir: TButton
            Left = 10
            Top = 126
            Width = 177
            Height = 25
            Caption = 'Imprimir DANFE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnImprimirClick
          end
          object btnStatusServ: TButton
            Left = 9
            Top = 3
            Width = 177
            Height = 25
            Caption = 'Status Servi'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnStatusServClick
          end
          object btnInutilizar: TButton
            Left = 193
            Top = 5
            Width = 177
            Height = 25
            Caption = 'Inutilizar Numera'#231#227'o'
            TabOrder = 2
            OnClick = btnInutilizarClick
          end
          object btnConsCad: TButton
            Left = 193
            Top = 66
            Width = 177
            Height = 25
            Caption = 'Consulta Cadastro'
            TabOrder = 3
            OnClick = btnConsCadClick
          end
          object btnGerarPDF: TButton
            Left = 193
            Top = 95
            Width = 177
            Height = 25
            Caption = 'Gerar PDF'
            TabOrder = 4
          end
          object btnEnviarEmail: TButton
            Left = 376
            Top = 67
            Width = 177
            Height = 25
            Caption = 'Enviar NFe Email'
            TabOrder = 5
          end
          object btnConsultarRecibo: TButton
            Left = 192
            Top = 36
            Width = 177
            Height = 25
            Caption = 'Consultar Recibo Lote'
            TabOrder = 6
            OnClick = btnConsultarReciboClick
          end
          object btnEnvDPEC: TButton
            Left = 376
            Top = 6
            Width = 177
            Height = 25
            Caption = 'Enviar DPEC'
            TabOrder = 7
          end
          object btnConsultarDPEC: TButton
            Left = 376
            Top = 36
            Width = 177
            Height = 25
            Caption = 'Consultar DPEC'
            TabOrder = 8
          end
          object btnConsultarChave: TButton
            Left = 9
            Top = 35
            Width = 177
            Height = 25
            Caption = 'Consultar pela Chave'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            OnClick = btnConsultarChaveClick
          end
          object btnCancelarChave: TButton
            Left = 10
            Top = 67
            Width = 177
            Height = 25
            Caption = 'Cancelamento NFe pela Chave'
            TabOrder = 10
            OnClick = btnCancelarChaveClick
          end
          object btnAdicionarProtNFe: TButton
            Left = 10
            Top = 95
            Width = 177
            Height = 25
            Caption = 'Adicionar nfeProc ao XML'
            TabOrder = 11
          end
          object btnCartadeCorrecao: TButton
            Left = 376
            Top = 96
            Width = 177
            Height = 25
            Caption = 'Carta de Corre'#231#227'o'
            TabOrder = 12
            OnClick = btnCartadeCorrecaoClick
          end
          object btnManifDestConfirmacao: TButton
            Left = 191
            Top = 126
            Width = 178
            Height = 25
            Caption = 'Manif. Dest. - Conf. Opera'#231#227'o'
            TabOrder = 13
          end
          object PageControl2: TPageControl
            Left = 0
            Top = 329
            Width = 908
            Height = 244
            ActivePage = Dados
            Align = alBottom
            TabOrder = 14
            object TabSheet5: TTabSheet
              Caption = 'Respostas'
              object MemoResp: TMemo
                Left = 0
                Top = 0
                Width = 900
                Height = 216
                Align = alClient
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object TabSheet6: TTabSheet
              Caption = 'XML Resposta'
              ImageIndex = 1
              object WBResposta: TWebBrowser
                Left = 0
                Top = 0
                Width = 900
                Height = 216
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 892
                ControlData = {
                  4C000000055D0000531600000000000000000000000000000000000000000000
                  000000004C000000000000000000000001000000E0D057007335CF11AE690800
                  2B2E126208000000000000004C0000000114020000000000C000000000000046
                  8000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000100000000000000000000000000000000000000}
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'Log'
              ImageIndex = 2
              object memoLog: TMemo
                Left = 0
                Top = 0
                Width = 900
                Height = 216
                Align = alClient
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object TabSheet9: TTabSheet
              Caption = 'NFe'
              ImageIndex = 3
              object trvwNFe: TTreeView
                Left = 0
                Top = 0
                Width = 900
                Height = 216
                Align = alClient
                Indent = 19
                TabOrder = 0
              end
            end
            object TabSheet10: TTabSheet
              Caption = 'Retorno Completo WS'
              ImageIndex = 4
              object memoRespWS: TMemo
                Left = 0
                Top = 0
                Width = 900
                Height = 216
                Align = alClient
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object Dados: TTabSheet
              Caption = 'Dados'
              ImageIndex = 5
              object MemoDados: TMemo
                Left = 0
                Top = 0
                Width = 900
                Height = 216
                Align = alClient
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object TabSheet11: TTabSheet
              Caption = 'RetornoConsulta NFe 2.01'
              ImageIndex = 6
              object TreeViewRetornoConsulta: TTreeView
                Left = 0
                Top = 0
                Width = 900
                Height = 216
                Align = alClient
                Indent = 19
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Depurador'
          ImageIndex = 2
          object Memo1: TMemo
            Left = 0
            Top = 0
            Width = 908
            Height = 573
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 480
    Top = 336
  end
  object ACBrNFe1: TACBrNFe
    OnStatusChange = ACBrNFe1StatusChange
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsXmlSec
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.SepararPorCNPJ = True
    Configuracoes.Arquivos.SepararPorModelo = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorAno = True
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.PathNFe = 'D:\Cachina\Nfe'
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'RN'
    Configuracoes.WebServices.AguardarConsultaRet = 2000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.TimeOut = 7000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.WebServices.SSLType = LT_TLSv1_2
    Configuracoes.Certificados.Senha = '1234'
    Left = 435
    Top = 425
  end
  object srcEntidade: TDataSource
    Left = 336
    Top = 336
  end
  object srcItems: TDataSource
    Left = 408
    Top = 336
  end
  object srcCobranca: TDataSource
    Left = 336
    Top = 432
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    Logo = 'D:\Cachina\GC.jpg'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = ',0.00'
    CasasDecimais._Mask_vUnCom = ',0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 8
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = True
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    FastFile = 'D:\Cachina\Layouts\DANFeRetratoNovo.fr3'
    FastFileEvento = 'D:\Cachina\Layouts\EVENTOS.fr3'
    FastFileInutilizacao = 'D:\Cachina\Layouts\INUTILIZACAO.fr3'
    EspessuraBorda = 1
    ExibirTotalTributosItem = False
    ExibeCampoFatura = True
    TributosPercentual = ptValorProdutos
    ImprimirUnQtVlComercial = iuComercial
    Detalhado = True
    DescricaoViaEstabelec = 'Via do Consumidor'
    ExpandirDadosAdicionaisAuto = True
    ImprimirDadosArma = True
    QuebraLinhaEmDetalhamentoEspecifico = True
    IncorporarBackgroundPdf = True
    IncorporarFontesPdf = True
    ImprimirDadosDocReferenciados = True
    Left = 523
    Top = 427
  end
  object ACBrNFeDANFEFR2: TACBrNFeDANFEFR
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiNFCe
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = ',0.00'
    CasasDecimais._Mask_vUnCom = ',0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 8
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    FastFile = 'D:\Cachina\Layouts\DANFeNFCe.fr3'
    FastFileEvento = 'D:\Cachina\Layouts\EventosNFCe.fr3'
    FastFileInutilizacao = 'D:\Cachina\Layouts\INUTILIZACAONFCE.fr3'
    EspessuraBorda = 1
    ExibirTotalTributosItem = False
    ExibeCampoFatura = True
    TributosPercentual = ptValorProdutos
    ImprimirUnQtVlComercial = iuComercial
    Detalhado = False
    DescricaoViaEstabelec = 'Via do Consumidor'
    ExpandirDadosAdicionaisAuto = False
    ImprimirDadosArma = True
    QuebraLinhaEmDetalhamentoEspecifico = True
    IncorporarBackgroundPdf = True
    IncorporarFontesPdf = True
    ImprimirDadosDocReferenciados = True
    Left = 631
    Top = 426
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.1.5'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 42467.626106678200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'const '
      '  LINHAS_DADOS_ADICIONAIS = 12;'
      'var'
      
        '  FooterHeight : Double;                                        ' +
        '                 '
      '  '
      
        'procedure DadosProdutosFooterOnBeforePrint(Sender: TfrxComponent' +
        ');'
      'var'
      
        '  FatorEspaco : Extended;                                       ' +
        '                                  '
      'begin'
      '  FatorEspaco := DadosAdicionais.Height + PageFooter.Height;'
      '  if <Parametros."poscanhoto"> = '#39'1'#39' then'
      
        '    FatorEspaco := FatorEspaco + CanhotoRodape.Height;          ' +
        '                                                                ' +
        '                   '
      '  if Engine.FinalPass then'
      '  begin'
      '    while ( Engine.FreeSpace > FatorEspaco ) do'
      '      Engine.ShowBand(Child1);'
      '    Engine.ShowBand(Child2);'
      '  end;            '
      'end;'
      ''
      
        'procedure DadosProdutosHeaderOnBeforePrint(Sender: TfrxComponent' +
        ');'
      'begin'
      '  if Engine.FinalPass then'
      '  begin    '
      '    set('#39'LinhasImpressas'#39',0);'
      '  end;              '
      'end;'
      ''
      'procedure DadosProdutosOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  if Engine.FinalPass then'
      '  begin    '
      '    set('#39'LinhasImpressas'#39',StrToInt(get('#39'LinhasImpressas'#39'))+1);'
      
        '    if (StrToInt(VarToStr(<Parametros."LinhasPorPagina">)) > 0) ' +
        'then'
      '    begin              '
      
        '      if (StrToInt(get('#39'LinhasImpressas'#39')) = StrToInt(VarToStr(<' +
        'Parametros."LinhasPorPagina">))) then    '
      '        Engine.ShowBand(DadosProdutosFooter);              '
      '    end;'
      '  end;            '
      'end;'
      ''
      'procedure EmitenteOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if Engine.FinalPass then'
      '  begin              '
      '    if Trim(VarToStr(<Parametros."Imagem">)) <> '#39#39' then'
      '    begin              '
      '      if Trim(VarToStr(<Parametros."LogoExpandido">)) = '#39'1'#39' then'
      '      begin'
      '        MemEmitente.Font.Color := clWhite;'
      '        MemDadosEmitente.Visible := False;'
      '        imgLogo.Top := 5;'
      
        '        imgLogo.Height := memDadosEmitente.Height + (memDadosEmi' +
        'tente.Top - imgLogo.Top);                                       ' +
        '                                '
      
        '        imgLogo.Width := memDadosEmitente.Width + (memDadosEmite' +
        'nte.Left - imgLogo.Left);                                       ' +
        '       '
      '      end;'
      '    end '
      '    else'
      '    begin'
      '      MemDadosEmitente.Left := MemEmitente.Left;'
      '      MemDadosEmitente.Width := MemEmitente.Width;        '
      
        '      imgLogo.Visible := False;                                 ' +
        '                                     '
      '    end;'
      ''
      
        '    if (Trim(VarToStr(<Parametros."Contingencia_ID">)) = '#39#39') the' +
        'n'
      '      BarCodeContigencia.Visible := False;'
      ''
      '    // Restaura a altura original da PageFooter'
      '    if ( <Page> = 1 ) then'
      '    begin              '
      '      PageFooter.Height := FooterHeight;'
      '      PageFooter.Visible := True;'
      '    end'
      '    else'
      '    begin'
      '      PageFooter.Height := 0;'
      '      PageFooter.Visible := False;'
      '    end;            '
      '  end;'
      'end;'
      ''
      'procedure PageFooterOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '{  if Engine.FinalPass then'
      '  begin              '
      '  //Fabio'
      '    PageFooter.Height := 0;      '
      '    PageFooter.Visible := False;'
      '  end;'
      '  }      '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  sLinha : String;                              '
      'begin'
      '  Canhoto.Visible := <Parametros."poscanhoto"> = '#39'0'#39';'
      '  CanhotoRodape.Visible := <Parametros."poscanhoto"> = '#39'1'#39';'
      '    '
      '  // Salva a altura atual da band Footer'
      '  FooterHeight := PageFooter.Height;'
      '    '
      '  // verifica se existem mais de  linhas nas observa'#231#245'es'
      '  memOBS.Lines.Text := <InformacoesAdicionais."OBS">;      '
      '  memContInfAdicionais.Lines.Clear;'
      
        '  // Se a quantidade de linhas for maior que LINHAS_DADOS_ADICIO' +
        'NAIS, exibe a se'#231#227'o "continua'#231#227'o dos dados adicionais", sen'#227'o oc' +
        'ulta.                                                           ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '            '
      '  if ( memOBS.Lines.Count > LINHAS_DADOS_ADICIONAIS ) then'
      '    pgContDadosAdicionais.Visible := True'
      '  else'
      '    pgContDadosAdicionais.Visible := False;'
      ''
      
        '  //Se a quantidade de linhas for maior que LINHAS_DADOS_ADICION' +
        'AIS, copia as demais linhas para a se'#231#227'o "continua'#231#227'o dos dados ' +
        'adicionais"'
      '  while ( memOBS.Lines.Count > LINHAS_DADOS_ADICIONAIS ) do'
      '  begin              '
      '    sLinha := memOBS.Lines.Strings(LINHAS_DADOS_ADICIONAIS-1);'
      
        '    // Copia a linha para a continua'#231#227'o das informa'#231#245'es adiciona' +
        'is                                                              ' +
        '                                                                ' +
        '                          '
      '    memContInfAdicionais.Lines.Add(sLinha);'
      '    // Apaga a linha do memOBS'
      
        '    memOBS.Lines.Delete(LINHAS_DADOS_ADICIONAIS-1);             ' +
        '               '
      '  end;'
      '    '
      '  if Engine.FinalPass then'
      '  begin'
      ''
      '    if  ('
      '          ( Trim(VarToStr(<ISSQN."vBC">)) = '#39#39' ) or'
      '          ( Trim(VarToStr(<ISSQN."vBC">)) ='#39'0'#39') and    '
      '          ( Trim(VarToStr(<ISSQN."vISS">)) = '#39#39' ) or'
      '          ( Trim(VarToStr(<ISSQN."vISS">)) ='#39'0'#39') and    '
      '          ( Trim(VarToStr(<ISSQN."vServ">)) = '#39#39' ) or'
      '          ( Trim(VarToStr(<ISSQN."vServ">)) ='#39'0'#39') '
      '       )  then'
      '          begin'
      '             ColumnFooter1.Visible := False;'
      '             ColumnFooter1.Height := 0;'
      '          end;                  '
      '  end;                       '
      'end;'
      ''
      'procedure ImpostoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if Engine.FinalPass then'
      '  begin              '
      
        '    if (StrToFloat(VarToStr(<CalculoImposto."VTotTrib">)) = 0) t' +
        'hen        '
      '    begin              '
      '      QuadroVTOTTRIB.Visible:=False;'
      '      memVTOTTRIB.Visible:=False;'
      '    '
      '      QuadroVST.Left := QuadroVST.Left+QuadroVTOTTRIB.Width;'
      '      memVST.Left := QuadroVST.Left;                       '
      ''
      '      QuadroVBCST.Left := QuadroVBCST.Left+QuadroVTOTTRIB.Width;'
      '      memVBCST.Left := QuadroVBCST.Left;                       '
      ''
      
        '      QuadroVBC.Width := QuadroVBC.Width+(QuadroVTOTTRIB.Width/2' +
        ');'
      
        '      memVBC.Width := QuadroVBC.Width;                          ' +
        '                      '
      '      QuadroVICMS.Left := QuadroVBC.Width;'
      ''
      '      memVICMS.Left := QuadroVICMS.Left;'
      
        '      QuadroVICMS.Width := QuadroVICMS.Width+(QuadroVTOTTRIB.Wid' +
        'th/2);'
      
        '      memVICMS.Width := QuadroVICMS.Width;                      ' +
        '           '
      '    end;                                            '
      '  end;                   '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Engine.ShowBand(Emitente);                                    ' +
        '                           '
      'end;'
      ''
      'procedure FaturaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Fatura.Visible     := ( VarToStr(<Fatura."iForma">) <> '#39'2'#39');  ' +
        '  '
      
        '  MemoFatura.Visible := ( Trim( VarToStr(<Fatura."nfat">)) <> '#39#39 +
        ');'
      'end;'
      ''
      'begin'
      ''
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 591
    Top = 338
    Datasets = <
      item
        DataSetName = 'CalculoImposto'
      end
      item
        DataSetName = 'DadosProdutos'
      end
      item
        DataSetName = 'Destinatario'
      end
      item
        DataSetName = 'Duplicatas'
      end
      item
        DataSetName = 'Emitente'
      end
      item
        DataSetName = 'Fatura'
      end
      item
        DataSetName = 'Identificacao'
      end
      item
        DataSetName = 'InformacoesAdicionais'
      end
      item
        DataSetName = 'ISSQN'
      end
      item
        DataSetName = 'LocalEntrega'
      end
      item
        DataSetName = 'LocalRetirada'
      end
      item
        DataSetName = 'Pagamento'
      end
      item
        DataSetName = 'Parametros'
      end
      item
        DataSetName = 'Transportador'
      end
      item
        DataSetName = 'Veiculo'
      end
      item
        DataSetName = 'Volumes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 6.000000000000000000
      RightMargin = 7.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      BackPictureVisible = False
      LargeDesignHeight = True
      VGuides.Strings = (
        '26,45671')
      OnBeforePrint = 'Page1OnBeforePrint'
      object DadosProdutos: TfrxMasterData
        FillType = ftBrush
        Height = 11.338582680000000000
        Top = 1062.047930000000000000
        Width = 744.567410000000000000
        OnAfterPrint = 'DadosProdutosOnAfterPrint'
        DataSetName = 'DadosProdutos'
        RowCount = 0
        Stretched = True
        object Memo131: TfrxMemoView
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."CProd"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992089370000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[DadosProdutos."DescricaoProduto"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 283.464537640000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."NCM"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo134: TfrxMemoView
          Left = 321.259813230000000000
          Width = 26.456695350000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."ORIGEM"][DadosProdutos."CST"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo135: TfrxMemoView
          Left = 347.716506140000000000
          Width = 24.566929130000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."CFOP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo136: TfrxMemoView
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."Unidade"]')
          ParentFont = False
        end
        object memqCom: TfrxMemoView
          Left = 394.960659210000000000
          Width = 43.464574250000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."Quantidade"]')
          ParentFont = False
        end
        object memvUnCom: TfrxMemoView
          Left = 438.425480000000000000
          Width = 52.913420000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."ValorUnitario"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 491.338900000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."vDesc"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo140: TfrxMemoView
          Left = 536.693260000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VProd"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo141: TfrxMemoView
          Left = 578.268090000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VBC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo142: TfrxMemoView
          Left = 619.842920000000000000
          Width = 41.574803150000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo143: TfrxMemoView
          Left = 661.417322830000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DadosProdutos."VIPI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo144: TfrxMemoView
          Left = 702.992125980000000000
          Width = 20.787401570000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."PICMS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo145: TfrxMemoView
          Left = 723.779527560000000000
          Width = 20.787401570000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DadosProdutos."PIPI"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Canhoto: TfrxReportTitle
        FillType = ftBrush
        Height = 79.370078740000000000
        Top = 18.897650000000000000
        Width = 744.567410000000000000
        object Memo2: TfrxMemoView
          Width = 642.520100000000000000
          Height = 37.795275590000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            
              'Recebemos de [Emitente."XNome"] os produtos e/ou servi'#231'os consta' +
              'ntes da Nota Fiscal Eletr'#244'nica indicada ao lado. '
            '[Parametros."ResumoCanhoto"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 143.622140000000000000
          Top = 37.795275590000000000
          Width = 498.897960000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 37.795275590000000000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DO RECEBIMENTO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 73.811070000000000000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo17: TfrxMemoView
          Left = 642.520100000000000000
          Width = 102.047212360000000000
          Height = 68.031496060000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NF-e'
            'N'#186' [Identificacao."NNF"]'
            'S'#233'rie [Identificacao."Serie" #n#000]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Emitente: TfrxPageHeader
        FillType = ftBrush
        Height = 173.858362910000000000
        Top = 120.944960000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'EmitenteOnBeforePrint'
        object BarCodeContigencia: TfrxBarCodeView
          ShiftMode = smWhenOverlapped
          Left = 469.764070000000000000
          Top = 84.370130000000000000
          Width = 233.000000000000000000
          Height = 34.015745590000000000
          BarType = bcCode128C
          DataField = 'Contingencia_ID'
          DataSetName = 'Parametros'
          Rotation = 0
          ShowText = False
          Text = '123456789012345678901234567890123456'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object memConsultaAutenticidade: TfrxMemoView
          Left = 423.307360000000000000
          Top = 79.370130000000000000
          Width = 321.260050000000000000
          Height = 41.574805590000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."ConsultaAutenticidade"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 423.307360000000000000
          Width = 321.259842520000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object BarCodeChave: TfrxBarCodeView
          Left = 445.677177560000000000
          Top = 5.559060000000003000
          Width = 277.000000000000000000
          Height = 37.795275590000000000
          BarType = bcCode128C
          DataField = 'Id'
          DataSetName = 'Identificacao'
          Rotation = 0
          ShowText = False
          Text = '12345678901234567890123456789012345678901234'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo6: TfrxMemoView
          Left = 423.307360000000000000
          Top = 49.133889999999990000
          Width = 321.260050000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CHAVE DE ACESSO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 423.307360000000000000
          Top = 56.692913389999990000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."Chave"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          Left = 309.921460000000000000
          Width = 113.385826770000000000
          Height = 120.944960000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DANFE')
          ParentFont = False
        end
        object memEmitente: TfrxMemoView
          Width = 309.921460000000000000
          Height = 120.944960000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 1.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente."XNome"]')
          ParentFont = False
        end
        object memDadosEmitente: TfrxMemoView
          Left = 100.826840000000000000
          Top = 37.795275590000000000
          Width = 207.874020630000000000
          Height = 81.259842520000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente."DADOS_ENDERECO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 313.157700000000000000
          Top = 16.897649999999980000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento Auxiliar da '
            'Nota Fiscal Eletr'#244'nica')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 321.716760000000000000
          Top = 70.811069999999960000
          Width = 98.267780000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#186' [Identificacao."NNF"]'
            '   S'#201'RIE [Identificacao."Serie" #n#000]'
            '   FOLHA [Page]/[TotalPages#]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 313.716760000000000000
          Top = 45.354359999999970000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '0 - ENTRADA'
            '1 - SA'#205'DA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 389.748300000000000000
          Top = 45.354330709999990000
          Width = 22.677165350000000000
          Height = 22.677165350000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."TpNF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 120.944960000000000000
          Width = 423.307360000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NATUREZA DA OPERA'#199#195'O')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Top = 129.259842520000000000
          Width = 423.307360000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Identificacao."NatOp"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          Left = 423.307360000000000000
          Top = 120.944960000000000000
          Width = 321.260050000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[Parametros."Contingencia_Descricao"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 423.307360000000000000
          Top = 129.259842520000000000
          Width = 321.260050000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Contingencia_Valor"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IE"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          Left = 253.228510000000000000
          Top = 147.401670000000000000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL DO SUBSTITUTO TRIBUT'#193'RIO')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 253.228510000000000000
          Top = 156.850410790000000000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IEST"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo27: TfrxMemoView
          Left = 506.457020000000000000
          Top = 147.401670000000000000
          Width = 238.110390000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 506.457020000000000000
          Top = 156.850410790000000000
          Width = 238.110390000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."CNPJ"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object imgLogo: TfrxPictureView
          Left = 1.889763780000000000
          Top = 37.795275590000000000
          Width = 98.267711650000000000
          Height = 81.259842520000000000
          Center = True
          DataField = 'LogoCarregado'
          DataSetName = 'Parametros'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter: TfrxPageFooter
        FillType = ftBrush
        Height = 14.117988190000000000
        Top = 2683.466300000000000000
        Width = 744.567410000000000000
        OnAfterPrint = 'PageFooterOnAfterPrint'
        object memDataHora: TfrxMemoView
          Align = baLeft
          Top = 0.889641730000221300
          Width = 445.984540000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'DATA E HORA DA IMPRESS'#195'O: [Date #ddd/mm/yyyy] [Time #dhh:mm:ss] ' +
              '[Parametros."Usuario"]')
          ParentFont = False
        end
        object memSistema: TfrxMemoView
          Align = baRight
          Left = 453.543600000000000000
          Top = 0.889641730000221300
          Width = 291.023810000000000000
          Height = 13.228346460000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."Sistema"]')
          ParentFont = False
        end
      end
      object Destinatario: TfrxMasterData
        FillType = ftBrush
        Height = 96.267762910000000000
        Top = 355.275820000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'DestinatarioOnBeforePrint'
        DataSetName = 'Identificacao'
        RowCount = 1
        object Memo29: TfrxMemoView
          Top = 16.897650000000000000
          Width = 468.661720000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 26.346390789999990000
          Width = 464.882190000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XNome"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 631.181510000000000000
          Top = 16.897650000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA EMISS'#195'O')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 631.181510000000000000
          Top = 26.346390789999990000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."DEmi"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          Left = 631.181510000000000000
          Top = 43.354359999999990000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 631.181510000000000000
          Top = 52.803100789999970000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."DSaiEnt"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          Left = 631.181510000000000000
          Top = 69.811069999999970000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'HORA DA SA'#205'DA')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 631.181510000000000000
          Top = 79.259810790000010000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."HoraSaida"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 468.661720000000000000
          Top = 16.897650000000000000
          Width = 162.519790000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 468.661720000000000000
          Top = 26.346390789999990000
          Width = 162.519790000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."CNPJCPF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 555.590910000000000000
          Top = 43.354359999999990000
          Width = 75.590600000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 555.590910000000000000
          Top = 52.803100789999970000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."CEP"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          Left = 385.512060000000000000
          Top = 43.354359999999990000
          Width = 170.078850000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BAIRRO / DISTRITO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 385.512060000000000000
          Top = 52.803100789999970000
          Width = 170.078850000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XBairro"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          Top = 43.354359999999990000
          Width = 385.512060000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Top = 52.803100789999970000
          Width = 381.732530000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            
              '[Destinatario."XLgr"], [Destinatario."Nro"]  [Destinatario."XCpl' +
              '"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          Top = 69.811069999999970000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Top = 79.259810790000010000
          Width = 351.496290000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."XMun"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo47: TfrxMemoView
          Left = 355.275820000000000000
          Top = 69.811069999999970000
          Width = 30.236240000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 355.275820000000000000
          Top = 79.259810790000010000
          Width = 30.236240000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Destinatario."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo49: TfrxMemoView
          Left = 385.512060000000000000
          Top = 69.811069999999970000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'TELEFONE / FAX')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 385.512060000000000000
          Top = 79.259810790000010000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."Fone"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo51: TfrxMemoView
          Left = 498.897960000000000000
          Top = 69.811069999999970000
          Width = 132.283550000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 498.897960000000000000
          Top = 79.259810790000010000
          Width = 132.283550000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Destinatario."IE"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo53: TfrxMemoView
          Top = 3.779530000000022000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DESTINAT'#193'RIO / REMETENTE')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Fatura: TfrxMasterData
        FillType = ftBrush
        Height = 43.464566929133900000
        Top = 612.283860000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'FaturaOnBeforePrint'
        DataSetName = 'Fatura'
        RowCount = 0
        object Memo146: TfrxMemoView
          Align = baLeft
          Top = 17.007874015748030000
          Width = 744.566929130000000000
          Height = 20.787404020000000000
          OnBeforePrint = 'Memo191OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Fatura."Pagamento"]  ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo190: TfrxMemoView
          Top = 3.779527560000020000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'FATURA')
          ParentFont = False
          VAlign = vaBottom
        end
        object MemoFatura: TfrxMemoView
          Left = 128.504508190000000000
          Top = 17.007874015748030000
          Width = 616.062901810000000000
          Height = 20.787404020000000000
          OnBeforePrint = 'Memo191OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            
              '  N'#250'mero:   [Fatura."nFat"]     -   Valor Original: R$ [Fatura."' +
              'vOrig" #n%2,2n]    -   Valor Desconto:  R$ [Fatura."vDesc" #n%2,' +
              '2n]    -   ValorL'#237'quido: R$ [Fatura."vLiq" #n%2,2n]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
      end
      object DuplicatasHeader: TfrxGroupHeader
        FillType = ftBrush
        Height = 17.007874020000000000
        Top = 680.315400000000000000
        Width = 744.567410000000000000
        Condition = 'Duplicatas."ChaveNFe"'
        ReprintOnNewPage = True
        object Memo205: TfrxMemoView
          Top = 3.779530000000022000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DUPLICATAS')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object DadosProdutosHeader: TfrxGroupHeader
        FillType = ftBrush
        Height = 41.196850390000000000
        Top = 997.795920000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'DadosProdutosHeaderOnBeforePrint'
        Condition = 'DadosProdutos."ChaveNFe"'
        ReprintOnNewPage = True
        object Memo115: TfrxMemoView
          Top = 3.779530000000022000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS DOS PRODUTOS / SERVI'#199'OS')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo116: TfrxMemoView
          Top = 18.338592439999960000
          Width = 60.472480000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO'
            'PRODUTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 60.472480000000000000
          Top = 18.338592439999960000
          Width = 222.992089370000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'O')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 283.464537640000000000
          Top = 18.338592439999960000
          Width = 37.795300000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NCM/SH')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 321.259813230000000000
          Top = 18.338592439999960000
          Width = 26.456695350000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Emitente."DESCR_CST"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 347.716506140000000000
          Top = 18.338592439999960000
          Width = 24.566929130000000000
          Height = 22.677167800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 372.283493860000000000
          Top = 18.338592439999960000
          Width = 22.677180000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 394.960659210000000000
          Top = 18.338592439999960000
          Width = 43.464574250000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE.')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 438.425480000000000000
          Top = 18.338592439999960000
          Width = 52.913420000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'UNIT'#193'RIO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.338592439999960000
          Width = 45.354360000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Desconto"]'
            'DESCONTO')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 536.693260000000000000
          Top = 18.338592439999960000
          Width = 41.574830000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            '[Parametros."TotalLiquido"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 578.268090000000000000
          Top = 18.338592439999960000
          Width = 41.574830000000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'BASE DE '
            'C'#193'LC. ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 619.842920000000000000
          Top = 18.338592439999960000
          Width = 41.574803150000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 661.417322830000000000
          Top = 18.338592439999960000
          Width = 41.574803150000000000
          Height = 22.677162910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR'
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 702.992125980000000000
          Top = 29.677182440000030000
          Width = 20.787401570000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 723.779527560000000000
          Top = 29.677182440000030000
          Width = 20.787401570000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Left = 702.992123540000000000
          Top = 18.338592439999960000
          Width = 41.574830000000000000
          Height = 11.338572910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AL'#205'Q. %')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Imposto: TfrxMasterData
        FillType = ftBrush
        Height = 70.031525350000000000
        Top = 782.362710000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'ImpostoOnBeforePrint'
        DataSetName = 'CalculoImposto'
        RowCount = 1
        object Memo58: TfrxMemoView
          Top = 3.779530000000022000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO IMPOSTO')
          ParentFont = False
          VAlign = vaBottom
        end
        object QuadroVBC: TfrxMemoView
          Top = 17.118122439999980000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS')
          ParentFont = False
        end
        object memVBC: TfrxMemoView
          Top = 26.566863229999970000
          Width = 114.897637800000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VBC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object QuadroVICMS: TfrxMemoView
          Left = 114.897637800000000000
          Top = 17.118122439999980000
          Width = 114.897637800000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO ICMS')
          ParentFont = False
        end
        object memVICMS: TfrxMemoView
          Left = 114.897637800000000000
          Top = 26.566863229999970000
          Width = 114.897637800000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VICMS"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object QuadroVBCST: TfrxMemoView
          Left = 229.795275590000000000
          Top = 17.118122439999980000
          Width = 128.504020000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ICMS SUBST.')
          ParentFont = False
        end
        object memVBCST: TfrxMemoView
          Left = 229.795275590000000000
          Top = 26.566863229999970000
          Width = 128.504020000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VBCST"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object QuadrovST: TfrxMemoView
          Left = 358.299212600000000000
          Top = 17.118122439999980000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO ICMS SUBST.')
          ParentFont = False
        end
        object memVST: TfrxMemoView
          Left = 358.299212600000000000
          Top = 26.566863229999970000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VST"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo67: TfrxMemoView
          Left = 597.165740000000000000
          Top = 17.118122439999980000
          Width = 147.401670000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS PRODUTOS')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 597.165740000000000000
          Top = 25.566863229999970000
          Width = 147.401670000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VProd"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo69: TfrxMemoView
          Left = 459.590848000000000000
          Top = 43.574832440000030000
          Width = 137.574892000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO IPI')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 459.590848000000000000
          Top = 53.023573230000010000
          Width = 137.574892000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VIPI"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo71: TfrxMemoView
          Left = 329.575016000000000000
          Top = 43.574832440000030000
          Width = 130.015832000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'OUTRAS DESPESAS ACESS'#211'RIAS')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 329.575016000000000000
          Top = 53.023573230000010000
          Width = 130.015832000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VOutro"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo73: TfrxMemoView
          Left = 229.795424000000000000
          Top = 43.574832440000030000
          Width = 99.779592000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 229.795424000000000000
          Top = 53.023573230000010000
          Width = 99.779592000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VDesc"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo75: TfrxMemoView
          Left = 114.897712000000000000
          Top = 43.574832440000030000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO SEGURO')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 114.897712000000000000
          Top = 53.023573230000010000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VSeg"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo77: TfrxMemoView
          Top = 43.574832440000030000
          Width = 114.897712000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR DO FRETE')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Top = 53.023573230000010000
          Width = 114.897712000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VFrete"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo79: TfrxMemoView
          Left = 597.165740000000000000
          Top = 43.574832440000030000
          Width = 147.401670000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DA NOTA')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 597.165740000000000000
          Top = 52.023573230000010000
          Width = 147.401670000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VNF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object QuadroVTOTTRIB: TfrxMemoView
          Left = 471.685029610000000000
          Top = 17.196850390000010000
          Width = 125.480339370000000000
          Height = 26.267716540000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'V.APROX. TRIBUTOS [CalculoImposto."VTribFonte"]')
          ParentFont = False
        end
        object memVTOTTRIB: TfrxMemoView
          Left = 472.441250000000000000
          Top = 26.645669290000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[CalculoImposto."VTotTrib"] ([CalculoImposto."VTribPerc"] %)')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object TransportadorVolumes: TfrxMasterData
        FillType = ftBrush
        Height = 96.378045510000000000
        Top = 876.850960000000000000
        Width = 744.567410000000000000
        DataSetName = 'Transportador'
        RowCount = 1
        object Memo82: TfrxMemoView
          Top = 3.779530000000022000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TRANSPORTADOR / VOLUMES TRANSPORTADOS')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 636.094512600000000000
          Top = 17.007932600000000000
          Width = 108.472433620000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 636.094512600000000000
          Top = 26.456673389999990000
          Width = 108.472433620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."CNPJCPF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo85: TfrxMemoView
          Left = 608.504330000000000000
          Top = 17.007932600000000000
          Width = 27.590548740000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 608.504330000000000000
          Top = 26.456673389999990000
          Width = 27.590548740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Veiculo."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo87: TfrxMemoView
          Left = 521.575140000000000000
          Top = 17.007932600000000000
          Width = 86.929190000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PLACA DO VE'#205'CULO')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 521.575140000000000000
          Top = 26.456673389999990000
          Width = 86.929190000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Veiculo."PLACA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo89: TfrxMemoView
          Left = 438.425480000000000000
          Top = 17.007932600000000000
          Width = 83.149660000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'C'#211'DIGO ANTT')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 438.425480000000000000
          Top = 26.456673389999990000
          Width = 79.370130000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Veiculo."RNTC"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo91: TfrxMemoView
          Left = 355.275820000000000000
          Top = 17.007932600000000000
          Width = 83.149660000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'FRETE POR CONTA')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 355.275820000000000000
          Top = 26.456673389999990000
          Width = 83.149660000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."ModFrete"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo93: TfrxMemoView
          Top = 17.007932600000000000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NOME / RAZ'#195'O SOCIAL')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Top = 26.456673389999990000
          Width = 355.275820000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XNome"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo95: TfrxMemoView
          Left = 608.504330000000000000
          Top = 43.464642600000040000
          Width = 27.590548740000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 608.504330000000000000
          Top = 52.913383390000040000
          Width = 27.590548740000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Transportador."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo97: TfrxMemoView
          Left = 636.094512600000000000
          Top = 43.464642600000040000
          Width = 108.472433620000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O ESTADUAL')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 636.094512600000000000
          Top = 52.913383390000040000
          Width = 108.472433620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."IE"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo99: TfrxMemoView
          Left = 355.275820000000000000
          Top = 43.464642600000040000
          Width = 253.228510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MUNIC'#205'PIO')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 355.275820000000000000
          Top = 52.913383390000040000
          Width = 253.228510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XMun"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo101: TfrxMemoView
          Top = 43.464642600000040000
          Width = 355.275820000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Top = 52.913383390000040000
          Width = 355.275820000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Transportador."XEnder"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo103: TfrxMemoView
          Top = 69.921352599999970000
          Width = 59.212636670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HideZeros = True
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Top = 79.370093389999960000
          Width = 59.212636670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."QVol"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo105: TfrxMemoView
          Left = 59.212636670000000000
          Top = 69.921352599999970000
          Width = 153.700886670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ESP'#201'CIE')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 59.212636670000000000
          Top = 79.370093389999960000
          Width = 153.700886670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."Esp"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo107: TfrxMemoView
          Left = 212.913523330000000000
          Top = 69.921352599999970000
          Width = 142.362296670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'MARCA')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 212.913523330000000000
          Top = 79.370093389999960000
          Width = 142.362296670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."Marca"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo109: TfrxMemoView
          Left = 355.275820000000000000
          Top = 69.921352599999970000
          Width = 161.259946670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'NUMERA'#199#195'O')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 355.275820000000000000
          Top = 79.370093389999960000
          Width = 161.259946670000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Volumes."NVol"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo111: TfrxMemoView
          Left = 516.535766670000000000
          Top = 69.921352599999970000
          Width = 119.685116670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PESO BRUTO')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 516.535766670000000000
          Top = 79.370093389999960000
          Width = 119.685116670000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."PesoB"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo113: TfrxMemoView
          Left = 636.220883330000000000
          Top = 69.921352599999970000
          Width = 108.346526670000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'PESO L'#205'QUIDO')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 636.220883330000000000
          Top = 79.370093389999960000
          Width = 108.346526670000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[Volumes."PesoL"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
      end
      object MarcaDagua: TfrxOverlay
        FillType = ftBrush
        Height = 1122.519685040000000000
        Top = 1432.441870000000000000
        Width = 744.567410000000000000
        object memWatermark: TfrxMemoView
          Align = baClient
          Width = 744.567410000000000000
          Height = 1122.519685040000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14211288
          Font.Height = -67
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Mensagem0"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 3.779527560000000000
        Top = 1118.740880000000000000
        Width = 744.567410000000000000
        object Memo161: TfrxMemoView
          Width = 60.472480000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          Left = 60.472480000000000000
          Width = 222.992270000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 283.464750000000000000
          Width = 37.795300000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 321.260050000000000000
          Width = 26.456695350000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 347.716564720000000000
          Width = 24.566929130000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 372.283493860000000000
          Width = 22.677180000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 394.960659210000000000
          Width = 43.464574250000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 438.425480000000000000
          Width = 52.913385826771700000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          Left = 491.338582677165000000
          Width = 45.354360000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 536.692913385827000000
          Width = 41.574803150000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 578.267716535433000000
          Width = 41.574830000000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 619.842920000000000000
          Width = 41.574803150000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 661.417322830000000000
          Width = 41.574803150000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 702.992125980000000000
          Width = 20.787401570000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 723.779527560000000000
          Width = 20.787401570000000000
          Height = 3.779527560000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = ',0.00##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          ParentFont = False
        end
      end
      object DadosProdutosFooter: TfrxGroupFooter
        FillType = ftBrush
        Top = 1096.063700000000000000
        Width = 744.567410000000000000
        OnBeforePrint = 'DadosProdutosFooterOnBeforePrint'
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Top = 1145.197590000000000000
        Width = 744.567410000000000000
        Child = frxReport1.DadosAdicionais
        object Line2: TfrxLineView
          Align = baWidth
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object LocalRetirada: TfrxMasterData
        FillType = ftBrush
        Height = 43.354342910000000000
        Top = 476.220780000000000000
        Width = 744.567410000000000000
        DataSetName = 'LocalRetirada'
        RowCount = 0
        object Memo10: TfrxMemoView
          Top = 16.897650000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 26.346390789999990000
          Width = 113.385826770000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[LocalRetirada."CNPJ"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo14: TfrxMemoView
          Left = 113.385900000000000000
          Top = 16.897650000000000000
          Width = 631.181510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 113.385900000000000000
          Top = 26.346390789999990000
          Width = 631.181510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            
              '[LocalRetirada."XLgr"] [LocalRetirada."Nro"] [LocalRetirada."XCp' +
              'l"] - [LocalRetirada."XBairro"] - [LocalRetirada."XMun"] - [Loca' +
              'lRetirada."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo185: TfrxMemoView
          Top = 3.779530000000022000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'LOCAL RETIRADA')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object LocalEntrega: TfrxMasterData
        FillType = ftBrush
        Height = 43.354342910000000000
        Top = 544.252320000000100000
        Width = 744.567410000000000000
        DataSetName = 'LocalEntrega'
        RowCount = 0
        object Memo54: TfrxMemoView
          Top = 16.897650000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CNPJ / CPF')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Top = 26.346390789999990000
          Width = 113.385826770000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[LocalEntrega."CNPJ"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo56: TfrxMemoView
          Left = 113.385900000000000000
          Top = 16.897650000000000000
          Width = 631.181510000000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 113.385900000000000000
          Top = 26.346390789999990000
          Width = 631.181510000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            
              '[LocalEntrega."XLgr"] [LocalEntrega."Nro"] [LocalEntrega."XCpl"]' +
              ' - [LocalEntrega."XBairro"] - [LocalEntrega."XMun"] - [LocalEntr' +
              'ega."UF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaBottom
        end
        object Memo81: TfrxMemoView
          Top = 3.779530000000022000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'LOCAL ENTREGA')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Height = 43.464566930000000000
        Top = 2615.434760000000000000
        Width = 744.567410000000000000
        object ISSQN: TfrxSubreport
          Width = 744.567410000000000000
          Height = 43.464566930000000000
          Page = frxReport1.PageISSQN
          PrintOnParent = True
        end
      end
      object CanhotoRodape: TfrxChild
        FillType = ftBrush
        Height = 77.370105590000000000
        Top = 1330.394560000000000000
        Width = 744.567410000000000000
        Stretched = True
        object canhotorodaperecebemos: TfrxMemoView
          Top = 9.338590000000068000
          Width = 642.520100000000000000
          Height = 37.795275590000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            
              'Recebemos de [Emitente."XNome"] os produtos e/ou servi'#231'os consta' +
              'ntes da Nota Fiscal Eletr'#244'nica indicada ao lado. '
            '[Parametros."ResumoCanhoto"]')
          ParentFont = False
          WordWrap = False
        end
        object canhotorodapeassinatura: TfrxMemoView
          Left = 143.622140000000000000
          Top = 47.133865589999920000
          Width = 498.897960000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR')
          ParentFont = False
        end
        object canhotorodapedata: TfrxMemoView
          Top = 47.133865589999920000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'DATA DO RECEBIMENTO')
          ParentFont = False
        end
        object canhotorodapelinha: TfrxLineView
          Align = baWidth
          Top = 3.779530000000022000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object canhotorodapenumeronfe: TfrxMemoView
          Left = 642.520100000000000000
          Top = 9.338590000000068000
          Width = 102.047212360000000000
          Height = 68.031496060000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NF-e'
            'N'#186' [Identificacao."NNF"]'
            'S'#233'rie [Identificacao."Serie" #n#000]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DadosAdicionais: TfrxChild
        FillType = ftBrush
        Height = 141.401589450000000000
        Top = 1167.874770000000000000
        Width = 744.567410000000000000
        Child = frxReport1.CanhotoRodape
        Stretched = True
        object memFisco: TfrxMemoView
          Left = 487.559055120000000000
          Top = 16.677179999999910000
          Width = 257.007852050000000000
          Height = 124.724409450000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'RESERVADO AO FISCO')
          ParentFont = False
        end
        object memInformacoesComplementares: TfrxMemoView
          Top = 16.677179999999910000
          Width = 487.559055120000000000
          Height = 124.724402130000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object memOBS: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Top = 23.881862910000110000
          Width = 485.669288900000000000
          Height = 117.165354330000000000
          ExpressionDelimiters = '[%,%]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
        object memDadosAdicionais: TfrxMemoView
          Top = 1.889763780000067000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'DADOS ADICIONAIS')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Duplicatas: TfrxMasterData
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 721.890230000000000000
        Width = 744.567410000000000000
        Columns = 5
        ColumnWidth = 148.913385826772000000
        DataSetName = 'Duplicatas'
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 744.567410000000000000
          Height = 37.795300000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo66: TfrxMemoView
          Width = 148.913385830000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            'N'#250'mero'
            'Vencimento'
            'Valor')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 56.692950000000000000
          Width = 3.779530000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          LineSpacing = 3.000000000000000000
          Memo.UTF8W = (
            ':'
            ':'
            ':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 60.472480000000000000
          Width = 86.929190000000000000
          Height = 12.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Duplicatas."NDup"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 60.472480000000000000
          Top = 12.472440939999960000
          Width = 86.929190000000000000
          Height = 12.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Duplicatas."DVenc"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 60.472480000000000000
          Top = 24.944881890000030000
          Width = 86.929190000000000000
          Height = 12.472440940000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[Duplicatas."VDup"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
    end
    object PageISSQN: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object subISSQN: TfrxMasterData
        FillType = ftBrush
        Height = 43.354342910000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'ISSQN'
        RowCount = 0
        object Memo5: TfrxMemoView
          Top = 3.779530000000001000
          Width = 430.866420000000000000
          Height = 13.228344020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#193'LCULO DO ISSQN')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          Top = 16.897650000000000000
          Width = 217.322859060000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'INSCRI'#199#195'O MUNICIPAL')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Top = 26.346390790000000000
          Width = 217.322859060000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          Memo.UTF8W = (
            '[Emitente."IM"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo60: TfrxMemoView
          Left = 217.322859060000000000
          Top = 16.897650000000000000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DOS SERVI'#199'OS')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 217.322859060000000000
          Top = 26.346390790000000000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VServ"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo62: TfrxMemoView
          Left = 396.850418110000000000
          Top = 16.897650000000000000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'BASE DE C'#193'LCULO DO ISSQN')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 396.850418110000000000
          Top = 26.346390790000000000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VBC"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo64: TfrxMemoView
          Left = 576.377977170000000000
          Top = 16.897650000000000000
          Width = 179.527559060000000000
          Height = 26.456692910000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'VALOR TOTAL DO ISSQN')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 576.377977170000000000
          Top = 26.346390790000000000
          Width = 179.527559060000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapX = 5.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ISSQN."VISS"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
    end
    object pgContDadosAdicionais: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.000000000000000000
      RightMargin = 7.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 124.724490000000000000
        Top = 90.708720000000000000
        Width = 740.787880000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        RowCount = 1
        Stretched = True
        object Memo137: TfrxMemoView
          Width = 740.787565120000000000
          Height = 124.724402130000000000
          StretchMode = smMaxHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'CONTINUACAO DAS INFORMA'#199#213'ES COMPLEMENTARES')
          ParentFont = False
        end
        object memContInfAdicionais: TfrxMemoView
          Top = 11.000000000000000000
          Width = 738.897798900000000000
          Height = 109.606294330000000000
          StretchMode = smMaxHeight
          ExpressionDelimiters = '[%,%]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          GapY = 2.000000000000000000
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 903
    Top = 34
  end
  object PopupMenu1: TPopupMenu
    Left = 679
    Top = 338
    object Recalculartotal1: TMenuItem
      Caption = 'Recalcular valores'
      OnClick = Recalculartotal1Click
    end
  end
end
