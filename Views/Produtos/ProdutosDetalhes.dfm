inherited FormProdutosDetalhes: TFormProdutosDetalhes
  Caption = 'Insumos'
  ClientHeight = 533
  ClientWidth = 729
  ExplicitWidth = 745
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 729
    Height = 484
    ExplicitWidth = 729
    ExplicitHeight = 484
    inherited tabPrincipal: TPageControl
      Width = 727
      Height = 482
      ActivePage = TabSheet2
      ExplicitWidth = 727
      ExplicitHeight = 482
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 719
        ExplicitHeight = 454
        inherited grdEntidade: TDBGrid
          Width = 719
          Height = 367
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 437
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustoCompra'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorVenda'
              Width = 80
              Visible = True
            end>
        end
        inherited pnlSuperior: TPanel
          Width = 719
          ExplicitWidth = 719
        end
        inherited pnlInferior: TPanel
          Top = 432
          Width = 719
          ExplicitTop = 432
          ExplicitWidth = 719
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 719
        ExplicitHeight = 454
        object TabControl1: TPageControl
          Left = 0
          Top = 0
          Width = 719
          Height = 454
          ActivePage = TabSheet4
          Align = alClient
          TabOrder = 0
          object TabSheet4: TTabSheet
            Caption = 'Dados iniciais'
            object Label11: TLabel
              Left = 5
              Top = 305
              Width = 67
              Height = 13
              Caption = 'Observa'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 11
              Top = 190
              Width = 54
              Height = 13
              Caption = 'Subgrupo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton4: TSpeedButton
              Left = 591
              Top = 182
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton4Click
            end
            object SpeedButton3: TSpeedButton
              Left = 591
              Top = 140
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton3Click
            end
            object SpeedButton2: TSpeedButton
              Left = 591
              Top = 94
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton2Click
            end
            object Label2: TLabel
              Left = 11
              Top = 99
              Width = 40
              Height = 13
              Caption = 'Fam'#237'lia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 11
              Top = 144
              Width = 34
              Height = 13
              Caption = 'Grupo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 11
              Top = 57
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
            object Label6: TLabel
              Left = 11
              Top = 17
              Width = 61
              Height = 13
              Caption = 'Refer'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 455
              Top = 16
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
            object Label32: TLabel
              Left = 11
              Top = 225
              Width = 46
              Height = 13
              Caption = 'Unidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 211
              Top = 221
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton1Click
            end
            object Label36: TLabel
              Left = 11
              Top = 266
              Width = 42
              Height = 13
              Caption = 'Servi'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object MemoObservacao: TMemo
              Left = 3
              Top = 324
              Width = 662
              Height = 81
              TabOrder = 5
            end
            object cboSubGrupo: TComboBox
              Left = 89
              Top = 182
              Width = 496
              Height = 21
              TabOrder = 4
            end
            object cboGrupo: TComboBox
              Left = 89
              Top = 141
              Width = 496
              Height = 21
              TabOrder = 3
            end
            object cboFamilia: TComboBox
              Left = 89
              Top = 94
              Width = 496
              Height = 21
              TabOrder = 2
            end
            object edtDescricao: TEdit
              Tag = 1
              Left = 89
              Top = 53
              Width = 496
              Height = 21
              TabOrder = 1
            end
            object edtReferencia: TEdit
              Left = 89
              Top = 13
              Width = 136
              Height = 21
              TabOrder = 0
            end
            object cboTipo: TComboBox
              Left = 485
              Top = 13
              Width = 100
              Height = 21
              TabOrder = 6
              Items.Strings = (
                'MATERIAL'
                'SERVI'#199'O')
            end
            object cboUnidadeMedida: TComboBox
              Left = 89
              Top = 222
              Width = 116
              Height = 21
              TabOrder = 7
            end
            object cboCodigoProdutoServico: TComboBox
              Left = 89
              Top = 263
              Width = 496
              Height = 21
              TabOrder = 8
            end
            object chkAtivo: TCheckBox
              Left = 264
              Top = 16
              Width = 97
              Height = 17
              Caption = 'Ativo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Forma'#231#227'o de Pre'#231'o'
            OnShow = TabSheet5Show
            object Label7: TLabel
              Left = 13
              Top = 18
              Width = 90
              Height = 13
              Caption = 'Pre'#231'o de Custo :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 13
              Top = 59
              Width = 75
              Height = 13
              Caption = 'Imposto(SN):'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 13
              Top = 99
              Width = 72
              Height = 13
              Caption = 'Taxa Cart'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 13
              Top = 137
              Width = 57
              Height = 13
              Caption = 'Comiss'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 13
              Top = 179
              Width = 56
              Height = 13
              Caption = 'Desconto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 13
              Top = 219
              Width = 59
              Height = 13
              Caption = 'Custo fixo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 13
              Top = 258
              Width = 34
              Height = 13
              Caption = 'Lucro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 13
              Top = 288
              Width = 105
              Height = 13
              Caption = 'Total de despesas:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbTotal: TLabel
              Left = 141
              Top = 288
              Width = 22
              Height = 13
              Caption = '0,00'
            end
            object Total: TLabel
              Left = 13
              Top = 315
              Width = 88
              Height = 13
              Caption = 'Pre'#231'o Sugerido:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 278
              Top = 315
              Width = 65
              Height = 13
              Caption = 'Pre'#231'o Base:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbValorLucroCartao: TLabel
              Left = 406
              Top = 346
              Width = 22
              Height = 13
              Caption = '0,00'
            end
            object Label26: TLabel
              Left = 406
              Top = 307
              Width = 34
              Height = 13
              Caption = 'Lucro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbPercentualLucroCartao: TLabel
              Left = 406
              Top = 329
              Width = 22
              Height = 13
              Caption = '0,00'
            end
            object lbValorLucro: TLabel
              Left = 141
              Top = 353
              Width = 22
              Height = 13
              Caption = '0,00'
            end
            object lbPercentualLucro: TLabel
              Left = 141
              Top = 334
              Width = 22
              Height = 13
              Caption = '0,00'
            end
            object Label20: TLabel
              Left = 141
              Top = 315
              Width = 34
              Height = 13
              Caption = 'Lucro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 224
              Top = 334
              Width = 11
              Height = 13
              Caption = '%'
            end
            object Label14: TLabel
              Left = 224
              Top = 356
              Width = 13
              Height = 13
              Caption = 'R$'
            end
            object Label31: TLabel
              Left = 489
              Top = 327
              Width = 11
              Height = 13
              Caption = '%'
            end
            object Label30: TLabel
              Left = 489
              Top = 346
              Width = 13
              Height = 13
              Caption = 'R$'
            end
            object edtCustoCompra: TEdit
              Left = 141
              Top = 11
              Width = 97
              Height = 21
              TabOrder = 0
              OnChange = edtCustoCompraChange
            end
            object edtSimplesNacional: TEdit
              Left = 141
              Top = 51
              Width = 97
              Height = 21
              TabOrder = 1
            end
            object edtTaxa: TEdit
              Left = 141
              Top = 90
              Width = 97
              Height = 21
              TabOrder = 2
            end
            object edtComissao: TEdit
              Left = 141
              Top = 130
              Width = 97
              Height = 21
              TabOrder = 3
            end
            object edtDesconto: TEdit
              Left = 141
              Top = 170
              Width = 97
              Height = 21
              TabOrder = 4
            end
            object edtCustoFixos: TEdit
              Left = 141
              Top = 211
              Width = 97
              Height = 21
              TabOrder = 5
            end
            object edtMargemLucro: TEdit
              Left = 141
              Top = 251
              Width = 97
              Height = 21
              TabOrder = 6
            end
            object edtValorVenda: TEdit
              Left = 13
              Top = 337
              Width = 97
              Height = 21
              TabOrder = 7
              OnChange = edtValorVendaChange
            end
            object edtValorBase: TEdit
              Left = 278
              Top = 337
              Width = 97
              Height = 21
              TabOrder = 8
              OnChange = edtValorBaseChange
            end
            object GroupBox1: TGroupBox
              Left = 288
              Top = 3
              Width = 337
              Height = 270
              Caption = 'Parametros de forma'#231#227'o de pre'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              object Label8: TLabel
                Left = 15
                Top = 62
                Width = 51
                Height = 13
                Caption = 'Imposto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 15
                Top = 93
                Width = 72
                Height = 13
                Caption = 'Taxa Cart'#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 15
                Top = 123
                Width = 51
                Height = 13
                Caption = 'Comis'#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label23: TLabel
                Left = 15
                Top = 153
                Width = 104
                Height = 13
                Caption = 'Desconto Maximo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label22: TLabel
                Left = 15
                Top = 183
                Width = 59
                Height = 13
                Caption = 'Custo fixo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label24: TLabel
                Left = 15
                Top = 211
                Width = 34
                Height = 13
                Caption = 'Lucro:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label25: TLabel
                Left = 15
                Top = 238
                Width = 51
                Height = 13
                Caption = 'Mark-up:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label19: TLabel
                Left = 15
                Top = 30
                Width = 67
                Height = 13
                Caption = 'Parametro :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object edtMarkup: TEdit
                Left = 128
                Top = 231
                Width = 57
                Height = 21
                TabOrder = 7
              end
              object edtParamLucro: TEdit
                Left = 128
                Top = 203
                Width = 57
                Height = 21
                TabOrder = 6
                OnChange = edtParamLucroChange
              end
              object edtParamCustoFixo: TEdit
                Left = 128
                Top = 174
                Width = 57
                Height = 21
                TabOrder = 5
                OnChange = edtParamCustoFixoChange
              end
              object edtParamDesconto: TEdit
                Left = 128
                Top = 145
                Width = 57
                Height = 21
                TabOrder = 4
                OnChange = edtParamDescontoChange
              end
              object edtParamComissao: TEdit
                Left = 128
                Top = 115
                Width = 57
                Height = 21
                TabOrder = 3
                OnChange = edtParamComissaoChange
              end
              object edtParamTaxa: TEdit
                Left = 128
                Top = 86
                Width = 57
                Height = 21
                TabOrder = 2
                OnChange = edtParamTaxaChange
              end
              object edtParamImpostoSimples: TEdit
                Left = 128
                Top = 53
                Width = 57
                Height = 21
                TabOrder = 1
                OnChange = edtParamImpostoSimplesChange
              end
              object cboParametrosPrecoVenda: TComboBox
                Left = 128
                Top = 23
                Width = 180
                Height = 21
                TabOrder = 0
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Estoque'
            ImageIndex = 2
            OnShow = TabSheet3Show
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label33: TLabel
              Left = 16
              Top = 305
              Width = 90
              Height = 13
              Caption = 'Estoque m'#237'nimo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBGrid3: TDBGrid
              Left = 16
              Top = 32
              Width = 233
              Height = 242
              DataSource = srcEstoqueProduto
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Descricao'
                  Title.Caption = 'Estoque'
                  Width = 122
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Quantidade'
                  Width = 76
                  Visible = True
                end>
            end
            object edtEstoqueMinimo: TEdit
              Left = 168
              Top = 297
              Width = 81
              Height = 21
              TabOrder = 1
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Fiscal'
            ImageIndex = 3
            object Label29: TLabel
              Left = 12
              Top = 35
              Width = 65
              Height = 13
              Caption = 'C'#243'digo NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton5: TSpeedButton
              Left = 592
              Top = 32
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton5Click
            end
            object Label34: TLabel
              Left = 12
              Top = 75
              Width = 68
              Height = 13
              Caption = 'C'#243'digo CEST'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton6: TSpeedButton
              Left = 592
              Top = 114
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton6Click
            end
            object Label35: TLabel
              Left = 12
              Top = 117
              Width = 73
              Height = 13
              Caption = 'C'#243'digo NFS-e'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cboCodigoNCM: TComboBox
              Left = 90
              Top = 32
              Width = 496
              Height = 21
              DropDownCount = 20
              TabOrder = 0
              Items.Strings = (
                '')
            end
            object edtCodigoCEST: TEdit
              Left = 90
              Top = 72
              Width = 121
              Height = 21
              MaxLength = 7
              TabOrder = 1
            end
            object cboCodigoServicoNFSe: TComboBox
              Left = 90
              Top = 114
              Width = 496
              Height = 21
              DropDownCount = 20
              TabOrder = 2
              Items.Strings = (
                '1 '#8211' Servi'#231'os de inform'#225'tica e cong'#234'neres.'
                '1.01 '#8211' An'#225'lise e desenvolvimento de sistemas.'
                '1.02 '#8211' Programa'#231#227'o.'
                '1.03 '#8211' Processamento de dados e cong'#234'neres.'
                
                  '1.04 '#8211' Elabora'#231#227'o de programas de computadores, inclusive de jog' +
                  'os eletr'#244'nicos.'
                
                  '1.05 '#8211' Licenciamento ou cess'#227'o de direito de uso de programas de' +
                  ' computa'#231#227'o.'
                '1.06 '#8211' Assessoria e consultoria em inform'#225'tica.'
                
                  '1.07 '#8211' Suporte t'#233'cnico em inform'#225'tica, inclusive instala'#231#227'o, con' +
                  'figura'#231#227'o e manuten'#231#227'o de programas de computa'#231#227'o e bancos de da' +
                  'dos.'
                
                  '1.08 '#8211' Planejamento, confec'#231#227'o, manuten'#231#227'o e atualiza'#231#227'o de p'#225'gi' +
                  'nas eletr'#244'nicas.'
                
                  '2 '#8211' Servi'#231'os de pesquisas e desenvolvimento de qualquer natureza' +
                  '.'
                
                  '2.01 '#8211' Servi'#231'os de pesquisas e desenvolvimento de qualquer natur' +
                  'eza.'
                
                  '3 '#8211' Servi'#231'os prestados mediante loca'#231#227'o, cess'#227'o de direito de us' +
                  'o e cong'#234'neres.'
                
                  '3.01 '#8211' (VETADO) 3.02 '#8211' Cess'#227'o de direito de uso de marcas e de s' +
                  'inais de propaganda.'
                
                  '3.03 '#8211' Explora'#231#227'o de sal'#245'es de festas, centro de conven'#231#245'es, esc' +
                  'rit'#243'rios virtuais, stands, quadras esportivas, est'#225'dios, gin'#225'sio' +
                  's, audit'#243'rios, casas de espet'#225'culos, parques de divers'#245'es, canch' +
                  'as e cong'#234'neres, para realiza'#231#227'o de eventos ou neg'#243'cios de qualq' +
                  'uer natureza.'
                
                  '3.04 '#8211' Loca'#231#227'o, subloca'#231#227'o, arrendamento, direito de passagem ou' +
                  ' permiss'#227'o de uso, compartilhado ou n'#227'o, de ferrovia, rodovia, p' +
                  'ostes, cabos, dutos e condutos de qualquer natureza.'
                
                  '3.05 '#8211' Cess'#227'o de andaimes, palcos, coberturas e outras estrutura' +
                  's de uso tempor'#225'rio.'
                '4 '#8211' Servi'#231'os de sa'#250'de, assist'#234'ncia m'#233'dica e cong'#234'neres.'
                '4.01 '#8211' Medicina e biomedicina.'
                
                  '4.02 '#8211' An'#225'lises cl'#237'nicas, patologia, eletricidade m'#233'dica, radiot' +
                  'erapia, quimioterapia, ultra-sonografia, resson'#226'ncia magn'#233'tica, ' +
                  'radiologia, tomografia e cong'#234'neres.'
                
                  '4.03 '#8211' Hospitais, cl'#237'nicas, laborat'#243'rios, sanat'#243'rios, manic'#244'mios' +
                  ', casas de sa'#250'de, prontos-socorros, ambulat'#243'rios e cong'#234'neres.'
                '4.04 '#8211' Instrumenta'#231#227'o cir'#250'rgica.'
                '4.05 '#8211' Acupuntura.'
                '4.06 '#8211' Enfermagem, inclusive servi'#231'os auxiliares.'
                '4.07 '#8211' Servi'#231'os farmac'#234'uticos.'
                '4.08 '#8211' Terapia ocupacional, fisioterapia e fonoaudiologia.'
                
                  '4.09 '#8211' Terapias de qualquer esp'#233'cie destinadas ao tratamento f'#237's' +
                  'ico, org'#226'nico e mental.'
                '4.10 '#8211' Nutri'#231#227'o.'
                '4.11 '#8211' Obstetr'#237'cia.'
                '4.12 '#8211' Odontologia.'
                '4.13 '#8211' Ort'#243'ptica.'
                '4.14 '#8211' Pr'#243'teses sob encomenda.'
                '4.15 '#8211' Psican'#225'lise.'
                '4.16 '#8211' Psicologia.'
                
                  '4.17 '#8211' Casas de repouso e de recupera'#231#227'o, creches, asilos e cong' +
                  #234'neres.'
                
                  '4.18 '#8211' Insemina'#231#227'o artificial, fertiliza'#231#227'o in vitro e cong'#234'nere' +
                  's.'
                
                  '4.19 '#8211' Bancos de sangue, leite, pele, olhos, '#243'vulos, s'#234'men e con' +
                  'g'#234'neres.'
                
                  '4.20 '#8211' Coleta de sangue, leite, tecidos, s'#234'men, '#243'rg'#227'os e materia' +
                  'is biol'#243'gicos de qualquer esp'#233'cie.'
                
                  '4.21 '#8211' Unidade de atendimento, assist'#234'ncia ou tratamento m'#243'vel e' +
                  ' cong'#234'neres.'
                
                  '4.22 '#8211' Planos de medicina de grupo ou individual e conv'#234'nios par' +
                  'a presta'#231#227'o de assist'#234'ncia m'#233'dica, hospitalar, odontol'#243'gica e co' +
                  'ng'#234'neres.'
                
                  '4.23 '#8211' Outros planos de sa'#250'de que se cumpram atrav'#233's de servi'#231'os' +
                  ' de terceiros contratados, credenciados, cooperados ou apenas pa' +
                  'gos pelo operador do plano mediante indica'#231#227'o do benefici'#225'rio.'
                '5 '#8211' Servi'#231'os de medicina e assist'#234'ncia veterin'#225'ria e cong'#234'neres.'
                '5.01 '#8211' Medicina veterin'#225'ria e zootecnia.'
                
                  '5.02 '#8211' Hospitais, cl'#237'nicas, ambulat'#243'rios, prontos-socorros e con' +
                  'g'#234'neres, na '#225'rea veterin'#225'ria.'
                '5.03 '#8211' Laborat'#243'rios de an'#225'lise na '#225'rea veterin'#225'ria.'
                
                  '5.04 '#8211' Insemina'#231#227'o artificial, fertiliza'#231#227'o in vitro e cong'#234'nere' +
                  's.'
                '5.05 '#8211' Bancos de sangue e de '#243'rg'#227'os e cong'#234'neres.'
                
                  '5.06 '#8211' Coleta de sangue, leite, tecidos, s'#234'men, '#243'rg'#227'os e materia' +
                  'is biol'#243'gicos de qualquer esp'#233'cie.'
                
                  '5.07 '#8211' Unidade de atendimento, assist'#234'ncia ou tratamento m'#243'vel e' +
                  ' cong'#234'neres.'
                
                  '5.08 '#8211' Guarda, tratamento, amestramento, embelezamento, alojamen' +
                  'to e cong'#234'neres.'
                '5.09 '#8211' Planos de atendimento e assist'#234'ncia m'#233'dico-veterin'#225'ria.'
                
                  '6 '#8211' Servi'#231'os de cuidados pessoais, est'#233'tica, atividades f'#237'sicas ' +
                  'e cong'#234'neres.'
                
                  '6.01 '#8211' Barbearia, cabeleireiros, manicuros, pedicuros e cong'#234'ner' +
                  'es.'
                '6.02 '#8211' Esteticistas, tratamento de pele, depila'#231#227'o e cong'#234'neres.'
                '6.03 '#8211' Banhos, duchas, sauna, massagens e cong'#234'neres.'
                
                  '6.04 '#8211' Gin'#225'stica, dan'#231'a, esportes, nata'#231#227'o, artes marciais e dem' +
                  'ais atividades f'#237'sicas.'
                '6.05 '#8211' Centros de emagrecimento, spa e cong'#234'neres.'
                
                  '7 '#8211' Servi'#231'os relativos a engenharia, arquitetura, geologia, urba' +
                  'nismo, constru'#231#227'o civil, manuten'#231#227'o, limpeza, meio ambiente, san' +
                  'eamento e cong'#234'neres.'
                
                  '7.01 '#8211' Engenharia, agronomia, agrimensura, arquitetura, geologia' +
                  ', urbanismo, paisagismo e cong'#234'neres.'
                
                  '7.02 '#8211' Execu'#231#227'o, por administra'#231#227'o, empreitada ou subempreitada,' +
                  ' de obras de constru'#231#227'o civil, hidr'#225'ulica ou el'#233'trica e de outra' +
                  's obras semelhantes, inclusive sondagem, perfura'#231#227'o de po'#231'os, es' +
                  'cava'#231#227'o, drenagem e irriga'#231#227'o, terraplanagem, pavimenta'#231#227'o, conc' +
                  'retagem e a instala'#231#227'o e montagem de produtos, pe'#231'as e equipamen' +
                  'tos (exceto o fornecimento de mercadorias produzidas pelo presta' +
                  'dor de servi'#231'os fora do local da presta'#231#227'o dos servi'#231'os, que fic' +
                  'a sujeito ao ICMS).'
                
                  '"7.03 '#8211' Elabora'#231#227'o de planos diretores, estudos de viabilidade, ' +
                  'estudos organizacionais e outros, relacionados com obras e servi' +
                  #231'os de engenharia; elabora'#231#227'o de anteprojetos, projetos b'#225'sicos ' +
                  'e projetos executivos para trabalhos de engenharia."'
                '7.04 '#8211' Demoli'#231#227'o.'
                
                  '7.05 '#8211' Repara'#231#227'o, conserva'#231#227'o e reforma de edif'#237'cios, estradas, ' +
                  'pontes, portos e cong'#234'neres (exceto o fornecimento de mercadoria' +
                  's produzidas pelo prestador dos servi'#231'os, fora do local da prest' +
                  'a'#231#227'o dos servi'#231'os, que fica sujeito ao ICMS).'
                
                  '7.06 '#8211' Coloca'#231#227'o e instala'#231#227'o de tapetes, carpetes, assoalhos, c' +
                  'ortinas, revestimentos de parede, vidros, divis'#243'rias, placas de ' +
                  'gesso e cong'#234'neres, com material fornecido pelo tomador do servi' +
                  #231'o.'
                
                  '7.07 '#8211' Recupera'#231#227'o, raspagem, polimento e lustra'#231#227'o de pisos e c' +
                  'ong'#234'neres.'
                '7.08 '#8211' Calafeta'#231#227'o.'
                
                  '7.09 '#8211' Varri'#231#227'o, coleta, remo'#231#227'o, incinera'#231#227'o, tratamento, recic' +
                  'lagem, separa'#231#227'o e destina'#231#227'o final de lixo, rejeitos e outros r' +
                  'es'#237'duos quaisquer.'
                
                  '7.10 '#8211' Limpeza, manuten'#231#227'o e conserva'#231#227'o de vias e logradouros p' +
                  #250'blicos, im'#243'veis, chamin'#233's, piscinas, parques, jardins e cong'#234'ne' +
                  'res.'
                
                  '7.11 '#8211' Decora'#231#227'o e jardinagem, inclusive corte e poda de '#225'rvores' +
                  '.'
                
                  '7.12 '#8211' Controle e tratamento de efluentes de qualquer natureza e' +
                  ' de agentes f'#237'sicos, qu'#237'micos e biol'#243'gicos.'
                
                  '7.13 '#8211' Dedetiza'#231#227'o, desinfec'#231#227'o, desinsetiza'#231#227'o, imuniza'#231#227'o, hig' +
                  'ieniza'#231#227'o, desratiza'#231#227'o, pulveriza'#231#227'o e cong'#234'neres.'
                
                  '7.14 '#8211' (VETADO) 7.15 '#8211' (VETADO) 7.16 '#8211' Florestamento, refloresta' +
                  'mento, semeadura, aduba'#231#227'o e cong'#234'neres.'
                '7.17 '#8211' Escoramento, conten'#231#227'o de encostas e servi'#231'os cong'#234'neres.'
                
                  '7.18 '#8211' Limpeza e dragagem de rios, portos, canais, ba'#237'as, lagos,' +
                  ' lagoas, represas, a'#231'udes e cong'#234'neres.'
                
                  '7.19 '#8211' Acompanhamento e fiscaliza'#231#227'o da execu'#231#227'o de obras de eng' +
                  'enharia, arquitetura e urbanismo.'
                
                  '7.20 '#8211' Aerofotogrametria (inclusive interpreta'#231#227'o), cartografia,' +
                  ' mapeamento, levantamentos topogr'#225'ficos, batim'#233'tricos, geogr'#225'fic' +
                  'os, geod'#233'sicos, geol'#243'gicos, geof'#237'sicos e cong'#234'neres.'
                
                  '7.21 '#8211' Pesquisa, perfura'#231#227'o, cimenta'#231#227'o, mergulho, perfilagem, c' +
                  'oncreta'#231#227'o, testemunhagem, pescaria, estimula'#231#227'o e outros servi'#231 +
                  'os relacionados com a explora'#231#227'o e explota'#231#227'o de petr'#243'leo, g'#225's n' +
                  'atural e de outros recursos minerais.'
                '7.22 '#8211' Nuclea'#231#227'o e bombardeamento de nuvens e cong'#234'neres.'
                
                  '8 '#8211' Servi'#231'os de educa'#231#227'o, ensino, orienta'#231#227'o pedag'#243'gica e educac' +
                  'ional, instru'#231#227'o, treinamento e avalia'#231#227'o pessoal de qualquer gr' +
                  'au ou natureza.'
                
                  '8.01 '#8211' Ensino regular pr'#233'-escolar, fundamental, m'#233'dio e superior' +
                  '.'
                
                  '8.02 '#8211' Instru'#231#227'o, treinamento, orienta'#231#227'o pedag'#243'gica e educacion' +
                  'al, avalia'#231#227'o de conhecimentos de qualquer natureza.'
                
                  '9 '#8211' Servi'#231'os relativos a hospedagem, turismo, viagens e cong'#234'ner' +
                  'es.'
                
                  '"9.01 '#8211' Hospedagem de qualquer natureza em hot'#233'is, apart-service' +
                  ' condominiais, flat, apart-hot'#233'is, hot'#233'is resid'#234'ncia, residence-' +
                  'service, suite service, hotelaria mar'#237'tima, mot'#233'is, pens'#245'es e co' +
                  'ng'#234'neres; ocupa'#231#227'o por temporada com fornecimento de servi'#231'o (o ' +
                  'valor da alimenta'#231#227'o e gorjeta, quando inclu'#237'do no pre'#231'o da di'#225'r' +
                  'ia, fica sujeito ao Imposto Sobre Servi'#231'os)."'
                
                  '9.02 '#8211' Agenciamento, organiza'#231#227'o, promo'#231#227'o, intermedia'#231#227'o e exec' +
                  'u'#231#227'o de programas de turismo, passeios, viagens, excurs'#245'es, hosp' +
                  'edagens e cong'#234'neres.'
                '9.03 '#8211' Guias de turismo.'
                '10 '#8211' Servi'#231'os de intermedia'#231#227'o e cong'#234'neres.'
                
                  '10.01 '#8211' Agenciamento, corretagem ou intermedia'#231#227'o de c'#226'mbio, de ' +
                  'seguros, de cart'#245'es de cr'#233'dito, de planos de sa'#250'de e de planos d' +
                  'e previd'#234'ncia privada.'
                
                  '10.02 '#8211' Agenciamento, corretagem ou intermedia'#231#227'o de t'#237'tulos em ' +
                  'geral, valores mobili'#225'rios e contratos quaisquer.'
                
                  '10.03 '#8211' Agenciamento, corretagem ou intermedia'#231#227'o de direitos de' +
                  ' propriedade industrial, art'#237'stica ou liter'#225'ria.'
                
                  '10.04 '#8211' Agenciamento, corretagem ou intermedia'#231#227'o de contratos d' +
                  'e arrendamento mercantil (leasing), de franquia (franchising) e ' +
                  'de faturiza'#231#227'o (factoring).'
                
                  '10.05 '#8211' Agenciamento, corretagem ou intermedia'#231#227'o de bens m'#243'veis' +
                  ' ou im'#243'veis, n'#227'o abrangidos em outros itens ou subitens, inclusi' +
                  've aqueles realizados no '#226'mbito de Bolsas de Mercadorias e Futur' +
                  'os, por quaisquer meios.'
                '10.06 '#8211' Agenciamento mar'#237'timo.'
                '10.07 '#8211' Agenciamento de not'#237'cias.'
                
                  '10.08 '#8211' Agenciamento de publicidade e propaganda, inclusive o ag' +
                  'enciamento de veicula'#231#227'o por quaisquer meios.'
                '10.09 '#8211' Representa'#231#227'o de qualquer natureza, inclusive comercial.'
                '10.10 '#8211' Distribui'#231#227'o de bens de terceiros.'
                
                  '11 '#8211' Servi'#231'os de guarda, estacionamento, armazenamento, vigil'#226'nc' +
                  'ia e cong'#234'neres.'
                
                  '11.01 '#8211' Guarda e estacionamento de ve'#237'culos terrestres automotor' +
                  'es, de aeronaves e de embarca'#231#245'es.'
                
                  '11.02 '#8211' Vigil'#226'ncia, seguran'#231'a ou monitoramento de bens e pessoas' +
                  '.'
                '11.03 '#8211' Escolta, inclusive de ve'#237'culos e cargas.'
                
                  '11.04 '#8211' Armazenamento, dep'#243'sito, carga, descarga, arruma'#231#227'o e gu' +
                  'arda de bens de qualquer esp'#233'cie.'
                '12 '#8211' Servi'#231'os de divers'#245'es, lazer, entretenimento e cong'#234'neres.'
                '12.01 '#8211' Espet'#225'culos teatrais.'
                '12.02 '#8211' Exibi'#231#245'es cinematogr'#225'ficas.'
                '12.03 '#8211' Espet'#225'culos circenses.'
                '12.04 '#8211' Programas de audit'#243'rio.'
                '12.05 '#8211' Parques de divers'#245'es, centros de lazer e cong'#234'neres.'
                '12.06 '#8211' Boates, taxi-dancing e cong'#234'neres.'
                
                  '12.07 '#8211' Shows, ballet, dan'#231'as, desfiles, bailes, '#243'peras, concert' +
                  'os, recitais, festivais e cong'#234'neres.'
                '12.08 '#8211' Feiras, exposi'#231#245'es, congressos e cong'#234'neres.'
                '12.09 '#8211' Bilhares, boliches e divers'#245'es eletr'#244'nicas ou n'#227'o.'
                '12.10 '#8211' Corridas e competi'#231#245'es de animais.'
                
                  '12.11 '#8211' Competi'#231#245'es esportivas ou de destreza f'#237'sica ou intelect' +
                  'ual, com ou sem a participa'#231#227'o do espectador.'
                '12.12 '#8211' Execu'#231#227'o de m'#250'sica.'
                
                  '12.13 '#8211' Produ'#231#227'o, mediante ou sem encomenda pr'#233'via, de eventos, ' +
                  'espet'#225'culos, entrevistas, shows, ballet, dan'#231'as, desfiles, baile' +
                  's, teatros, '#243'peras, concertos, recitais, festivais e cong'#234'neres.'
                
                  '12.14 '#8211' Fornecimento de m'#250'sica para ambientes fechados ou n'#227'o, m' +
                  'ediante transmiss'#227'o por qualquer processo.'
                
                  '12.15 '#8211' Desfiles de blocos carnavalescos ou folcl'#243'ricos, trios e' +
                  'l'#233'tricos e cong'#234'neres.'
                
                  '12.16 '#8211' Exibi'#231#227'o de filmes, entrevistas, musicais, espet'#225'culos, ' +
                  'shows, concertos, desfiles, '#243'peras, competi'#231#245'es esportivas, de d' +
                  'estreza intelectual ou cong'#234'neres.'
                
                  '12.17 '#8211' Recrea'#231#227'o e anima'#231#227'o, inclusive em festas e eventos de q' +
                  'ualquer natureza.'
                
                  '13 '#8211' Servi'#231'os relativos a fonografia, fotografia, cinematografia' +
                  ' e reprografia.'
                
                  '13.01 '#8211' (VETADO) 13.02 '#8211' Fonografia ou grava'#231#227'o de sons, inclusi' +
                  've trucagem, dublagem, mixagem e cong'#234'neres.'
                
                  '13.03 '#8211' Fotografia e cinematografia, inclusive revela'#231#227'o, amplia' +
                  #231#227'o, c'#243'pia, reprodu'#231#227'o, trucagem e cong'#234'neres.'
                '13.04 '#8211' Reprografia, microfilmagem e digitaliza'#231#227'o.'
                
                  '13.05 '#8211' Composi'#231#227'o gr'#225'fica, fotocomposi'#231#227'o, clicheria, zincograf' +
                  'ia, litografia, fotolitografia.'
                '14 '#8211' Servi'#231'os relativos a bens de terceiros.'
                
                  '14.01 '#8211' Lubrifica'#231#227'o, limpeza, lustra'#231#227'o, revis'#227'o, carga e recar' +
                  'ga, conserto, restaura'#231#227'o, blindagem, manuten'#231#227'o e conserva'#231#227'o d' +
                  'e m'#225'quinas, ve'#237'culos, aparelhos, equipamentos, motores, elevador' +
                  'es ou de qualquer objeto (exceto pe'#231'as e partes empregadas, que ' +
                  'ficam sujeitas ao ICMS).'
                '14.02 '#8211' Assist'#234'ncia t'#233'cnica.'
                
                  '14.03 '#8211' Recondicionamento de motores (exceto pe'#231'as e partes empr' +
                  'egadas, que ficam sujeitas ao ICMS).'
                '14.04 '#8211' Recauchutagem ou regenera'#231#227'o de pneus.'
                
                  '14.05 '#8211' Restaura'#231#227'o, recondicionamento, acondicionamento, pintur' +
                  'a, beneficiamento, lavagem, secagem, tingimento, galvanoplastia,' +
                  ' anodiza'#231#227'o, corte, recorte, polimento, plastifica'#231#227'o e cong'#234'ner' +
                  'es, de objetos quaisquer.'
                
                  '14.06 '#8211' Instala'#231#227'o e montagem de aparelhos, m'#225'quinas e equipamen' +
                  'tos, inclusive montagem industrial, prestados ao usu'#225'rio final, ' +
                  'exclusivamente com material por ele fornecido.'
                '14.07 '#8211' Coloca'#231#227'o de molduras e cong'#234'neres.'
                
                  '14.08 '#8211' Encaderna'#231#227'o, grava'#231#227'o e doura'#231#227'o de livros, revistas e ' +
                  'cong'#234'neres.'
                
                  '14.09 '#8211' Alfaiataria e costura, quando o material for fornecido p' +
                  'elo usu'#225'rio final, exceto aviamento.'
                '14.10 '#8211' Tinturaria e lavanderia.'
                '14.11 '#8211' Tape'#231'aria e reforma de estofamentos em geral.'
                '14.12 '#8211' Funilaria e lanternagem.'
                '14.13 '#8211' Carpintaria e serralheria.'
                
                  '15 '#8211' Servi'#231'os relacionados ao setor banc'#225'rio ou financeiro, incl' +
                  'usive aqueles prestados por institui'#231#245'es financeiras autorizadas' +
                  ' a funcionar pela Uni'#227'o ou por quem de direito.'
                
                  '15.01 '#8211' Administra'#231#227'o de fundos quaisquer, de cons'#243'rcio, de cart' +
                  #227'o de cr'#233'dito ou d'#233'bito e cong'#234'neres, de carteira de clientes, d' +
                  'e cheques pr'#233'-datados e cong'#234'neres.'
                
                  '15.02 '#8211' Abertura de contas em geral, inclusive conta-corrente, c' +
                  'onta de investimentos e aplica'#231#227'o e caderneta de poupan'#231'a, no Pa' +
                  #237's e no exterior, bem como a manuten'#231#227'o das referidas contas ati' +
                  'vas e inativas.'
                
                  '15.03 '#8211' Loca'#231#227'o e manuten'#231#227'o de cofres particulares, de terminai' +
                  's eletr'#244'nicos, de terminais de atendimento e de bens e equipamen' +
                  'tos em geral.'
                
                  '15.04 '#8211' Fornecimento ou emiss'#227'o de atestados em geral, inclusive' +
                  ' atestado de idoneidade, atestado de capacidade financeira e con' +
                  'g'#234'neres.'
                
                  '15.05 '#8211' Cadastro, elabora'#231#227'o de ficha cadastral, renova'#231#227'o cadas' +
                  'tral e cong'#234'neres, inclus'#227'o ou exclus'#227'o no Cadastro de Emitentes' +
                  ' de Cheques sem Fundos '#8211' CCF ou em quaisquer outros bancos cadas' +
                  'trais.'
                
                  '"15.06 '#8211' Emiss'#227'o, reemiss'#227'o e fornecimento de avisos, comprovant' +
                  'es e documentos em geral; abono de firmas; coleta e entrega de d' +
                  'ocumentos, bens e valores; comunica'#231#227'o com outra ag'#234'ncia ou com ' +
                  'a administra'#231#227'o central; licenciamento eletr'#244'nico de ve'#237'culos; t' +
                  'ransfer'#234'ncia de ve'#237'culos; agenciamento fiduci'#225'rio ou deposit'#225'rio' +
                  '; devolu'#231#227'o de bens em cust'#243'dia."'
                
                  '"15.07 '#8211' Acesso, movimenta'#231#227'o, atendimento e consulta a contas e' +
                  'm geral, por qualquer meio ou processo, inclusive por telefone, ' +
                  'fac-s'#237'mile, internet e telex, acesso a terminais de atendimento,' +
                  ' inclusive vinte e quatro horas; acesso a outro banco e a rede c' +
                  'ompartilhada; fornecimento de saldo, extrato e demais informa'#231#245'e' +
                  's relativas a contas em geral, por qualquer meio ou processo."'
                
                  '"15.08 '#8211' Emiss'#227'o, reemiss'#227'o, altera'#231#227'o, cess'#227'o, substitui'#231#227'o, ca' +
                  'ncelamento e registro de contrato de cr'#233'dito; estudo, an'#225'lise e ' +
                  'avalia'#231#227'o de opera'#231#245'es de cr'#233'dito; emiss'#227'o, concess'#227'o, altera'#231#227'o' +
                  ' ou contrata'#231#227'o de aval, fian'#231'a, anu'#234'ncia e cong'#234'neres; servi'#231'os' +
                  ' relativos a abertura de cr'#233'dito, para quaisquer fins."'
                
                  '15.09 '#8211' Arrendamento mercantil (leasing) de quaisquer bens, incl' +
                  'usive cess'#227'o de direitos e obriga'#231#245'es, substitui'#231#227'o de garantia,' +
                  ' altera'#231#227'o, cancelamento e registro de contrato, e demais servi'#231 +
                  'os relacionados ao arrendamento mercantil (leasing).'
                
                  '"15.10 '#8211' Servi'#231'os relacionados a cobran'#231'as, recebimentos ou paga' +
                  'mentos em geral, de t'#237'tulos quaisquer, de contas ou carn'#234's, de c' +
                  #226'mbio, de tributos e por conta de terceiros, inclusive os efetua' +
                  'dos por meio eletr'#244'nico, autom'#225'tico ou por m'#225'quinas de atendimen' +
                  'to; fornecimento de posi'#231#227'o de cobran'#231'a, recebimento ou pagament' +
                  'o; emiss'#227'o de carn'#234's, fichas de compensa'#231#227'o, impressos e documen' +
                  'tos em geral."'
                
                  '15.11 '#8211' Devolu'#231#227'o de t'#237'tulos, protesto de t'#237'tulos, susta'#231#227'o de p' +
                  'rotesto, manuten'#231#227'o de t'#237'tulos, reapresenta'#231#227'o de t'#237'tulos, e dem' +
                  'ais servi'#231'os a eles relacionados.'
                
                  '15.12 '#8211' Cust'#243'dia em geral, inclusive de t'#237'tulos e valores mobili' +
                  #225'rios.'
                
                  '"15.13 '#8211' Servi'#231'os relacionados a opera'#231#245'es de c'#226'mbio em geral, e' +
                  'di'#231#227'o, altera'#231#227'o, prorroga'#231#227'o, cancelamento e baixa de contrato ' +
                  'de c'#226'mbio; emiss'#227'o de registro de exporta'#231#227'o ou de cr'#233'dito; cobr' +
                  'an'#231'a ou dep'#243'sito no exterior; emiss'#227'o, fornecimento e cancelamen' +
                  'to de cheques de viagem; fornecimento, transfer'#234'ncia, cancelamen' +
                  'to e demais servi'#231'os relativos a carta de cr'#233'dito de importa'#231#227'o,' +
                  ' exporta'#231#227'o e garantias recebidas; envio e recebimento de mensag' +
                  'ens em geral relacionadas a opera'#231#245'es de c'#226'mbio."'
                
                  '15.14 '#8211' Fornecimento, emiss'#227'o, reemiss'#227'o, renova'#231#227'o e manuten'#231#227'o' +
                  ' de cart'#227'o magn'#233'tico, cart'#227'o de cr'#233'dito, cart'#227'o de d'#233'bito, cart'#227 +
                  'o sal'#225'rio e cong'#234'neres.'
                
                  '"15.15 '#8211' Compensa'#231#227'o de cheques e t'#237'tulos quaisquer; servi'#231'os re' +
                  'lacionados a dep'#243'sito, inclusive dep'#243'sito identificado, a saque ' +
                  'de contas quaisquer, por qualquer meio ou processo, inclusive em' +
                  ' terminais eletr'#244'nicos e de atendimento."'
                
                  '"15.16 '#8211' Emiss'#227'o, reemiss'#227'o, liquida'#231#227'o, altera'#231#227'o, cancelamento' +
                  ' e baixa de ordens de pagamento, ordens de cr'#233'dito e similares, ' +
                  'por qualquer meio ou processo; servi'#231'os relacionados '#224' transfer'#234 +
                  'ncia de valores, dados, fundos, pagamentos e similares, inclusiv' +
                  'e entre contas em geral."'
                
                  '15.17 '#8211' Emiss'#227'o, fornecimento, devolu'#231#227'o, susta'#231#227'o, cancelamento' +
                  ' e oposi'#231#227'o de cheques quaisquer, avulso ou por tal'#227'o.'
                
                  '15.18 '#8211' Servi'#231'os relacionados a cr'#233'dito imobili'#225'rio, avalia'#231#227'o e' +
                  ' vistoria de im'#243'vel ou obra, an'#225'lise t'#233'cnica e jur'#237'dica, emiss'#227'o' +
                  ', reemiss'#227'o, altera'#231#227'o, transfer'#234'ncia e renegocia'#231#227'o de contrato' +
                  ', emiss'#227'o e reemiss'#227'o do termo de quita'#231#227'o e demais servi'#231'os rel' +
                  'acionados a cr'#233'dito imobili'#225'rio.'
                '16 '#8211' Servi'#231'os de transporte de natureza municipal.'
                '16.01 '#8211' Servi'#231'os de transporte de natureza municipal.'
                
                  '17 '#8211' Servi'#231'os de apoio t'#233'cnico, administrativo, jur'#237'dico, cont'#225'b' +
                  'il, comercial e cong'#234'neres.'
                
                  '"17.01 '#8211' Assessoria ou consultoria de qualquer natureza, n'#227'o con' +
                  'tida em outros itens desta lista; an'#225'lise, exame, pesquisa, cole' +
                  'ta, compila'#231#227'o e fornecimento de dados e informa'#231#245'es de qualquer' +
                  ' natureza, inclusive cadastro e similares."'
                
                  '17.02 '#8211' Datilografia, digita'#231#227'o, estenografia, expediente, secre' +
                  'taria em geral, resposta aud'#237'vel, reda'#231#227'o, edi'#231#227'o, interpreta'#231#227'o' +
                  ', revis'#227'o, tradu'#231#227'o, apoio e infra-estrutura administrativa e co' +
                  'ng'#234'neres.'
                
                  '17.03 '#8211' Planejamento, coordena'#231#227'o, programa'#231#227'o ou organiza'#231#227'o t'#233 +
                  'cnica, financeira ou administrativa.'
                
                  '17.04 '#8211' Recrutamento, agenciamento, sele'#231#227'o e coloca'#231#227'o de m'#227'o-d' +
                  'e-obra.'
                
                  '17.05 '#8211' Fornecimento de m'#227'o-de-obra, mesmo em car'#225'ter tempor'#225'rio' +
                  ', inclusive de empregados ou trabalhadores, avulsos ou tempor'#225'ri' +
                  'os, contratados pelo prestador de servi'#231'o.'
                
                  '17.06 '#8211' Propaganda e publicidade, inclusive promo'#231#227'o de vendas, ' +
                  'planejamento de campanhas ou sistemas de publicidade, elabora'#231#227'o' +
                  ' de desenhos, textos e demais materiais publicit'#225'rios.'
                '17.07 '#8211' (VETADO) 17.08 '#8211' Franquia (franchising).'
                '17.09 '#8211' Per'#237'cias, laudos, exames t'#233'cnicos e an'#225'lises t'#233'cnicas.'
                
                  '17.10 '#8211' Planejamento, organiza'#231#227'o e administra'#231#227'o de feiras, exp' +
                  'osi'#231#245'es, congressos e cong'#234'neres.'
                
                  '"17.11 '#8211' Organiza'#231#227'o de festas e recep'#231#245'es; buf'#234' (exceto o forne' +
                  'cimento de alimenta'#231#227'o e bebidas, que fica sujeito ao ICMS)."'
                
                  '17.12 '#8211' Administra'#231#227'o em geral, inclusive de bens e neg'#243'cios de ' +
                  'terceiros.'
                '17.13 '#8211' Leil'#227'o e cong'#234'neres.'
                '17.14 '#8211' Advocacia.'
                '17.15 '#8211' Arbitragem de qualquer esp'#233'cie, inclusive jur'#237'dica.'
                '17.16 '#8211' Auditoria.'
                '17.17 '#8211' An'#225'lise de Organiza'#231#227'o e M'#233'todos.'
                '17.18 '#8211' Atu'#225'ria e c'#225'lculos t'#233'cnicos de qualquer natureza.'
                '17.19 '#8211' Contabilidade, inclusive servi'#231'os t'#233'cnicos e auxiliares.'
                '17.20 '#8211' Consultoria e assessoria econ'#244'mica ou financeira.'
                '17.21 '#8211' Estat'#237'stica.'
                '17.22 '#8211' Cobran'#231'a em geral.'
                
                  '17.23 '#8211' Assessoria, an'#225'lise, avalia'#231#227'o, atendimento, consulta, c' +
                  'adastro, sele'#231#227'o, gerenciamento de informa'#231#245'es, administra'#231#227'o de' +
                  ' contas a receber ou a pagar e em geral, relacionados a opera'#231#245'e' +
                  's de faturiza'#231#227'o (factoring).'
                
                  '17.24 '#8211' Apresenta'#231#227'o de palestras, confer'#234'ncias, semin'#225'rios e co' +
                  'ng'#234'neres.'
                
                  '"18 '#8211' Servi'#231'os de regula'#231#227'o de sinistros vinculados a contratos ' +
                  'de seguros; inspe'#231#227'o e avalia'#231#227'o de riscos para cobertura de con' +
                  'tratos de seguros; preven'#231#227'o e ger'#234'ncia de riscos segur'#225'veis e c' +
                  'ong'#234'neres."'
                
                  '"18.01 - Servi'#231'os de regula'#231#227'o de sinistros vinculados a contrat' +
                  'os de seguros; inspe'#231#227'o e avalia'#231#227'o de riscos para cobertura de ' +
                  'contratos de seguros; preven'#231#227'o e ger'#234'ncia de riscos segur'#225'veis ' +
                  'e cong'#234'neres."'
                
                  '19 '#8211' Servi'#231'os de distribui'#231#227'o e venda de bilhetes e demais produ' +
                  'tos de loteria, bingos, cart'#245'es, pules ou cupons de apostas, sor' +
                  'teios, pr'#234'mios, inclusive os decorrentes de t'#237'tulos de capitaliz' +
                  'a'#231#227'o e cong'#234'neres.'
                
                  '19.01 - Servi'#231'os de distribui'#231#227'o e venda de bilhetes e demais pr' +
                  'odutos de loteria, bingos, cart'#245'es, pules ou cupons de apostas, ' +
                  'sorteios, pr'#234'mios, inclusive os decorrentes de t'#237'tulos de capita' +
                  'liza'#231#227'o e cong'#234'neres.'
                
                  '20 '#8211' Servi'#231'os portu'#225'rios, aeroportu'#225'rios, ferroportu'#225'rios, de te' +
                  'rminais rodovi'#225'rios, ferrovi'#225'rios e metrovi'#225'rios.'
                
                  '20.01 '#8211' Servi'#231'os portu'#225'rios, ferroportu'#225'rios, utiliza'#231#227'o de port' +
                  'o, movimenta'#231#227'o de passageiros, reboque de embarca'#231#245'es, rebocado' +
                  'r escoteiro, atraca'#231#227'o, desatraca'#231#227'o, servi'#231'os de praticagem, ca' +
                  'patazia, armazenagem de qualquer natureza, servi'#231'os acess'#243'rios, ' +
                  'movimenta'#231#227'o de mercadorias, servi'#231'os de apoio mar'#237'timo, de movi' +
                  'menta'#231#227'o ao largo, servi'#231'os de armadores, estiva, confer'#234'ncia, l' +
                  'og'#237'stica e cong'#234'neres.'
                
                  '20.02 '#8211' Servi'#231'os aeroportu'#225'rios, utiliza'#231#227'o de aeroporto, movime' +
                  'nta'#231#227'o de passageiros, armazenagem de qualquer natureza, capataz' +
                  'ia, movimenta'#231#227'o de aeronaves, servi'#231'os de apoio aeroportu'#225'rios,' +
                  ' servi'#231'os acess'#243'rios, movimenta'#231#227'o de mercadorias, log'#237'stica e c' +
                  'ong'#234'neres.'
                
                  '20.03 '#8211' Servi'#231'os de terminais rodovi'#225'rios, ferrovi'#225'rios, metrovi' +
                  #225'rios, movimenta'#231#227'o de passageiros, mercadorias, inclusive suas ' +
                  'opera'#231#245'es, log'#237'stica e cong'#234'neres.'
                '21 '#8211' Servi'#231'os de registros p'#250'blicos, cartor'#225'rios e notariais.'
                '21.01 - Servi'#231'os de registros p'#250'blicos, cartor'#225'rios e notariais.'
                '22 '#8211' Servi'#231'os de explora'#231#227'o de rodovia.'
                
                  '22.01 '#8211' Servi'#231'os de explora'#231#227'o de rodovia mediante cobran'#231'a de p' +
                  're'#231'o ou ped'#225'gio dos usu'#225'rios, envolvendo execu'#231#227'o de servi'#231'os de' +
                  ' conserva'#231#227'o, manuten'#231#227'o, melhoramentos para adequa'#231#227'o de capaci' +
                  'dade e seguran'#231'a de tr'#226'nsito, opera'#231#227'o, monitora'#231#227'o, assist'#234'ncia' +
                  ' aos usu'#225'rios e outros servi'#231'os definidos em contratos, atos de ' +
                  'concess'#227'o ou de permiss'#227'o ou em normas oficiais.'
                
                  '23 '#8211' Servi'#231'os de programa'#231#227'o e comunica'#231#227'o visual, desenho indus' +
                  'trial e cong'#234'neres.'
                
                  '23.01 '#8211' Servi'#231'os de programa'#231#227'o e comunica'#231#227'o visual, desenho in' +
                  'dustrial e cong'#234'neres.'
                
                  '24 '#8211' Servi'#231'os de chaveiros, confec'#231#227'o de carimbos, placas, sinal' +
                  'iza'#231#227'o visual, banners, adesivos e cong'#234'neres.'
                
                  '24.01 - Servi'#231'os de chaveiros, confec'#231#227'o de carimbos, placas, si' +
                  'naliza'#231#227'o visual, banners, adesivos e cong'#234'neres.'
                '25 - Servi'#231'os funer'#225'rios.'
                
                  '"25.01 '#8211' Funerais, inclusive fornecimento de caix'#227'o, urna ou esq' +
                  'uifes; aluguel de capela; transporte do corpo cadav'#233'rico; fornec' +
                  'imento de flores, coroas e outros paramentos; desembara'#231'o de cer' +
                  'tid'#227'o de '#243'bito; fornecimento de v'#233'u, essa e outros adornos; emba' +
                  'lsamento, embelezamento, conserva'#231#227'o ou restaura'#231#227'o de cad'#225'veres' +
                  '."'
                '25.02 '#8211' Crema'#231#227'o de corpos e partes de corpos cadav'#233'ricos.'
                '25.03 '#8211' Planos ou conv'#234'nio funer'#225'rios.'
                '25.04 '#8211' Manuten'#231#227'o e conserva'#231#227'o de jazigos e cemit'#233'rios.'
                
                  '"26 '#8211' Servi'#231'os de coleta, remessa ou entrega de correspond'#234'ncias' +
                  ', documentos, objetos, bens ou valores, inclusive pelos correios' +
                  ' e suas ag'#234'ncias franqueadas; courrier e cong'#234'neres."'
                
                  '"26.01 '#8211' Servi'#231'os de coleta, remessa ou entrega de correspond'#234'nc' +
                  'ias, documentos, objetos, bens ou valores, inclusive pelos corre' +
                  'ios e suas ag'#234'ncias franqueadas; courrier e cong'#234'neres."'
                '27 '#8211' Servi'#231'os de assist'#234'ncia social.'
                '27.01 '#8211' Servi'#231'os de assist'#234'ncia social.'
                
                  '28 '#8211' Servi'#231'os de avalia'#231#227'o de bens e servi'#231'os de qualquer nature' +
                  'za.'
                
                  '28.01 '#8211' Servi'#231'os de avalia'#231#227'o de bens e servi'#231'os de qualquer nat' +
                  'ureza.'
                '29 '#8211' Servi'#231'os de biblioteconomia.'
                '29.01 '#8211' Servi'#231'os de biblioteconomia.'
                '30 '#8211' Servi'#231'os de biologia, biotecnologia e qu'#237'mica.'
                '30.01 '#8211' Servi'#231'os de biologia, biotecnologia e qu'#237'mica.'
                
                  '31 '#8211' Servi'#231'os t'#233'cnicos em edifica'#231#245'es, eletr'#244'nica, eletrot'#233'cnica' +
                  ', mec'#226'nica, telecomunica'#231#245'es e cong'#234'neres.'
                
                  '31.01 - Servi'#231'os t'#233'cnicos em edifica'#231#245'es, eletr'#244'nica, eletrot'#233'cn' +
                  'ica, mec'#226'nica, telecomunica'#231#245'es e cong'#234'neres.'
                '32 '#8211' Servi'#231'os de desenhos t'#233'cnicos.'
                '32.01 - Servi'#231'os de desenhos t'#233'cnicos.'
                
                  '33 '#8211' Servi'#231'os de desembara'#231'o aduaneiro, comiss'#225'rios, despachante' +
                  's e cong'#234'neres.'
                
                  '33.01 - Servi'#231'os de desembara'#231'o aduaneiro, comiss'#225'rios, despacha' +
                  'ntes e cong'#234'neres.'
                
                  '34 '#8211' Servi'#231'os de investiga'#231#245'es particulares, detetives e cong'#234'ne' +
                  'res.'
                
                  '34.01 - Servi'#231'os de investiga'#231#245'es particulares, detetives e cong' +
                  #234'neres.'
                
                  '35 '#8211' Servi'#231'os de reportagem, assessoria de imprensa, jornalismo ' +
                  'e rela'#231#245'es p'#250'blicas.'
                
                  '35.01 - Servi'#231'os de reportagem, assessoria de imprensa, jornalis' +
                  'mo e rela'#231#245'es p'#250'blicas.'
                '36 '#8211' Servi'#231'os de meteorologia.'
                '36.01 '#8211' Servi'#231'os de meteorologia.'
                '37 '#8211' Servi'#231'os de artistas, atletas, modelos e manequins.'
                '37.01 - Servi'#231'os de artistas, atletas, modelos e manequins.'
                '38 '#8211' Servi'#231'os de museologia.'
                '38.01 '#8211' Servi'#231'os de museologia.'
                '39 '#8211' Servi'#231'os de ourivesaria e lapida'#231#227'o.'
                
                  '39.01 - Servi'#231'os de ourivesaria e lapida'#231#227'o (quando o material f' +
                  'or fornecido pelo tomador do servi'#231'o).'
                '40 '#8211' Servi'#231'os relativos a obras de arte sob encomenda.'
                '40.01 - Obras de arte sob encomenda.')
            end
          end
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 729
    ExplicitWidth = 729
    inherited btnInserir: TSpeedButton
      Left = 9
      ExplicitLeft = 9
    end
    inherited btnSair: TSpeedButton
      Left = 661
      ExplicitLeft = 661
    end
    inherited btnRelatorio: TSpeedButton
      Top = 1
      ExplicitTop = 1
    end
  end
  inherited srcEntidade: TDataSource
    Left = 600
    Top = 382
  end
  inherited srcPesquisa: TDataSource
    Left = 592
    Top = 480
  end
  object srcParametrosPrecoVenda: TDataSource [4]
    AutoEdit = False
    Left = 608
    Top = 430
  end
  object srcClassificacaoCliente: TDataSource [5]
    AutoEdit = False
    Left = 464
    Top = 478
  end
  object srcEstoqueProduto: TDataSource [6]
    AutoEdit = False
    Left = 312
    Top = 478
  end
  inherited PopupRelatorio: TPopupMenu
    Left = 293
    Top = 162
    object CurvaABC1: TMenuItem
      Caption = 'Curva ABC'
      OnClick = CurvaABC1Click
    end
    object CurvaABCPorFamiliadeprodutos1: TMenuItem
      Caption = 'Curva ABC Por Fam'#237'lia'
      Enabled = False
      OnClick = CurvaABCPorFamiliadeprodutos1Click
    end
  end
end
