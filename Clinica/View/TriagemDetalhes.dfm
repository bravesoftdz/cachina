inherited FormTriagemDetalhes: TFormTriagemDetalhes
  Caption = 'TemplateFormComTabGridDetalhes1'
  ClientHeight = 532
  DesignerMobile = False
  DesignerWidth = 0
  DesignerHeight = 0
  DesignerDeviceName = ''
  DesignerOrientation = 0
  DesignerOSVersion = ''
  inherited Panel1: TPanel
    Height = 483.000000000000000000
    inherited tabPrincipal: TTabControl
      Height = 483.000000000000000000
      inherited TabItem1: TTabItem
        Height = 24.000000000000000000
        inherited StringGrid1: TStringGrid
          Height = 410.000000000000000000
        end
      end
      inherited TabItem2: TTabItem
        Height = 24.000000000000000000
        Position.X = 62.000000000000000000
        object Label2: TLabel
          Height = 17.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 24.000000000000000000
          Text = 'Nome'
          Width = 120.000000000000000000
        end
        object edtNome: TEdit
          Touch.InteractiveGestures = [igLongTap, igDoubleTap]
          TabOrder = 1
          Position.X = 120.000000000000000000
          Position.Y = 16.000000000000000000
          Width = 361.000000000000000000
          Height = 22.000000000000000000
          KillFocusByReturn = False
        end
        object Label3: TLabel
          Height = 17.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 56.000000000000000000
          Text = 'Endere'#231'o'
          Width = 120.000000000000000000
        end
        object edtEndereco: TEdit
          Touch.InteractiveGestures = [igLongTap, igDoubleTap]
          TabOrder = 3
          Position.X = 120.000000000000000000
          Position.Y = 48.000000000000000000
          Width = 361.000000000000000000
          Height = 22.000000000000000000
          KillFocusByReturn = False
        end
        object Label4: TLabel
          Height = 17.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 88.000000000000000000
          Text = 'Telefones'
          Width = 120.000000000000000000
        end
        object edtTelefones: TEdit
          Touch.InteractiveGestures = [igLongTap, igDoubleTap]
          TabOrder = 5
          Position.X = 120.000000000000000000
          Position.Y = 80.000000000000000000
          Width = 361.000000000000000000
          Height = 22.000000000000000000
          KillFocusByReturn = False
        end
        object Label5: TLabel
          Height = 17.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 120.000000000000000000
          Text = 'Data nascimento'
          Width = 120.000000000000000000
        end
        object dateNascimento: TCalendarEdit
          Touch.InteractiveGestures = [igLongTap, igDoubleTap]
          TabOrder = 7
          Cursor = crIBeam
          Date = 41699.000000000000000000
          Height = 22.000000000000000000
          Position.X = 120.000000000000000000
          Position.Y = 112.000000000000000000
          Width = 100.000000000000000000
        end
        object lbIdade: TLabel
          Height = 17.000000000000000000
          Position.X = 232.000000000000000000
          Position.Y = 120.000000000000000000
          Text = 'Idade'
          Width = 120.000000000000000000
        end
        object Label7: TLabel
          Height = 17.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 152.000000000000000000
          Text = 'Naturalidade'
          Width = 120.000000000000000000
        end
        object edtNaturalidade: TEdit
          Touch.InteractiveGestures = [igLongTap, igDoubleTap]
          TabOrder = 10
          Position.X = 120.000000000000000000
          Position.Y = 144.000000000000000000
          Width = 169.000000000000000000
          Height = 22.000000000000000000
          KillFocusByReturn = False
        end
        object Label8: TLabel
          Height = 17.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 184.000000000000000000
          Text = 'Nacionalidade'
          Width = 120.000000000000000000
        end
        object edtNascionalidade: TEdit
          Touch.InteractiveGestures = [igLongTap, igDoubleTap]
          TabOrder = 12
          Position.X = 120.000000000000000000
          Position.Y = 176.000000000000000000
          Width = 169.000000000000000000
          Height = 22.000000000000000000
          KillFocusByReturn = False
        end
        object Label9: TLabel
          Height = 17.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 216.000000000000000000
          Text = 'Religi'#227'o'
          Width = 120.000000000000000000
        end
        object cboReligiao: TComboBox
          DisableFocusEffect = False
          Height = 22.000000000000000000
          Position.X = 120.000000000000000000
          Position.Y = 208.000000000000000000
          TabOrder = 14
          Width = 129.000000000000000000
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Cat'#243'lico'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Espirita'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Evang'#233'lico'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Budista'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Indu'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Espiritualista independe de religi'#227'o'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Outros'
            Width = 19.000000000000000000
          end
        end
        object cboProfissao: TComboBox
          DisableFocusEffect = False
          Height = 22.000000000000000000
          Position.X = 312.000000000000000000
          Position.Y = 208.000000000000000000
          TabOrder = 15
          Width = 161.000000000000000000
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ABASTECEDOR DE MERCADORIAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ABATEDOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ACABAMENTO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'A'#199'OUGUEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ADMINISTRADOR DE REDES'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ADMINISTRADOR(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ADVOGADO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AEROVI'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENCIADOR DE IM'#211'VEIS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE ADMINISTRATIVO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE DE COBRAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE DE CR'#201'DITO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE DE EDEMIAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE DE INVESTIGA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE DE PORTARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE DE SAUDE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE DE SEGRURAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE DE VIAGEM'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGENTE PENITENCIARIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGRICULTOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGRICULTOR (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGRONOMO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AGROPECUARISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AJUDANTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AJUDANTE DE CARGAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AJUDANTE DE DEP'#211'SITO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AJUDANTE DE ENTREGA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AJUDANTE DE MOTORISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AJUDANTE DE PEDREIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AJUDANTE DE PRODU'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AJUSTADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ALINHADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ALINHADOR MEC'#194'NICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ALMOXARIFE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AMBIENTALISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AMBULANTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ANALISTA ADMINISTRATIVO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ANALISTA DE CR'#201'DITO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ANALISTA DE ROTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ANALISTA DE SISTEMAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ANALISTA DE SUPORTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ANALISTA TRIBUT'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'APLICADOR DE PELICULAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'APOSENTADO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AQUICULTORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ARMADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ARMAZENISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ARQUITETO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ARQUIVISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ARTES'#195
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASCENSORISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASG'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSESORISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSESSORA DE CR'#201'DITO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSESSORA DE ENCAMINHAMENTO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSIST. ADM. FINANCEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSIST. ADMINISTRATIVO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSISTENTE COMERCIAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSISTENTE DE CONTABILIDADE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSISTENTE DE PRODU'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSISTENTE GERAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSISTENTE SOCIAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSISTENTE TEC. EM SA'#218'DE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ASSITENTE DE LABORAT'#211'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ATENDENTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUDITOR DA RECEITA FEDERAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUDITOR FISCAL ESTADUAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUTONOMO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. ADMINISTRATIVO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. BOMBEIRO HIDRAULICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE ALMOXERIFADO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE ARMADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE ARQUIVO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE AUDITORIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE CARPINTEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE CONSULTORIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE COZINHA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE DEP'#211'SITO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE EMBALAGEM'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE ENCANADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE ENFERMAGEM'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE ENTREGA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE ESCRITORIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE FARMACIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE IDENTIFICA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE LABORAT'#211'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE LANTERNAGEM'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE MANUTEN'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE MARCENARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE MEC'#194'NICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE MONITOR (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE MONITORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE ODONTOLOGIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE PINTURA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE PRODU'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE SECRETARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE SERV. CORRELATOS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE TESOURARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. DE TURISMO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. ODONTOLOGIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. OPERACIONAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. SAL'#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUX. TECNICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR AGR'#205'COLA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE COBRAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE COMPRAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE CONTABILIDADE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE COZINHA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE CR'#201'DITO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE ELETRICISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE EXPEDI'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE LAVANDERIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE MANUTEN'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE MONTADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE NUTRICIONISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE PADARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE PADARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE PEDREIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE PRODU'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE REDES'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE REFRIGERA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE SAUDE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE TOPOGRAFIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'AUXILIAR DE VENDAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BAB'#193
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BALCONISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BANCARIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BARMAN'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BETONEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BIBLIOTECARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BIOLOGO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BIOQUIMICO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BOMBEIRO MILITAR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BOMBEITO HIDR'#193'ULICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BOMBISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BORRACHEIRO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'BUGUEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CABELEREIRO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CALCETEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CALDERISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CAMARISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CAMINHONEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CANTOR (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CAPOTARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CAPOTEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CARPINTEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CARROCEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CARTEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CASEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CHAPEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CHAVEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CHEFE DE COZINHA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CHEFE DE MANUTEN'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CHEFE DE PISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CHURRASQUEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CINEGRAFISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CIRURGI'#195'O DENTISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COBRADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COMERCIANTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COMERCI'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COMPOSITOR GRAFICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COMPRADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONFECCIONADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONFECCIONADOR GR'#193'FICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONFEITEIRO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONFERENTE DE MERCADORIAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONSELHEIRO TUTELAR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONSTRUTOR CIVIL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONSULTOR DE VENDAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONSULTOR EMPRESARIAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONSULTOR OPERACIONAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONSULTORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONTABILISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONTADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONTADORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CONTROLE DE PRODU'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COODERNADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COORDENADORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COPEIRA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COPEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CORDENADOR T'#201'CNICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CORDENADORA DE MERCHANDISING'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CORRETOR(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CORTADOR BLOQUEAD. DE ACAB. GRAFICAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CORTADOR DE ROUPAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COSTUREIRO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COVEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'COZINHEIRO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'CREDIARISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DAMA DE COMPANHIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DAN'#199'ARINA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DECORADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DECORADORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DELEGADO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DEMONSTRADOR (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DENTISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DEPILADORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DESEMPREGADO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DESENHISTA TECNICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DESIGN GR'#193'FICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DESPACHANTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DESSOSADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DIARISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DIGITADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DIRETOR ADMINISTRATIVO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DJ'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DO LAR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DOCEIRO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DOM'#201'STICA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'DOMESTICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'EC'#211'LOGO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ECONOMISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ELETRICISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ELETRICISTA INDUSTRIAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ELETRICITARIO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ELETROT'#201'CNICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'EMBALADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'EMPACOTADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'EMPRES'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENC. MANUTEN'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENCANADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENCARREGADA DE CONFER'#202'NCIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENCARREGADO DE DEP'#211'SITO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENCARREGADO DE LOJISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENCARREGADO DE OBRAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENCARREGADO DE PISCINA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENCARREGADO DE SEGURAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENCARREGADO DO SETOR PESSOAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENFERMEIRO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENG. ELETRICO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENG. MECANICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENG. QU'#205'MICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENGENHEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENGENHEIRO AGRONOMO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENGENHEIRO CIVIL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENGOMADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ENTREGADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESCRITU'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESCRITURADOR FISCAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESPETOR DE ALUNO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESPETOR DE SEGURAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESTAGIARIO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESTAMPADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESTETICISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESTOFADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESTOQUISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESTUDANTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ESTUDANTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'EXECUTIVO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FARMACEUTICA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FARMAC'#201'UTICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FEIRANTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FERRAMENTEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FERREIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FIL'#211'SOFA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FISCAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FISCAL DE OBRAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FISICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FISIOTERAPEUTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FONOAUDIOLOGA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FORNEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FOTOGR'#193'FO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FOTOGRAVADOR GRAFICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FRENTISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCIONARIA PUBLICA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIA P'#218'BLICA ESTADUAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIA P'#218'BLICA ESTADUAL APOSENTADA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIA PUBLICA FEDERAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIA P'#218'BLICA FEDERAL - FUNASA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIA P'#218'BLICA FEDERAL - INSS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIA P'#218'BLICA FEDERAL APOSENTADA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIA P'#218'BLICA MUNICIPAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCIONARIO PUBLICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIO P'#218'BLICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCIONARIO PUBLICO APOSENTADO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIO P'#218'BLICO ESTADUAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIO P'#218'BLICO ESTADUAL APOSENTADO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCIONARIO PUBLICO FEDERAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIO P'#218'BLICO FEDERAL - DNOCS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIO P'#218'BLICO FEDERAL - INSS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIO P'#218'BLICO FEDERAL - MINIST'#201'RIO DA FAZ.'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIO P'#218'BLICO FEDERAL - MINIST'#201'RIO DA SA'#218'DE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIO P'#218'BLICO MUNICIPAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'FUNCION'#193'RIO P'#218'BLICO MUNICIPAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GALVANIZADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GAR'#199'OM'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GAR'#199'ONETE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GARI'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GAURDETE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GE'#211'GRAFO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GEOLOGO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GERENCIADOR DE SEGURAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GERENTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GERENTE DE RECURSOS HUMANOS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GESSEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GESTOR DE RH SENIOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GR'#193'FICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GUARDA DE SEGURAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GUARDA MUNICIPAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GUIA TURISTICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'GUINCHEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'HOTELEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'IMPRESSOR OFF-SET'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'IMPRESSOR TIPOGRAFICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'INDUSTRI'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'INSTALADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'INSTALADOR DE '#193'UDIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'INSTALADOR DE TEFEFONE PUBLICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'INSTRUTOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'JARDINEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'JOGADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'JORNALISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'JUIZ'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LABORATORISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LAMINADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LANTERNEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LAVADEIRA(O)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LAVADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LAVADOR DE VE'#205'CULOS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LEITURISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LICHADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LIDER DE SETOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'LOCUTOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MAESTRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MANICURE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MANIPULADOR DE M'#193'QUINAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MAQUEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MAQUINISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MARCENEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MARISQUEIRO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MARITIMO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MASSAGISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MASSOTERAPEUTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MEC'#194'NICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MEC'#194'NICO INDUSTRIAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'M'#201'DICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MEDICO VETERINARIO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MENSAGEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MERENDEIRA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MESTRE DE OBRA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'METALURGICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MICROEMPRES'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MILITAR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MILITAR DA RESERVA REMUNERADA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MILITAR REFORMANDO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MONTADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MONTADOR DE AUTOMOTIVO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MONTADOR DE MOVEIS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MONTADOR DE PALCO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MONTADOR INDUSTRIAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MOTOBOY'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MOTOQUEIRA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MOTOQUEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MOTORISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MOTORISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MOTORISTA- CARRETEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MOTOTAXISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MULTIPLICADORA DE VALIDADE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'MUSICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'M'#218'SICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'NECROPCISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'NUTRICIONISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OBSERVADORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OFFICE BOY'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE BOMBA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE CAIXA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE C'#194'MBIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE COBRAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE EMBALAGEM'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE EMPILHADEIRA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE ESTAMPARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE FABRICA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE HIPERMERCADO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE LAVANDERIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE LOJA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE SISTEMAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADOR DE TELEMARKETING'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERADORA DE M'#193'QUINA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'OPERARIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ORIENTADOR (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PADEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PANFLETISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PASTELEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PASTOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PATINADORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PECUARISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PEDAGOGA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PEDREIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PENSIONISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PERFURADOR DE PO'#199'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PERMISSION'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PERSONAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PESCADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PETROLEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PINTOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PINTOR DE MOVEIS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PISCINEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PLANTONISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PLATAFORMISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PODADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'POLICIAL CIVIL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'POLICIAL MILITAR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'POLIDOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PONTEADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PORTEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PORTU'#193'RIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PRESTADOR DE SERVI'#199'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PROFESSOR (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PROFISSIONAL DE MARKETING'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PROFISSIONAL LIBERAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PROGRAMADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PROGRAMADOR MUSICAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PROMOTOR DE EVENTOS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PROMOTOR DE VENDAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PROT'#201'TICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PSICOLOGO (A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'PUBLICIT'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'QUIMICA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'RADIALISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'RECEPCIONISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'RECUPERADOR DE CR'#201'DITO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'REFORMADO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'REPOSITOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'REPRESENTANTE COMERCIAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'RETIFICADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'REVIS'#195'O DE TECIDO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'REVISOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'REVISORA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'RODOVI'#193'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SALGADEIRA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SAPATEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SECRETARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SECRETARIA DO LAR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SECRETARIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SEGURAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SEGURAN'#199'A PATRIMONIAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SERIGRAFISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SERRALHEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SERVENTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SERVENTE DE PEDREIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SERVENTE HOSPITALAR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SERVIDOR FEDERAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SERVIDOR P'#218'BLICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SOCI'#211'LOGA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SOCORRISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SOLDADO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SOLDADO REFORMADO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SOLDADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SUB-GERENTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SUPERVISOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SUPERVISOR DE EL'#201'TRICA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SUPERVISOR DE LOJA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SUPERVISOR DE MANUTEN'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SUPERVISOR DE PRODU'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SUPERVISOR DE RECEP'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SUPERVISOR DE VENDAS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'SUPERVISOR GERAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TABELI'#195'O P'#218'BLICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TAPE'#199'EIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TAXISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC DE ALIMENTOS'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. DE CADASTRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. DE CELULAR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. DE ELETRIFICA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. DE LABORAT'#211'RIO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. DE MINERA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. DE OPERA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. DE PALCO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. DE PANIFICA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. DE RADIOLOGIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. DE REFRIGERA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. DE SEGURAN'#199'A'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. DE TELECOMUNICA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. EM AGROPECUARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. EM ELETR'#212'NICA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. EM ENFERMAGEM'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. EM INSPEN'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. EM SAUDE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. EM SEGURAN'#199'A ELETRONICA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. EM TELEFONIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. MANUTEN'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. MONTAGEM INDUSTRIAL'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. '#211'TICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'C. QU'#205'MICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TEC. REFRIGERA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'CNICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'CNICO AGR'#205'COLA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'CNICO DE CARCINICULTURA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TECNICO DE CONTABILIDADE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'CNICO DE ENFERMAGEM'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TECNICO DE ENGENHARIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'CNICO DE INFORM'#193'TICA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TECNICO DE INSTALA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'CNICO DE MONTEGEM'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'CNICO DE PRODU'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TECNICO EM EDIFICA'#199#213'ES'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TECNICO EM ILUMINA'#199#195'O'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'CNICO EM MEC'#194'NICA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TECNICO EM MECANICO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'T'#201'CNICO EM PR'#211'TESE DENT'#193'RIA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TELEFONISTA'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TOPOGRAFO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TOSADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TRAINNE DE MARKETING'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TREINADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TROCADOR DE OLEO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'TURISM'#211'LOGO(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'VAQUEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'VENDEDOR(A)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'VEREADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'VIDRACEIRO'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'VIGILANTE'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'ZELADOR'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Width = 19.000000000000000000
          end
        end
        object Label10: TLabel
          Height = 17.000000000000000000
          Position.X = 256.000000000000000000
          Position.Y = 216.000000000000000000
          Text = 'Profiss'#227'o'
          Width = 120.000000000000000000
        end
        object Label11: TLabel
          Height = 17.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 248.000000000000000000
          Text = 'Conv'#234'nio'
          Width = 120.000000000000000000
        end
        object cboConvenio: TComboBox
          DisableFocusEffect = False
          Height = 22.000000000000000000
          Position.X = 120.000000000000000000
          Position.Y = 240.000000000000000000
          TabOrder = 18
          Width = 129.000000000000000000
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Medmais'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Amil'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Assefaz'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Medial'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Geap'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Cassi'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Bradesco'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Petrobras'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Sulamerica'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'Particular'
            Width = 19.000000000000000000
          end
        end
        object edtNumeroCarteira: TEdit
          Touch.InteractiveGestures = [igLongTap, igDoubleTap]
          TabOrder = 19
          Position.X = 336.000000000000000000
          Position.Y = 240.000000000000000000
          Width = 137.000000000000000000
          Height = 22.000000000000000000
          KillFocusByReturn = False
        end
        object Label12: TLabel
          Height = 17.000000000000000000
          Position.X = 256.000000000000000000
          Position.Y = 248.000000000000000000
          Text = 'N'#186' da Carteira'
          Width = 120.000000000000000000
        end
        object Label13: TLabel
          Height = 17.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 280.000000000000000000
          Text = 'CID'
          Width = 120.000000000000000000
        end
        object cboCID: TComboBox
          DisableFocusEffect = False
          Height = 22.000000000000000000
          Position.X = 120.000000000000000000
          Position.Y = 272.000000000000000000
          TabOrder = 22
          Width = 353.000000000000000000
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F00 - Dem'#234'ncia na Doen'#231'a de Alzheimer'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F01 - Dem'#234'ncia Vascular'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F02 - Dem'#234'ncia em Outras Doen'#231'as Classificadas em Outra Parte'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F03 - Dem'#234'ncia N'#227'o Especificada'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F04 - S'#237'ndrome Amn'#233'sica Org'#226'nica N'#227'o Induzida Pelo '#193'lcool ou Por' +
              ' Outras Subst'#226'ncias Psicoativas'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F05 - Delirium N'#227'o Induzido Pelo '#193'lcool ou Por Outras Subst'#226'ncia' +
              's Psicoativas'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F06 - Outros Transtornos Mentais Devidos a Les'#227'o e Disfun'#231#227'o Cer' +
              'ebral e a Doen'#231'a F'#237'sica'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F07 - Transtornos de Personalidade e do Comportamento Devidos a ' +
              'Doen'#231'a, a Les'#227'o e a Disfun'#231#227'o Cerebral'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F09 - Transtorno Mental Org'#226'nico ou Sintom'#225'tico N'#227'o Especificado'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F10 - Transtornos Mentais e Comportamentais Devidos ao Uso de '#193'l' +
              'cool'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F11 - Transtornos Mentais e Comportamentais Devidos ao Uso de Op' +
              'i'#225'ceos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F12 - Transtornos Mentais e Comportamentais Devidos ao Uso de Ca' +
              'nabin'#243'ides'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F13 - Transtornos Mentais e Comportamentais Devidos ao Uso de Se' +
              'dativos e Hipn'#243'ticos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F14 - Transtornos Mentais e Comportamentais Devidos ao Uso da Co' +
              'ca'#237'na'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F15 - Transtornos Mentais e Comportamentais Devidos ao Uso de Ou' +
              'tros Estimulantes, Inclusive a Cafe'#237'na'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F16 - Transtornos Mentais e Comportamentais Devidos ao Uso de Al' +
              'ucin'#243'genos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F17 - Transtornos Mentais e Comportamentais Devidos ao Uso de Fu' +
              'mo'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F18 - Transtornos Mentais e Comportamentais Devidos ao Uso de So' +
              'lventes Vol'#225'teis'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F19 - Transtornos Mentais e Comportamentais Devidos ao Uso de M'#250 +
              'ltiplas Drogas e ao Uso de Outras Subst'#226'ncias Psicoativas'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F20 - Esquizofrenia'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F21 - Transtorno Esquizot'#237'pico'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F22 - Transtornos Delirantes Persistentes'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F23 - Transtornos Psic'#243'ticos Agudos e Transit'#243'rios'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F24 - Transtorno Delirante Induzido'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F25 - Transtornos Esquizoafetivos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F28 - Outros Transtornos Psic'#243'ticos N'#227'o-org'#226'nicos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F29 - Psicose N'#227'o-org'#226'nica N'#227'o Especificada'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F30 - Epis'#243'dio Man'#237'aco'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F31 - Transtorno Afetivo Bipolar'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F32 - Epis'#243'dios Depressivos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F33 - Transtorno Depressivo Recorrente'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F34 - Transtornos de Humor (afetivos) Persistentes'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F38 - Outros Transtornos do Humor (afetivos)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F39 - Transtorno do Humor (afetivo) N'#227'o Especificado'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F40 - Transtornos F'#243'bico-ansiosos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F41 - Outros Transtornos Ansiosos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F42 - Transtorno Obsessivo-compulsivo'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F43 - "Rea'#231#245'es ao ""stress"" Grave e Transtornos de Adapta'#231#227'o"'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F44 - Transtornos Dissociativos (de Convers'#227'o)'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F45 - Transtornos Somatoformes'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F48 - Outros Transtornos Neur'#243'ticos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F50 - Transtornos da Alimenta'#231#227'o'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F51 - Transtornos N'#227'o-org'#226'nicos do Sono Devidos a Fatores Emocio' +
              'nais'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F52 - Disfun'#231#227'o Sexual, N'#227'o Causada Por Transtorno ou Doen'#231'a Org' +
              #226'nica'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F53 - Transtornos Mentais e Comportamentais Associados ao Puerp'#233 +
              'rio, N'#227'o Classificados em Outra Parte'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F54 - Fatores Psicol'#243'gicos ou Comportamentais Associados a Doen'#231 +
              'a ou a Transtornos Classificados em Outra Parte'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F55 - Abuso de Subst'#226'ncias Que N'#227'o Produzem Depend'#234'ncia'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F59 - S'#237'ndromes Comportamentais Associados a Transtornos Das Fun' +
              #231#245'es Fisiol'#243'gicas e a Fatores F'#237'sicos, N'#227'o Especificadas'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F60 - Transtornos Espec'#237'ficos da Personalidade'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F61 - Transtornos Mistos da Personalidade e Outros Transtornos d' +
              'a Personalidade'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F62 - Modifica'#231#245'es Duradouras da Personalidade N'#227'o Atribu'#237'veis a' +
              ' Les'#227'o ou Doen'#231'a Cerebral'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F63 - Transtornos Dos H'#225'bitos e Dos Impulsos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F64 - Transtornos da Identidade Sexual'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F65 - Transtornos da Prefer'#234'ncia Sexual'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F66 - Transtornos Psicol'#243'gicos e Comportamentais Associados ao D' +
              'esenvolvimento Sexual e '#224' Sua Orienta'#231#227'o'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F68 - Outros Transtornos da Personalidade e do Comportamento do ' +
              'Adulto'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F69 - Transtorno da Personalidade e do Comportamento do Adulto, ' +
              'N'#227'o Especificado'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F70 - Retardo Mental Leve'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F71 - Retardo Mental Moderado'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F72 - Retardo Mental Grave'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F73 - Retardo Mental Profundo'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F78 - Outro Retardo Mental'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F79 - Retardo Mental N'#227'o Especificado'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F80 - Transtornos Espec'#237'ficos do Desenvolvimento da Fala e da Li' +
              'nguagem'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F81 - Transtornos Espec'#237'ficos do Desenvolvimento Das Habilidades' +
              ' Escolares'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F82 - Transtorno Espec'#237'fico do Desenvolvimento Motor'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F83 - Transtornos Espec'#237'ficos Misto do Desenvolvimento'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F84 - Transtornos Globais do Desenvolvimento'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F88 - Outros Transtornos do Desenvolvimento Psicol'#243'gico'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F89 - Transtorno do Desenvolvimento Psicol'#243'gico N'#227'o Especificado'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F90 - Transtornos Hipercin'#233'ticos'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F91 - Dist'#250'rbios de Conduta'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F92 - Transtornos Mistos de Conduta e Das Emo'#231#245'es'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F93 - Transtornos Emocionais Com In'#237'cio Especificamente na Inf'#226'n' +
              'cia'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F94 - Transtornos do Funcionamento Social Com In'#237'cio Especificam' +
              'ente Durante a Inf'#226'ncia ou a Adolesc'#234'ncia'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F95 - Tiques'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 
              'F98 - Outros Transtornos Comportamentais e Emocionais Com In'#237'cio' +
              ' Habitualmente Durante a Inf'#226'ncia ou a Adolesc'#234'ncia'
            Width = 19.000000000000000000
          end
          object TListBoxItem
            Height = 19.000000000000000000
            Text = 'F99 - Transtorno Mental N'#227'o Especificado em Outra Parte'
            Width = 19.000000000000000000
          end
        end
        object TabControl2: TTabControl
          Height = 114.000000000000000000
          Position.X = 24.000000000000000000
          Position.Y = 312.000000000000000000
          TabIndex = 0
          TabOrder = 23
          Width = 593.000000000000000000
          object TabItem3: TTabItem
            WordWrap = False
            Height = 23.000000000000000000
            IsSelected = True
            Position.X = 1.000000000000000000
            TabOrder = 0
            Text = 'Queixa inicial'
            Width = 84.000000000000000000
            object memoQueixa: TMemo
              Touch.InteractiveGestures = [igPan, igLongTap, igDoubleTap]
              Height = 73.000000000000000000
              Position.X = 8.000000000000000000
              Position.Y = 8.000000000000000000
              TabOrder = 0
              Width = 577.000000000000000000
            end
          end
          object TabItem4: TTabItem
            WordWrap = False
            Height = 23.000000000000000000
            IsSelected = False
            Position.X = 85.000000000000000000
            TabOrder = 1
            Text = 'Antecedentes cl'#237'nicos'
            Width = 125.000000000000000000
            object memoAntecedentes: TMemo
              Touch.InteractiveGestures = [igPan, igLongTap, igDoubleTap]
              Height = 73.000000000000000000
              Position.X = 8.000000000000000000
              Position.Y = 8.000000000000000000
              TabOrder = 0
              Width = 577.000000000000000000
            end
          end
          object TabItem5: TTabItem
            WordWrap = False
            Height = 23.000000000000000000
            IsSelected = False
            Position.X = 210.000000000000000000
            TabOrder = 2
            Text = 'Medica'#231#245'es'
            Width = 77.000000000000000000
            object memoMedicacoes: TMemo
              Touch.InteractiveGestures = [igPan, igLongTap, igDoubleTap]
              Height = 73.000000000000000000
              Position.X = 8.000000000000000000
              Position.Y = 8.000000000000000000
              TabOrder = 0
              Width = 577.000000000000000000
            end
          end
        end
      end
    end
  end
  inherited StyleBook1: TStyleBook
    ResourcesBin = {
      464D585F5354594C4520322E3501060B7377697463687374796C6503B301060D
      7468756D626261727374796C65034F0306147363726F6C6C6261727674726163
      6B7374796C6503550106147363726F6C6C62617268747261636B7374796C6503
      550106137363726F6C6C6261726C656674627574746F6E03BE0306147363726F
      6C6C6261727269676874627574746F6E03B30306127363726F6C6C626172746F
      70627574746F6E03BD0306157363726F6C6C626172626F74746F6D627574746F
      6E03B403060B687468756D627374796C65034D03060B767468756D627374796C
      65034D03060A747261636B7374796C65034E01060D747261636B626172737479
      6C65039604060E7363726F6C6C6261727374796C650302050619736D616C6C73
      63726F6C6C62617268747261636B7374796C6503A3010619736D616C6C736372
      6F6C6C62617276747261636B7374796C6503A3010613736D616C6C7363726F6C
      6C6261727374796C65032002060E7363726F6C6C626F787374796C65032E0506
      146672616D65647363726F6C6C626F787374796C65032206060F6261636B6772
      6F756E647374796C6503BE00060D63616C656E6461727374796C6503F8090612
      63616C656E6461726C6162656C7374796C65030401060A70616E656C7374796C
      6503BD00061163616C6C6F757470616E656C7374796C6503FC00060E73746174
      75736261727374796C6503F301060C746F6F6C6261727374796C6503B8000615
      657870616E646572636865636B626F787374796C65031205060D657870616E64
      65727374796C65030203060D67726F7570626F787374796C650358020611696D
      616765636F6E74726F6C7374796C65030E03060B627574746F6E7374796C6503
      09060610636F6C6F72627574746F6E7374796C650318060611636F726E657262
      7574746F6E7374796C65032F0506107370656564627574746F6E7374796C6503
      9805060C6172636469616C7374796C65030B07060D73706C6974746572737479
      6C6503E7010609656469747374796C65034C0406167472616E73706172656E74
      627574746F6E7374796C6503E302061C7472616E73706172656E74636972636C
      65627574746F6E7374796C6503E702060C7370696E626F787374796C65038507
      0611636C656172696E67656469747374796C65031A06060D706F707570626F78
      7374796C65033A0506096D656D6F7374796C65039A07060E6E756D626572626F
      787374796C65038503060A6C6162656C7374796C6503FC00060F76616C75656C
      6162656C7374796C6503E501060C6C697374626F787374796C65038707061774
      72616E73706172656E746C697374626F787374796C650383050615636F6C6F72
      6C697374626F786974656D7374796C65030B0306106C697374626F786974656D
      7374796C6503FF01060C7461626974656D7374796C65033805060D636865636B
      626F787374796C650348050610726164696F627574746F6E7374796C65034A05
      061070726F67726573736261727374796C65034405060D73697A656772697073
      74796C65039401060D636F6D626F626F787374796C65035404060E636F6D626F
      656469747374796C6503A204060F636F6D626F706F7075707374796C65032602
      0613657870616E646572627574746F6E7374796C65037603060D747265657669
      65777374796C6503B707061174726565766965776974656D7374796C65034C03
      061B7472656576696577657870616E646572627574746F6E7374796C65037803
      060F746162636F6E74726F6C7374796C65038201060F64726F70746172676574
      7374796C6503E903060F64726F707461726765747374796C6503E003060D7465
      787463656C6C7374796C6503A501060E636865636B63656C6C7374796C65039E
      02061170726F677265737363656C6C7374796C6503D602060E706F7075706365
      6C6C7374796C65035C03060E696D61676563656C6C7374796C65035B01060F68
      65616465726974656D7374796C6503F4020609677269647374796C6503C10806
      0C6D656E756261727374796C65037B01060D6D656E75766965777374796C6503
      F202060D6D656E756974656D7374796C6503FF0806126D656E75736570617261
      746F727374796C6503C2010611616E69696E64696361746F727374796C650390
      00060D74696D65656469747374796C6503A406060E7370696E65646974627574
      746F6E03270200545046300D545377697463684F626A65637400095374796C65
      4E616D65060B7377697463687374796C650D44657369676E56697369626C6508
      064865696768740500000000000000C8044012547261636B696E675468756D62
      5363616C65050000000000000080FF3F115468756D6250616464696E672E4C65
      6674050000000000000080FF3F105468756D6250616464696E672E546F700500
      00000000000080FF3F125468756D6250616464696E672E526967687405000000
      0000000080FF3F135468756D6250616464696E672E426F74746F6D0500000000
      00000080FF3F0557696474680500000000000000C804400A46696C6C2E436F6C
      6F720708636C61426C61636B0C46696C6C4F6E2E436F6C6F7207097837304342
      383830380B46696C6C4F6E2E4B696E640707626B536F6C69640C5374726F6B65
      2E436F6C6F720708636C61426C61636B0B5468756D622E436F6C6F7207097846
      46434238383038115468756D625374726F6B652E436F6C6F7207097846464636
      41463444155468756D625374726F6B652E546869636B6E657373050000000000
      0000800040055368617065070B7373526F756E64526563740000545046300754
      4C61796F757400095374796C654E616D65060D7468756D626261727374796C65
      0D44657369676E56697369626C65080648656967687405000000000000008003
      400A506F736974696F6E2E580500000000000080CE07400A506F736974696F6E
      2E590500000000000080F607400557696474680500000000000000800340000A
      5452656374616E676C6500095374796C654E616D65060A6261636B67726F756E
      6405416C69676E0708616C43656E7465720A46696C6C2E436F6C6F7207097846
      46434238383038064C6F636B656409064865696768740500000000000000A002
      400748697454657374080C5374726F6B652E436F6C6F72070978464636343433
      30340557696474680500000000000000A00240000A5452656374616E676C6500
      05416C69676E0708616C436C69656E740D44657369676E56697369626C650809
      46696C6C2E4B696E640706626B4E6F6E65064865696768740500000000000000
      A002400748697454657374080553696465730B057364546F700673644C656674
      000C5374726F6B652E436F6C6F72070978464646364146344405576964746805
      00000000000000A0024000000A5452656374616E676C650005416C69676E0708
      616C436C69656E740946696C6C2E4B696E640706626B4E6F6E65064865696768
      7405000000000000008002400748697454657374080C4D617267696E732E4C65
      6674050000000000000080FF3F0B4D617267696E732E546F7005000000000000
      0080FF3F0D4D617267696E732E5269676874050000000000000080FF3F0E4D61
      7267696E732E426F74746F6D050000000000000080FF3F0C5374726F6B652E43
      6F6C6F720709783030464641383030105374726F6B652E546869636B6E657373
      05000000000000008000400557696474680500000000000000800240000F5443
      6F6C6F72416E696D6174696F6E00084475726174696F6E050000000000CDCCCC
      FB3F0C50726F70657274794E616D65060C5374726F6B652E436F6C6F720A5374
      61727456616C756507097830304646413830300953746F7056616C7565070978
      46464646413830300754726967676572061049734D6F7573654F7665723D7472
      75650E54726967676572496E7665727365061149734D6F7573654F7665723D66
      616C73650000000000545046300A5452656374616E676C6500095374796C654E
      616D6506147363726F6C6C62617276747261636B7374796C650D44657369676E
      56697369626C65080946696C6C2E4B696E640706626B4E6F6E65064865696768
      740500000000000100FC04400748697454657374080A506F736974696F6E2E58
      0500000000000080CD07400A506F736974696F6E2E590500000000000080EA07
      400B5374726F6B652E4B696E640706626B4E6F6E650557696474680500000000
      0000009803400006545468756D6200095374796C654E616D6506057468756D62
      064C6F636B656409064865696768740500000000000000B804400A506F736974
      696F6E2E580500000000000000A001400A506F736974696F6E2E590500000000
      000000A001400B5374796C654C6F6F6B7570060B767468756D627374796C6508
      5461624F7264657202000557696474680500000000000000A002400000005450
      46300A5452656374616E676C6500095374796C654E616D6506147363726F6C6C
      62617268747261636B7374796C650D44657369676E56697369626C6508094669
      6C6C2E4B696E640706626B4E6F6E650648656967687405000000000000009803
      400748697454657374080A506F736974696F6E2E580500000000000080B40740
      0A506F736974696F6E2E590500000000000080F507400B5374726F6B652E4B69
      6E640706626B4E6F6E65055769647468050000000000FFFFEF05400006545468
      756D6200095374796C654E616D6506057468756D62064C6F636B656409064865
      6967687405000000000000008003400A506F736974696F6E2E58050000000000
      00008001400A506F736974696F6E2E5905000000000000008001400B5374796C
      654C6F6F6B7570060B687468756D627374796C65085461624F72646572020005
      57696474680500000000000000CC0440000000545046300A5452656374616E67
      6C6500095374796C654E616D6506137363726F6C6C6261726C65667462757474
      6F6E0D44657369676E56697369626C65080A46696C6C2E436F6C6F7207097846
      4643423838303806486569676874050000000000000090034007486974546573
      74080A506F736974696F6E2E580500000000000080CD07400A506F736974696F
      6E2E590500000000000000F607400C5374726F6B652E436F6C6F720709784646
      3634343330340557696474680500000000000000980340000A5452656374616E
      676C650005416C69676E0708616C436C69656E740D44657369676E5669736962
      6C65080946696C6C2E4B696E640706626B4E6F6E650648656967687405000000
      000000009003400748697454657374080553696465730B057364546F70067364
      4C656674000C5374726F6B652E436F6C6F720709784646463641463444055769
      647468050000000000000098034000000A5452656374616E676C650005416C69
      676E0708616C436C69656E740946696C6C2E4B696E640706626B4E6F6E650648
      656967687405000000000000008003400748697454657374080C4D617267696E
      732E4C656674050000000000000080FF3F0B4D617267696E732E546F70050000
      000000000080FF3F0D4D617267696E732E5269676874050000000000000080FF
      3F0E4D617267696E732E426F74746F6D050000000000000080FF3F0C5374726F
      6B652E436F6C6F720709783030464641383030105374726F6B652E546869636B
      6E65737305000000000000008000400557696474680500000000000000880340
      000F54436F6C6F72416E696D6174696F6E00084475726174696F6E0500000000
      00CDCCCCFB3F0C50726F70657274794E616D65060C5374726F6B652E436F6C6F
      720A537461727456616C756507097830304646413830300953746F7056616C75
      6507097846464646413830300754726967676572061049734D6F7573654F7665
      723D747275650E54726967676572496E7665727365061149734D6F7573654F76
      65723D66616C73650000000554506174680005416C69676E0708616C43656E74
      657209446174612E506174680A4000000005000000000000000000803F000000
      00010000000000803F0000803F01000000000000000000003F01000000000080
      3F000000000300000000000000000000000A46696C6C2E436F6C6F720708636C
      615768697465064C6F636B656409064865696768740500000000000000E00140
      0748697454657374080B5374726F6B652E4B696E640706626B4E6F6E65055769
      6474680500000000000000C00140000000545046300A5452656374616E676C65
      00095374796C654E616D6506147363726F6C6C6261727269676874627574746F
      6E0D44657369676E56697369626C65080A46696C6C2E436F6C6F720709784646
      4342383830380648656967687405000000000000009003400748697454657374
      080A506F736974696F6E2E580500000000000000CE07400A506F736974696F6E
      2E590500000000000000F607400C5374726F6B652E436F6C6F72070978464636
      34343330340557696474680500000000000000880340000A5452656374616E67
      6C650005416C69676E0708616C436C69656E740D44657369676E56697369626C
      65080946696C6C2E4B696E640706626B4E6F6E65064865696768740500000000
      0000009003400748697454657374080553696465730B057364546F700673644C
      656674000C5374726F6B652E436F6C6F72070978464646364146344405576964
      7468050000000000000088034000000A5452656374616E676C650005416C6967
      6E0708616C436C69656E740946696C6C2E4B696E640706626B4E6F6E65064865
      6967687405000000000000008003400748697454657374080C4D617267696E73
      2E4C656674050000000000000080FF3F0B4D617267696E732E546F7005000000
      0000000080FF3F0D4D617267696E732E5269676874050000000000000080FF3F
      0E4D617267696E732E426F74746F6D050000000000000080FF3F0C5374726F6B
      652E436F6C6F720709783030464641383030105374726F6B652E546869636B6E
      65737305000000000000008000400557696474680500000000000000F0024000
      0F54436F6C6F72416E696D6174696F6E00084475726174696F6E050000000000
      CDCCCCFB3F0C50726F70657274794E616D65060C5374726F6B652E436F6C6F72
      0A537461727456616C756507097830304646413830300953746F7056616C7565
      07097846464646413830300754726967676572061049734D6F7573654F766572
      3D747275650E54726967676572496E7665727365061149734D6F7573654F7665
      723D66616C73650000000554506174680005416C69676E0708616C43656E7465
      7209446174612E506174680A3400000004000000000000000000000000000000
      01000000000000000000803F010000000000803F0000003F0300000000000000
      000000000A46696C6C2E436F6C6F720708636C615768697465064C6F636B6564
      09064865696768740500000000000000E001400748697454657374080B537472
      6F6B652E4B696E640706626B4E6F6E650557696474680500000000000000C001
      40000000545046300A5452656374616E676C6500095374796C654E616D650612
      7363726F6C6C626172746F70627574746F6E0D44657369676E56697369626C65
      080A46696C6C2E436F6C6F720709784646434238383038064865696768740500
      0000000000009803400748697454657374080A506F736974696F6E2E58050000
      0000000080CE07400A506F736974696F6E2E590500000000000080F507400C53
      74726F6B652E436F6C6F72070978464636343433303405576964746805000000
      00000000800340000A5452656374616E676C650005416C69676E0708616C436C
      69656E740D44657369676E56697369626C65080946696C6C2E4B696E64070662
      6B4E6F6E65064865696768740500000000000000980340074869745465737408
      0553696465730B057364546F700673644C656674000C5374726F6B652E436F6C
      6F72070978464646364146344405576964746805000000000000008003400000
      0A5452656374616E676C650005416C69676E0708616C436C69656E740946696C
      6C2E4B696E640706626B4E6F6E65064865696768740500000000000000880340
      0748697454657374080C4D617267696E732E4C656674050000000000000080FF
      3F0B4D617267696E732E546F70050000000000000080FF3F0D4D617267696E73
      2E5269676874050000000000000080FF3F0E4D617267696E732E426F74746F6D
      050000000000000080FF3F0C5374726F6B652E436F6C6F720709783030464641
      383030105374726F6B652E546869636B6E657373050000000000000080004005
      57696474680500000000000000E00240000F54436F6C6F72416E696D6174696F
      6E00084475726174696F6E050000000000CDCCCCFB3F0C50726F70657274794E
      616D65060C5374726F6B652E436F6C6F720A537461727456616C756507097830
      304646413830300953746F7056616C7565070978464646464138303007547269
      67676572061049734D6F7573654F7665723D747275650E54726967676572496E
      7665727365061149734D6F7573654F7665723D66616C73650000000554506174
      680005416C69676E0708616C43656E74657209446174612E506174680A400000
      000500000000000000000000000000803F010000000000803F0000803F010000
      000000003F0000000001000000000000000000803F0300000000000000000000
      000A46696C6C2E436F6C6F720708636C615768697465064C6F636B6564090648
      65696768740500000000000000C001400748697454657374080B5374726F6B65
      2E4B696E640706626B4E6F6E650557696474680500000000000000E001400000
      00545046300A5452656374616E676C6500095374796C654E616D650615736372
      6F6C6C626172626F74746F6D627574746F6E0D44657369676E56697369626C65
      080A46696C6C2E436F6C6F720709784646434238383038064865696768740500
      0000000000008803400748697454657374080A506F736974696F6E2E58050000
      0000000000CE07400A506F736974696F6E2E590500000000000000F607400C53
      74726F6B652E436F6C6F72070978464636343433303405576964746805000000
      00000000880340000A5452656374616E676C650005416C69676E0708616C436C
      69656E740D44657369676E56697369626C65080946696C6C2E4B696E64070662
      6B4E6F6E65064865696768740500000000000000880340074869745465737408
      0553696465730B057364546F700673644C656674000C5374726F6B652E436F6C
      6F72070978464646364146344405576964746805000000000000008803400000
      0A5452656374616E676C650005416C69676E0708616C436C69656E740946696C
      6C2E4B696E640706626B4E6F6E65064865696768740500000000000000F00240
      0748697454657374080C4D617267696E732E4C656674050000000000000080FF
      3F0B4D617267696E732E546F70050000000000000080FF3F0D4D617267696E73
      2E5269676874050000000000000080FF3F0E4D617267696E732E426F74746F6D
      050000000000000080FF3F0C5374726F6B652E436F6C6F720709783030464641
      383030105374726F6B652E546869636B6E657373050000000000000080004005
      57696474680500000000000000F00240000F54436F6C6F72416E696D6174696F
      6E00084475726174696F6E050000000000CDCCCCFB3F0C50726F70657274794E
      616D65060C5374726F6B652E436F6C6F720A537461727456616C756507097830
      304646413830300953746F7056616C7565070978464646464138303007547269
      67676572061049734D6F7573654F7665723D747275650E54726967676572496E
      7665727365061149734D6F7573654F7665723D66616C73650000000554506174
      680005416C69676E0708616C43656E74657209446174612E506174680A340000
      0004000000000000000000000000000000010000000000803F00000000010000
      000000003F0000803F0300000000000000000000000A46696C6C2E436F6C6F72
      0708636C615768697465064C6F636B6564090648656967687405000000000000
      00C001400748697454657374080B5374726F6B652E4B696E640706626B4E6F6E
      650557696474680500000000000000E001400000005450463007544C61796F75
      7400095374796C654E616D65060B687468756D627374796C650D44657369676E
      56697369626C6508064865696768740500000000000100E002400A506F736974
      696F6E2E580500000000000080C307400A506F736974696F6E2E590500000000
      000000F70740055769647468050000000000FFFFF30440000A5452656374616E
      676C6500095374796C654E616D65060A6261636B67726F756E6405416C69676E
      0708616C436C69656E740A46696C6C2E436F6C6F720709784646434238383038
      064C6F636B656409064865696768740500000000000100E00240074869745465
      7374080C5374726F6B652E436F6C6F7207097846463634343330340557696474
      68050000000000FFFFF30440000A5452656374616E676C650005416C69676E07
      08616C436C69656E740D44657369676E56697369626C65080946696C6C2E4B69
      6E640706626B4E6F6E65064865696768740500000000000100E0024007486974
      54657374080553696465730B057364546F700673644C656674000C5374726F6B
      652E436F6C6F720709784646463641463444055769647468050000000000FFFF
      F3044000000A5452656374616E676C650005416C69676E0708616C436C69656E
      740946696C6C2E4B696E640706626B4E6F6E6506486569676874050000000000
      0100C002400748697454657374080C4D617267696E732E4C6566740500000000
      00000080FF3F0B4D617267696E732E546F70050000000000000080FF3F0D4D61
      7267696E732E5269676874050000000000000080FF3F0E4D617267696E732E42
      6F74746F6D050000000000000080FF3F0C5374726F6B652E436F6C6F72070978
      3030464641383030105374726F6B652E546869636B6E65737305000000000000
      00800040055769647468050000000000FFFFEB0440000F54436F6C6F72416E69
      6D6174696F6E00084475726174696F6E050000000000CDCCCCFB3F0C50726F70
      657274794E616D65060C5374726F6B652E436F6C6F720A537461727456616C75
      6507097830304646413830300953746F7056616C756507097846464646413830
      300754726967676572061049734D6F7573654F7665723D747275650E54726967
      676572496E7665727365061149734D6F7573654F7665723D66616C7365000000
      00005450463007544C61796F757400095374796C654E616D65060B767468756D
      627374796C650D44657369676E56697369626C65080648656967687405000000
      00000000BC04400A506F736974696F6E2E580500000000000080CF07400A506F
      736974696F6E2E590500000000000080EE0740055769647468050000000000FF
      FFBF0240000A5452656374616E676C6500095374796C654E616D65060A626163
      6B67726F756E6405416C69676E0708616C436C69656E740A46696C6C2E436F6C
      6F720709784646434238383038064C6F636B6564090648656967687405000000
      00000000BC04400748697454657374080C5374726F6B652E436F6C6F72070978
      4646363434333034055769647468050000000000FFFFBF0240000A5452656374
      616E676C650005416C69676E0708616C436C69656E740D44657369676E566973
      69626C65080946696C6C2E4B696E640706626B4E6F6E65064865696768740500
      000000000000BC04400748697454657374080553696465730B057364546F7006
      73644C656674000C5374726F6B652E436F6C6F72070978464646364146344405
      5769647468050000000000FFFFBF024000000A5452656374616E676C65000541
      6C69676E0708616C436C69656E740946696C6C2E4B696E640706626B4E6F6E65
      064865696768740500000000000000B404400748697454657374080C4D617267
      696E732E4C656674050000000000000080FF3F0B4D617267696E732E546F7005
      0000000000000080FF3F0D4D617267696E732E52696768740500000000000000
      80FF3F0E4D617267696E732E426F74746F6D050000000000000080FF3F0C5374
      726F6B652E436F6C6F720709783030464641383030105374726F6B652E546869
      636B6E6573730500000000000000800040055769647468050000000000FFFF9F
      0240000F54436F6C6F72416E696D6174696F6E00084475726174696F6E050000
      000000CDCCCCFB3F0C50726F70657274794E616D65060C5374726F6B652E436F
      6C6F720A537461727456616C756507097830304646413830300953746F705661
      6C756507097846464646413830300754726967676572061049734D6F7573654F
      7665723D747275650E54726967676572496E7665727365061149734D6F757365
      4F7665723D66616C73650000000000545046300A5452656374616E676C650009
      5374796C654E616D65060A747261636B7374796C650D44657369676E56697369
      626C65080A46696C6C2E436F6C6F720708636C61426C61636B06486569676874
      05000000000000009803400748697454657374080A506F736974696F6E2E5805
      00000000000080B407400A506F736974696F6E2E590500000000000000F60740
      0B5374726F6B652E4B696E640706626B4E6F6E65055769647468050000000000
      FFFFEF05400006545468756D6200095374796C654E616D6506057468756D6206
      4C6F636B6564090648656967687405000000000000008003400A506F73697469
      6F6E2E5805000000000000008001400A506F736974696F6E2E59050000000000
      00008001400B5374796C654C6F6F6B7570060B687468756D627374796C650854
      61624F7264657202000557696474680500000000000000CC0440000000545046
      3007544C61796F757400095374796C654E616D65060D747261636B6261727374
      796C650D44657369676E56697369626C65080648656967687405000000000001
      00E002400A506F736974696F6E2E580500000000000000B207400A506F736974
      696F6E2E590500000000000000F7074005576964746805000000000000008206
      40000A54526F756E645265637400095374796C654E616D65060668747261636B
      05416C69676E070C616C5665727443656E7465720A46696C6C2E436F6C6F7207
      08636C61426C61636B064C6F636B656409064865696768740500000000000000
      A001400748697454657374080C4D617267696E732E4C65667405000000000000
      008001400B4D617267696E732E546F700500000000000000A001400D4D617267
      696E732E526967687405000000000000008001400E4D617267696E732E426F74
      746F6D0500000000000000A001400A506F736974696F6E2E5805000000000000
      008001400A506F736974696F6E2E590500000000000000A001400B5374726F6B
      652E4B696E640706626B4E6F6E650557696474680500000000000000F4054000
      0B54476C6F774566666563740008536F66746E657373050000000000CDCCCCFC
      3F09476C6F77436F6C6F720709784646464141383030074F7061636974790500
      000000006666E6FE3F0754726967676572060E4973466F63757365643D747275
      6507456E61626C6564080000000A54526F756E645265637400095374796C654E
      616D65060676747261636B05416C69676E070C616C486F727A43656E7465720A
      46696C6C2E436F6C6F720708636C61426C61636B064C6F636B65640906486569
      67687405000000000002008001400748697454657374080C4D617267696E732E
      4C65667405000000000000008001400B4D617267696E732E546F700500000000
      000000A001400D4D617267696E732E526967687405000000000000008001400E
      4D617267696E732E426F74746F6D0500000000000000A001400A506F73697469
      6F6E2E580500000000000000F804400A506F736974696F6E2E59050000000000
      0000A001400B5374726F6B652E4B696E640706626B4E6F6E6505576964746805
      00000000000000A00140000B54476C6F774566666563740008536F66746E6573
      73050000000000CDCCCCFC3F09476C6F77436F6C6F7207097846464641413830
      30074F7061636974790500000000006666E6FE3F0754726967676572060E4973
      466F63757365643D7472756507456E61626C65640800000006545468756D6200
      095374796C654E616D6506057468756D62064C6F636B65640906486569676874
      0500000000000100E002400C4D617267696E732E4C6566740500000000000000
      8000C00B4D617267696E732E546F7005000000000000008000C00D4D61726769
      6E732E526967687405000000000000008000C00E4D617267696E732E426F7474
      6F6D05000000000000008000C00A506F736974696F6E2E580500000000000000
      C000400A506F736974696F6E2E59050000000000000080FF3F0B5374796C654C
      6F6F6B7570060D7468756D626261727374796C65085461624F72646572020205
      57696474680500000000000000F002400000005450463007544C61796F757400
      095374796C654E616D65060E7363726F6C6C6261727374796C650D4465736967
      6E56697369626C6508064865696768740500000000000000D404400A506F7369
      74696F6E2E580500000000000080A607400A506F736974696F6E2E5905000000
      00000000ED07400557696474680500000000000000B00640000A545265637461
      6E676C6500095374796C654E616D65060A6261636B67726F756E6405416C6967
      6E070A616C436F6E74656E74730A46696C6C2E436F6C6F720708636C61426C61
      636B064C6F636B656409064865696768740500000000000000D4044007486974
      54657374080B5374726F6B652E4B696E640706626B4E6F6E6505576964746805
      00000000000000B0064000000C545370656564427574746F6E00095374796C65
      4E616D65060A6C656674627574746F6E05416C69676E0706616C4C6566740648
      65696768740500000000000000880340064C6F636B6564090A506F736974696F
      6E2E5905000000000000009003400B5374796C654C6F6F6B757006137363726F
      6C6C6261726C656674627574746F6E0557696474680500000000000000900340
      00000654547261636B00095374796C654E616D65060668747261636B05416C69
      676E0708616C436C69656E74064C6F636B656409064865696768740500000000
      000000880340034D6178050000000000000080FF3F0B4F7269656E746174696F
      6E070C6F72486F72697A6F6E74616C0B5374796C654C6F6F6B75700614736372
      6F6C6C62617268747261636B7374796C65085461624F7264657202020C566965
      77706F727453697A65050000000000CDCCCCFB3F055769647468050000000000
      00008C064000000C545370656564427574746F6E00095374796C654E616D6506
      0B7269676874627574746F6E05416C69676E0707616C52696768740648656967
      68740500000000000000880340064C6F636B6564090A506F736974696F6E2E58
      05000000000000009E06400A506F736974696F6E2E5905000000000000009003
      400B5374796C654C6F6F6B757006147363726F6C6C6261727269676874627574
      746F6E055769647468050000000000000090034000000654547261636B000953
      74796C654E616D65060676747261636B05416C69676E0708616C436C69656E74
      064C6F636B656409064865696768740500000000000000880340034D61780500
      00000000000080FF3F0B4F7269656E746174696F6E070C6F72486F72697A6F6E
      74616C0B5374796C654C6F6F6B757006147363726F6C6C62617276747261636B
      7374796C65085461624F7264657202040C56696577706F727453697A65050000
      000000CDCCCCFB3F05576964746805000000000000008C064000000C54537065
      6564427574746F6E00095374796C654E616D650609746F70627574746F6E0541
      6C69676E0705616C546F70064865696768740500000000000000900340064C6F
      636B6564090B5374796C654C6F6F6B757006127363726F6C6C626172746F7062
      7574746F6E0557696474680500000000000000B0064000000C54537065656442
      7574746F6E00095374796C654E616D65060C626F74746F6D627574746F6E0541
      6C69676E0708616C426F74746F6D064865696768740500000000000000900340
      064C6F636B6564090A506F736974696F6E2E5905000000000000008C04400B53
      74796C654C6F6F6B757006157363726F6C6C626172626F74746F6D627574746F
      6E0557696474680500000000000000B006400000005450463007544C61796F75
      7400095374796C654E616D650619736D616C6C7363726F6C6C62617268747261
      636B7374796C650D44657369676E56697369626C650806486569676874050000
      00000000009803400A506F736974696F6E2E580500000000000080B407400A50
      6F736974696F6E2E590500000000000080F50740055769647468050000000000
      FFFFEF0540000A5452656374616E676C650005416C69676E0708616C436C6965
      6E740A46696C6C2E436F6C6F720708636C61426C61636B064C6F636B65640906
      48656967687405000000000000009803400748697454657374080B5374726F6B
      652E4B696E640706626B4E6F6E65055769647468050000000000FFFFEF054000
      0006545468756D6200095374796C654E616D6506057468756D62064C6F636B65
      64090648656967687405000000000000008003400A506F736974696F6E2E5805
      000000000000008001400A506F736974696F6E2E590500000000000000800140
      0B5374796C654C6F6F6B7570060B687468756D627374796C65085461624F7264
      657202010557696474680500000000000000CC04400000005450463007544C61
      796F757400095374796C654E616D650619736D616C6C7363726F6C6C62617276
      747261636B7374796C650D44657369676E56697369626C650806486569676874
      0500000000000100FC04400A506F736974696F6E2E580500000000000080CD07
      400A506F736974696F6E2E590500000000000080EA0740055769647468050000
      0000000000980340000A5452656374616E676C650005416C69676E0708616C43
      6C69656E740A46696C6C2E436F6C6F720708636C61426C61636B064C6F636B65
      6409064865696768740500000000000100FC04400748697454657374080B5374
      726F6B652E4B696E640706626B4E6F6E65055769647468050000000000000098
      0340000006545468756D6200095374796C654E616D6506057468756D62064C6F
      636B656409064865696768740500000000000000B804400A506F736974696F6E
      2E580500000000000000A001400A506F736974696F6E2E590500000000000000
      A001400B5374796C654C6F6F6B7570060B767468756D627374796C6508546162
      4F7264657202010557696474680500000000000000A002400000005450463007
      544C61796F757400095374796C654E616D650613736D616C6C7363726F6C6C62
      61727374796C650D44657369676E56697369626C650806486569676874050000
      0000000000D404400A506F736974696F6E2E580500000000000080A607400A50
      6F736974696F6E2E590500000000000000ED0740055769647468050000000000
      0000B00640000654547261636B00095374796C654E616D65060668747261636B
      05416C69676E0708616C436C69656E74064C6F636B6564090648656967687405
      00000000000000D40440034D6178050000000000000080FF3F0B4F7269656E74
      6174696F6E070C6F72486F72697A6F6E74616C0B5374796C654C6F6F6B757006
      19736D616C6C7363726F6C6C62617268747261636B7374796C65085461624F72
      64657202000C56696577706F727453697A65050000000000CDCCCCFB3F055769
      6474680500000000000000B0064000000654547261636B00095374796C654E61
      6D65060676747261636B05416C69676E0708616C436C69656E74064C6F636B65
      6409064865696768740500000000000000D40440034D61780500000000000000
      80FF3F0B4F7269656E746174696F6E070C6F72486F72697A6F6E74616C0B5374
      796C654C6F6F6B75700619736D616C6C7363726F6C6C62617276747261636B73
      74796C65085461624F7264657202010C56696577706F727453697A6505000000
      0000CDCCCCFB3F0557696474680500000000000000B006400000005450463007
      544C61796F757400095374796C654E616D65060E7363726F6C6C626F78737479
      6C650D44657369676E56697369626C6508064865696768740500000000000000
      8306400A506F736974696F6E2E580500000000000000FE06400A506F73697469
      6F6E2E590500000000000080D907400557696474680500000000000000A70740
      0007544C61796F757400095374796C654E616D65060A6261636B67726F756E64
      05416C69676E070A616C436F6E74656E7473064C6F636B656409064865696768
      7405000000000000008306400557696474680500000000000000A70740000754
      4C61796F757400095374796C654E616D650607636F6E74656E7405416C69676E
      0708616C436C69656E74064865696768740500000000000000E6054005576964
      746805000000000000009F074000000A545363726F6C6C42617200095374796C
      654E616D65060A767363726F6C6C62617205416C69676E0707616C5269676874
      064865696768740500000000000000E605400B536D616C6C4368616E67650500
      0000000000000000000B4F7269656E746174696F6E070A6F7256657274696361
      6C0A506F736974696F6E2E5805000000000000009F0740055769647468050000
      000000000080034000000A545363726F6C6C42617200095374796C654E616D65
      060A687363726F6C6C62617205416C69676E0708616C426F74746F6D06486569
      67687405000000000000008003400B536D616C6C4368616E6765050000000000
      00000000000B4F7269656E746174696F6E070C6F72486F72697A6F6E74616C0A
      506F736974696F6E2E590500000000000000E605400557696474680500000000
      000000A7074000000F54536D616C6C5363726F6C6C42617200095374796C654E
      616D65060F76736D616C6C7363726F6C6C62617205416C69676E0707616C5269
      6768740648656967687405000000000000008002400B536D616C6C4368616E67
      6505000000000000000000000B4F7269656E746174696F6E070A6F7256657274
      6963616C0C4D617267696E732E4C65667405000000000000008000400A506F73
      6974696F6E2E580500000000000000C605400A506F736974696F6E2E59050000
      00000000008000400756697369626C6508055769647468050000000000000080
      024000000F54536D616C6C5363726F6C6C42617200095374796C654E616D6506
      0F68736D616C6C7363726F6C6C62617205416C69676E0708616C426F74746F6D
      0648656967687405000000000000008002400B536D616C6C4368616E67650500
      0000000000000000000B4F7269656E746174696F6E070C6F72486F72697A6F6E
      74616C0B4D617267696E732E546F7005000000000000008000400A506F736974
      696F6E2E5805000000000000008000400A506F736974696F6E2E590500000000
      000000E205400756697369626C65080557696474680500000000000000960640
      000007544C61796F75740005416C69676E070A616C436F6E74656E7473064865
      6967687405000000000000008306400557696474680500000000000000A70740
      0007544C61796F75740005416C69676E0708616C426F74746F6D064865696768
      740500000000000000A003400A506F736974696F6E2E590500000000000000DE
      05400557696474680500000000000000A7074000095453697A65477269700009
      5374796C654E616D65060873697A656772697005416C69676E0707616C526967
      6874064C6F636B656409064865696768740500000000000000A003400A506F73
      6974696F6E2E5805000000000000009D07400557696474680500000000000000
      A003400000000000005450463007544C61796F757400095374796C654E616D65
      06146672616D65647363726F6C6C626F787374796C650D44657369676E566973
      69626C65080648656967687405000000000000008306400A506F736974696F6E
      2E580500000000000000FE06400A506F736974696F6E2E590500000000000080
      D907400557696474680500000000000000A70740000A5452656374616E676C65
      00095374796C654E616D65060A6261636B67726F756E6405416C69676E070A61
      6C436F6E74656E74730A46696C6C2E436F6C6F72070978464634303430343006
      4C6F636B65640906486569676874050000000000000083064007486974546573
      74080C50616464696E672E4C65667405000000000000008000400B5061646469
      6E672E546F7005000000000000008000400D50616464696E672E526967687405
      000000000000008000400E50616464696E672E426F74746F6D05000000000000
      008000400C5374726F6B652E436F6C6F72070978464633303330333007585261
      6469757305000000000000008000400759526164697573050000000000000080
      00400557696474680500000000000000A707400007544C61796F757400095374
      796C654E616D650607636F6E74656E7405416C69676E0708616C436C69656E74
      064865696768740500000000000000DE05400557696474680500000000000000
      9D074000000A545363726F6C6C42617200095374796C654E616D65060A767363
      726F6C6C62617205416C69676E0707616C526967687406486569676874050000
      0000000000DE05400B536D616C6C4368616E676505000000000000000000000B
      4F7269656E746174696F6E070A6F72566572746963616C0A506F736974696F6E
      2E5805000000000000009E07400A506F736974696F6E2E590500000000000000
      800040055769647468050000000000000080034000000A545363726F6C6C4261
      7200095374796C654E616D65060A687363726F6C6C62617205416C69676E0708
      616C426F74746F6D0648656967687405000000000000008003400B536D616C6C
      4368616E676505000000000000000000000B4F7269656E746174696F6E070C6F
      72486F72697A6F6E74616C0A506F736974696F6E2E5805000000000000008000
      400A506F736974696F6E2E590500000000000000E20540055769647468050000
      0000000000A5074000000F54536D616C6C5363726F6C6C42617200095374796C
      654E616D65060F76736D616C6C7363726F6C6C62617205416C69676E0707616C
      52696768740648656967687405000000000000008002400B536D616C6C436861
      6E676505000000000000000000000B4F7269656E746174696F6E070A6F725665
      72746963616C0C4D617267696E732E4C65667405000000000000008000400A50
      6F736974696F6E2E580500000000000000C605400A506F736974696F6E2E5905
      000000000000008000400756697369626C650805576964746805000000000000
      0080024000000F54536D616C6C5363726F6C6C42617200095374796C654E616D
      65060F68736D616C6C7363726F6C6C62617205416C69676E0708616C426F7474
      6F6D0648656967687405000000000000008002400B536D616C6C4368616E6765
      05000000000000000000000B4F7269656E746174696F6E070C6F72486F72697A
      6F6E74616C0B4D617267696E732E546F7005000000000000008000400A506F73
      6974696F6E2E5805000000000000008000400A506F736974696F6E2E59050000
      0000000000E205400756697369626C6508055769647468050000000000000096
      0640000007544C61796F75740005416C69676E070A616C436F6E74656E747306
      48656967687405000000000000008306400557696474680500000000000000A7
      07400007544C61796F75740005416C69676E0708616C426F74746F6D06486569
      6768740500000000000000A003400A506F736974696F6E2E5905000000000000
      00DE05400557696474680500000000000000A7074000095453697A6547726970
      00095374796C654E616D65060873697A656772697005416C69676E0707616C52
      69676874064C6F636B656409064865696768740500000000000000A003400A50
      6F736974696F6E2E5805000000000000009D0740055769647468050000000000
      0000A00340000000000000545046300A5452656374616E676C6500095374796C
      654E616D65060F6261636B67726F756E647374796C650D44657369676E566973
      69626C65080A46696C6C2E436F6C6F7207097846463235323532350648656967
      68740500000000000000C804400748697454657374080A506F736974696F6E2E
      580500000000000000C607400A506F736974696F6E2E590500000000000000EE
      07400B5374726F6B652E4B696E640706626B4E6F6E6505576964746805000000
      00000000C8044000005450463007544C61796F757400095374796C654E616D65
      060D63616C656E6461727374796C650D44657369676E56697369626C65080648
      65696768740500000000000000A006400557696474680500000000000000B406
      400009545374796C6554616700095374796C654E616D65060946697865645369
      7A65000007544C61796F75740005416C69676E0709616C4D6F7374546F70064C
      6F636B6564090648656967687405000000000000009803400E4D617267696E73
      2E426F74746F6D05000000000000008000400557696474680500000000000000
      B40640000754427574746F6E00095374796C654E616D6506047072657605416C
      69676E0706616C4C6566740843616E466F637573080648656967687405000000
      00000000980340064C6F636B6564090D4D617267696E732E5269676874050000
      00000000008000400B526570656174436C69636B090B5374796C654C6F6F6B75
      70061C7472616E73706172656E74636972636C65627574746F6E7374796C6508
      5461624F7264657202000557696474680500000000000000980340000A545061
      74684C6162656C0005416C69676E0708616C43656E74657209446174612E5061
      74680A3400000004000000000000000000803F00000000010000000000803F00
      00803F01000000000000000000003F010000000000803F00000000064C6F636B
      656409064865696768740500000000000000A001400B5374796C654C6F6F6B75
      70061263616C656E6461726C6162656C7374796C650557696474680500000000
      000000A001400000000754427574746F6E00095374796C654E616D650605746F
      64617905416C69676E0706616C4C6566740843616E466F637573080648656967
      68740500000000000000980340064C6F636B6564090D4D617267696E732E5269
      67687405000000000000008000400A506F736974696F6E2E5805000000000000
      00A803400B526570656174436C69636B090B5374796C654C6F6F6B7570061C74
      72616E73706172656E74636972636C65627574746F6E7374796C65085461624F
      7264657202010557696474680500000000000000980340000A54506174684C61
      62656C0005416C69676E0708616C43656E74657209446174612E506174680A34
      000000040000000000000089C965431BE2BB43010000002B88E1421080834301
      0000002B886143AEFA114301000000CF46AB43625F8143064C6F636B65640906
      4865696768740500000000000000A001400B5374796C654C6F6F6B7570061263
      616C656E6461726C6162656C7374796C650557696474680500000000000000A0
      01400000000754427574746F6E00095374796C654E616D6506046E6578740541
      6C69676E0706616C4C6566740843616E466F6375730806486569676874050000
      0000000000980340064C6F636B6564090D4D617267696E732E52696768740500
      0000000000008000400A506F736974696F6E2E580500000000000000A804400B
      526570656174436C69636B090B5374796C654C6F6F6B7570061C7472616E7370
      6172656E74636972636C65627574746F6E7374796C65085461624F7264657202
      020557696474680500000000000000980340000A54506174684C6162656C0005
      416C69676E0708616C43656E74657209446174612E506174680A280000000300
      000000000000000000000000000001000000000000000000803F010000000000
      803F0000003F064C6F636B656409064865696768740500000000000000A00140
      0B5374796C654C6F6F6B7570061263616C656E6461726C6162656C7374796C65
      0557696474680500000000000000A001400000000954506F707570426F780009
      5374796C654E616D6506066D6F6E74687305416C69676E0708616C436C69656E
      740843616E466F637573081244697361626C65466F637573456666656374090A
      466F6E742E5374796C650B066673426F6C640006486569676874050000000000
      0000980340064C6F636B6564090C4D617267696E732E4C656674050000000000
      0000A001400D4D617267696E732E52696768740500000000000000A001400B53
      74796C654C6F6F6B7570061263616C656E6461726C6162656C7374796C650854
      61624F7264657202030954657874416C69676E070A7461547261696C696E6705
      5769647468050000000000000086054000000954506F707570426F7800095374
      796C654E616D650605796561727305416C69676E0707616C5269676874084361
      6E466F637573081244697361626C65466F637573456666656374090A466F6E74
      2E5374796C650B066673426F6C64000648656967687405000000000000009803
      40064C6F636B6564090A506F736974696F6E2E5805000000000000008C06400B
      5374796C654C6F6F6B7570061263616C656E6461726C6162656C7374796C6508
      5461624F7264657202040954657874416C69676E070974614C656164696E6705
      57696474680500000000000000A004400000000B54477269644C61796F757400
      095374796C654E616D6506047765656B05416C69676E0705616C546F70064C6F
      636B6564090648656967687405000000000000009803400A4974656D48656967
      68740500000000000000980340094974656D5769647468050000000000000080
      05400B4F7269656E746174696F6E070C6F72486F72697A6F6E74616C0E4D6172
      67696E732E426F74746F6D05000000000000008000400A506F736974696F6E2E
      590500000000000000A803400557696474680500000000000000B4064000000B
      54477269644C61796F757400095374796C654E616D6506057765656B7305416C
      69676E070A616C4D6F73744C656674064C6F636B656409064865696768740500
      000000000000C804400A4974656D486569676874050000000000000098034009
      4974656D576964746805000000000000008005400B4F7269656E746174696F6E
      070C6F72486F72697A6F6E74616C0B4D617267696E732E546F70050000000000
      0000A803400756697369626C65080557696474680500000000000000B8034000
      0008544C697374426F7800095374796C654E616D6506046461797305416C6967
      6E0705616C546F70064C6F636B656409064865696768740500000000000000E4
      05400A506F736974696F6E2E590500000000000000A804400E53686F77536372
      6F6C6C42617273080B5374796C654C6F6F6B757006177472616E73706172656E
      746C697374626F787374796C65085461624F7264657202030557696474680500
      000000000000B4064018416C7465726E6174696E67526F774261636B67726F75
      6E64090843616E466F6375730807436F6C756D6E7302070A4974656D48656967
      687405000000000000009803401B44656661756C744974656D5374796C65732E
      4974656D5374796C6512000000002244656661756C744974656D5374796C6573
      2E47726F75704865616465725374796C6512000000002244656661756C744974
      656D5374796C65732E47726F7570466F6F7465725374796C6512000000000000
      005450463007544C61796F757400095374796C654E616D65061263616C656E64
      61726C6162656C7374796C650D44657369676E56697369626C65080648656967
      68740500000000000000A003400A506F736974696F6E2E580500000000000000
      C607400A506F736974696F6E2E590500000000000080F5074005576964746805
      00000000000000C404400005545465787400095374796C654E616D6506047465
      787405416C69676E0708616C436C69656E7405436F6C6F720708636C61576869
      7465064C6F636B656409064865696768740500000000000000A0034007486974
      5465737408045465787406056C6162656C0557696474680500000000000000C4
      0440000000545046300A5452656374616E676C6500095374796C654E616D6506
      0A70616E656C7374796C650D44657369676E56697369626C65080A46696C6C2E
      436F6C6F720709784646323532353235064865696768740500000000000000C8
      04400748697454657374080A506F736974696F6E2E580500000000000000C607
      400A506F736974696F6E2E590500000000000000EE07400C5374726F6B652E43
      6F6C6F7207097846463438343834380557696474680500000000000000C80440
      000054504630115443616C6C6F757452656374616E676C6500095374796C654E
      616D65061163616C6C6F757470616E656C7374796C650D44657369676E566973
      69626C65080A46696C6C2E436F6C6F7207097846463235323532350648656967
      68740500000000000000C804400748697454657374080A506F736974696F6E2E
      580500000000000000C607400A506F736974696F6E2E590500000000000000EE
      07400C5374726F6B652E436F6C6F720709784646343834383438055769647468
      0500000000000000C804400C43616C6C6F757457696474680500000000000000
      B803400D43616C6C6F75744C656E6774680500000000000000B0024000005450
      46300A5452656374616E676C6500095374796C654E616D65060E737461747573
      6261727374796C650D44657369676E56697369626C65080946696C6C2E4B696E
      64070A626B4772616469656E741446696C6C2E4772616469656E742E506F696E
      74730E0105436F6C6F720709784646353635363536064F666673657405000000
      00000000000000000105436F6C6F720709784646333833383338064F66667365
      74050000000000000080FF3F0000064865696768740500000000000000C80440
      0748697454657374080A506F736974696F6E2E580500000000000000C607400A
      506F736974696F6E2E590500000000000000EE07400557696474680500000000
      000000C8044000095453697A654772697000095374796C654E616D6506087369
      7A656772697005416C69676E0707616C5269676874064C6F636B656409064865
      696768740500000000000000B804400C4D617267696E732E4C65667405000000
      000000008000400B4D617267696E732E546F7005000000000000008000400D4D
      617267696E732E526967687405000000000000008000400E4D617267696E732E
      426F74746F6D05000000000000008000400A506F736974696F6E2E5805000000
      00000000E003400A506F736974696F6E2E590500000000000000800040055769
      6474680500000000000000A00340000000545046300A5452656374616E676C65
      00095374796C654E616D65060C746F6F6C6261727374796C650D44657369676E
      56697369626C65080A46696C6C2E436F6C6F7207097846463235323532350648
      65696768740500000000000000C804400748697454657374080A506F73697469
      6F6E2E580500000000000000C607400A506F736974696F6E2E59050000000000
      0000EE07400553696465730B087364426F74746F6D0005576964746805000000
      00000000C8044000005450463007544C61796F757400095374796C654E616D65
      0615657870616E646572636865636B626F787374796C650D44657369676E5669
      7369626C65080648656967687405000000000000008404400A506F736974696F
      6E2E580500000000000080B107400A506F736974696F6E2E5905000000000000
      00F2074005576964746805000000000000008406400007544C61796F75740005
      416C69676E0706616C4C65667406486569676874050000000000000084044005
      57696474680500000000000000C00340000554506174680005416C69676E0708
      616C436C69656E7409446174612E506174680AD80100002700000000000000FE
      C8BA4402E79244020000002592AD4402E79244020000006D5BA544FEB09E4402
      0000006D5BA544FEB09E440200000093A4A4446A0C9F44020000004A80AC44FC
      79AA4402000000046EBA44FC79AA44020000004A00C844FC79AA440200000000
      80CF44FEB09E44020000000080CF44FEB09E44020000000080CF44FEB09E4402
      0000004C5BC84402E7924402000000FEC8BA4402E7924400000000FE88BA44FE
      30974402000000B876BF44FE309744020000000277C344EEA09A440200000002
      77C34404DE9E44020000000277C344121BA34402000000B876BF44008CA64402
      000000FE88BA44008CA644020000004C9BB544008CA64402000000009CB14412
      1BA34402000000009CB14404DE9E4402000000009CB144EEA09A44020000004C
      9BB544FE30974402000000FE88BA44FE309744000000000080BA44045E9B4402
      000000146EB844045E9B440200000000C0B64454F79C440200000000C0B64400
      F09E440200000000C0B644ACE8A04402000000146EB844FC81A2440200000000
      80BA44FC81A24402000000EC91BC44FC81A244020000000040BE44ACE8A04402
      0000000040BE4400F09E44020000000040BE4454F79C4402000000EC91BC4404
      5E9B44020000000080BA44045E9B440A46696C6C2E436F6C6F72070978363046
      4646464646064865696768740500000000000000E80340074869745465737408
      0C4D617267696E732E4C65667405000000000000008000400B4D617267696E73
      2E546F7005000000000000008000400D4D617267696E732E5269676874050000
      00000000008000400E4D617267696E732E426F74746F6D050000000000000080
      00400B5374726F6B652E4B696E640706626B4E6F6E6505576964746805000000
      00000000A0034008577261704D6F646507057077466974000F54436F6C6F7241
      6E696D6174696F6E00084475726174696F6E050000000000CDCCCCFB3F0C5072
      6F70657274794E616D65060A46696C6C2E436F6C6F720A537461727456616C75
      6507097836304646464646460953746F7056616C75650708636C615768697465
      0754726967676572060E4973436865636B65643D747275650E54726967676572
      496E7665727365060F4973436865636B65643D66616C73650000000005545465
      787400095374796C654E616D6506047465787405416C69676E0708616C436C69
      656E7405436F6C6F720709784646454545454545064C6F636B65640906486569
      6768740500000000000000F803400748697454657374080D486F727A54657874
      416C69676E070974614C656164696E670C4D617267696E732E4C656674050000
      00000000008002400B4D617267696E732E546F7005000000000000008000400D
      4D617267696E732E5269676874050000000000000080FF3F0454657874060843
      6865636B426F780557696474680500000000000000C605400000005450463007
      544C61796F757400095374796C654E616D65060D657870616E6465727374796C
      650D44657369676E56697369626C6508064865696768740500000000000000F2
      05400A506F736974696F6E2E580500000000000080AA07400A506F736974696F
      6E2E590500000000000000DC074005576964746805000000000000009F064000
      0A5452656374616E676C650005416C69676E070A616C436F6E74656E74730A46
      696C6C2E436F6C6F720709784646323532353235064C6F636B65640906486569
      6768740500000000000000F205400748697454657374080C5374726F6B652E43
      6F6C6F72070978464634383438343805576964746805000000000000009F0640
      000005545465787400095374796C654E616D6506047465787405416C69676E07
      05616C546F7005436F6C6F720708636C615768697465064C6F636B6564090648
      65696768740500000000000000C803400748697454657374080C4D617267696E
      732E4C6566740500000000000000C804400A506F736974696F6E2E5805000000
      00000000C804400557696474680500000000000000DA054008576F7264577261
      7008000F54457870616E646572427574746F6E00095374796C654E616D650606
      627574746F6E05416C69676E0706616C4C656674064865696768740500000000
      000000C80340064C6F636B6564090C4D617267696E732E4C6566740500000000
      000000C804C00A506F736974696F6E2E580500000000000000C804C008546162
      4F7264657202000557696474680500000000000000A003400000095443686563
      6B426F7800095374796C654E616D650608636865636B626F7805416C69676E07
      06616C4C6566740843616E466F63757308064C6F636B65640906486569676874
      0500000000000000C803400D4D617267696E732E526967687405000000000000
      00F003C00A506F736974696F6E2E580500000000000000F003C00B5374796C65
      4C6F6F6B75700615657870616E646572636865636B626F787374796C65085461
      624F7264657202010557696474680500000000000000F0034000000000545046
      3007544C61796F757400095374796C654E616D65060D67726F7570626F787374
      796C650D44657369676E56697369626C65080648656967687405000000000000
      00CC05400C50616464696E672E4C65667405000000000000008000400B506164
      64696E672E546F7005000000000000008002400D50616464696E672E52696768
      7405000000000000008000400E50616464696E672E426F74746F6D0500000000
      0000008000400A506F736974696F6E2E580500000000000000B107400A506F73
      6974696F6E2E590500000000000000E107400557696474680500000000000000
      870640000A5452656374616E676C6500095374796C654E616D65060A6261636B
      67726F756E6405416C69676E0708616C436C69656E740946696C6C2E4B696E64
      0706626B4E6F6E65064C6F636B656409064865696768740500000000000000B8
      05400748697454657374080C5374726F6B652E436F6C6F720709784646343834
      38343807585261646975730500000000000000A0014007595261646975730500
      000000000000A001400557696474680500000000000000830640000554546578
      7400095374796C654E616D65060474657874084175746F53697A65090A436C69
      70506172656E740905436F6C6F720708636C615768697465064C6F636B656409
      0648656967687405000000000000009803400748697454657374080A506F7369
      74696F6E2E580500000000000000F002400A506F736974696F6E2E5905000000
      000000008002C00454657874060847726F7570626F7805576964746805000000
      00000000D0044008576F72645772617008000000005450463007544C61796F75
      7400095374796C654E616D650611696D616765636F6E74726F6C7374796C650D
      44657369676E56697369626C6508064865696768740500000000000000D00340
      0A506F736974696F6E2E580500000000000000C007400A506F736974696F6E2E
      590500000000000000F407400557696474680500000000000000920540000A54
      52656374616E676C6500095374796C654E616D65060A6261636B67726F756E64
      05416C69676E070A616C436F6E74656E74730946696C6C2E4B696E64070A626B
      4772616469656E741446696C6C2E4772616469656E742E506F696E74730E0105
      436F6C6F720709784646333033303330064F6666736574050000000000000000
      0000000105436F6C6F720709784646343034303430064F666673657405000000
      00000BBCB2FE3F000105436F6C6F720709784646343034303430064F66667365
      74050000000000000080FF3F0000064C6F636B65640906486569676874050000
      0000000000D003400748697454657374080C5374726F6B652E436F6C6F720709
      78464633303330333007585261646975730500000000000000C0004007595261
      646975730500000000000000C000400557696474680500000000000000920540
      000654496D61676500095374796C654E616D650605696D6167650E4D756C7469
      5265734269746D61700E01000005416C69676E0708616C436C69656E74064C6F
      636B656409064865696768740500000000000000A00340074869745465737408
      0C4D617267696E732E4C6566740500000000000000C000400B4D617267696E73
      2E546F700500000000000000C000400D4D617267696E732E5269676874050000
      0000000000C000400E4D617267696E732E426F74746F6D0500000000000000C0
      004005576964746805000000000000008605400000000B54476C6F7745666665
      63740008536F66746E657373050000000000CDCCCCFC3F09476C6F77436F6C6F
      720709784646464141383030074F7061636974790500000000006666E6FE3F07
      54726967676572060E4973466F63757365643D7472756507456E61626C656408
      0000005450463007544C61796F757400095374796C654E616D65060B62757474
      6F6E7374796C650D44657369676E56697369626C650806486569676874050000
      0000000000D003400A506F736974696F6E2E580500000000000000C007400A50
      6F736974696F6E2E590500000000000000F40740055769647468050000000000
      0000920540000A5452656374616E676C6500095374796C654E616D65060A6261
      636B67726F756E6405416C69676E070A616C436F6E74656E74730946696C6C2E
      4B696E64070A626B4772616469656E741446696C6C2E4772616469656E742E50
      6F696E74730E0105436F6C6F720709784646453539443030064F666673657405
      00000000000000000000000105436F6C6F720709784646424238383030064F66
      66736574050000000000000080FE3F000105436F6C6F72070978464642333832
      3030064F6666736574050000000000000080FF3F0000064C6F636B6564090648
      65696768740500000000000000D003400748697454657374080C5374726F6B65
      2E436F6C6F720709784646423138313030075852616469757305000000000000
      00C0004007595261646975730500000000000000C00040055769647468050000
      0000000000920540000A5452656374616E676C650005416C69676E0708616C43
      6C69656E740946696C6C2E4B696E640706626B4E6F6E65064C6F636B65640906
      4865696768740500000000000000C003400748697454657374080C4D61726769
      6E732E4C656674050000000000000080FF3F0B4D617267696E732E546F700500
      00000000000080FF3F0D4D617267696E732E5269676874050000000000000080
      FF3F0E4D617267696E732E426F74746F6D050000000000000080FF3F0C537472
      6F6B652E436F6C6F720709784646444639393043075852616469757305000000
      00000000C0004007595261646975730500000000000000C00040055769647468
      05000000000000008E054000000A5452656374616E676C650005416C69676E07
      08616C436C69656E740A46696C6C2E436F6C6F72070978464646354138303006
      4C6F636B656409064865696768740500000000000000D0034007486974546573
      7408074F7061636974790500000000006F1283F53F0B5374726F6B652E4B696E
      640706626B4E6F6E6507585261646975730500000000000000C0004007595261
      646975730500000000000000C000400557696474680500000000000000920540
      000F54466C6F6174416E696D6174696F6E00084475726174696F6E0500000000
      00CDCCCCFC3F0C50726F70657274794E616D6506074F7061636974790A537461
      727456616C75650500000000006F1283F53F0953746F7056616C756505000000
      0000000080FF3F0754726967676572062049734D6F7573654F7665723D747275
      653B4973507265737365643D66616C73650E54726967676572496E7665727365
      062149734D6F7573654F7665723D66616C73653B4973507265737365643D6661
      6C73650000001054496E6E6572476C6F774566666563740008536F66746E6573
      73050000000000CDCCCCFD3F09476C6F77436F6C6F7207097846463446344434
      38074F7061636974790500000000006666E6FE3F0754726967676572060E4973
      507265737365643D7472756507456E61626C6564080000000554546578740009
      5374796C654E616D6506047465787405416C69676E0708616C436C69656E7405
      436F6C6F720709784646453045304530064C6F636B6564090648656967687405
      00000000000000B003400748697454657374080C4D617267696E732E4C656674
      0500000000000000A001400B4D617267696E732E546F70050000000000000080
      00400D4D617267696E732E52696768740500000000000000A001400E4D617267
      696E732E426F74746F6D05000000000000008000400454657874060662757474
      6F6E0557696474680500000000000000FC044008576F7264577261700800000B
      54476C6F774566666563740008536F66746E657373050000000000CDCCCCFC3F
      09476C6F77436F6C6F720709784646464141383030074F706163697479050000
      0000006666E6FE3F0754726967676572060E4973466F63757365643D74727565
      07456E61626C6564080000005450463007544C61796F757400095374796C654E
      616D650610636F6C6F72627574746F6E7374796C650D44657369676E56697369
      626C6508064865696768740500000000000000D003400A506F736974696F6E2E
      580500000000000000C007400A506F736974696F6E2E590500000000000000F4
      07400557696474680500000000000000920540000A5452656374616E676C6500
      095374796C654E616D65060A6261636B67726F756E6405416C69676E070A616C
      436F6E74656E74730946696C6C2E4B696E64070A626B4772616469656E741446
      696C6C2E4772616469656E742E506F696E74730E0105436F6C6F720709784646
      453539443030064F66667365740500000000000000000000000105436F6C6F72
      0709784646424238383030064F6666736574050000000000000080FE3F000105
      436F6C6F720709784646423338323030064F6666736574050000000000000080
      FF3F0000064C6F636B656409064865696768740500000000000000D003400748
      697454657374080C5374726F6B652E436F6C6F72070978464642313831303007
      585261646975730500000000000000C000400759526164697573050000000000
      0000C000400557696474680500000000000000920540000A5452656374616E67
      6C650005416C69676E0708616C436C69656E740946696C6C2E4B696E64070662
      6B4E6F6E65064C6F636B656409064865696768740500000000000000C0034007
      48697454657374080C4D617267696E732E4C656674050000000000000080FF3F
      0B4D617267696E732E546F70050000000000000080FF3F0D4D617267696E732E
      5269676874050000000000000080FF3F0E4D617267696E732E426F74746F6D05
      0000000000000080FF3F0C5374726F6B652E436F6C6F72070978464644463939
      304307585261646975730500000000000000C000400759526164697573050000
      0000000000C0004005576964746805000000000000008E054000000A54526563
      74616E676C650005416C69676E0708616C436C69656E740A46696C6C2E436F6C
      6F720709784646463541383030064C6F636B6564090648656967687405000000
      00000000D00340074869745465737408074F7061636974790500000000006F12
      83F53F0B5374726F6B652E4B696E640706626B4E6F6E65075852616469757305
      00000000000000C0004007595261646975730500000000000000C00040055769
      6474680500000000000000920540000F54466C6F6174416E696D6174696F6E00
      084475726174696F6E050000000000CDCCCCFC3F0C50726F70657274794E616D
      6506074F7061636974790A537461727456616C75650500000000006F1283F53F
      0953746F7056616C7565050000000000000080FF3F0754726967676572062049
      734D6F7573654F7665723D747275653B4973507265737365643D66616C73650E
      54726967676572496E7665727365062149734D6F7573654F7665723D66616C73
      653B4973507265737365643D66616C73650000001054496E6E6572476C6F7745
      66666563740008536F66746E657373050000000000CDCCCCFD3F09476C6F7743
      6F6C6F720709784646344634443438074F7061636974790500000000006666E6
      FE3F0754726967676572060E4973507265737365643D7472756507456E61626C
      6564080000000A5452656374616E676C6500095374796C654E616D6506046669
      6C6C05416C69676E0708616C436C69656E740A46696C6C2E436F6C6F72070863
      6C61426C61636B064C6F636B6564090648656967687405000000000000008003
      400748697454657374080C4D617267696E732E4C6566740500000000000000C0
      01400B4D617267696E732E546F700500000000000000A001400D4D617267696E
      732E52696768740500000000000000C001400E4D617267696E732E426F74746F
      6D0500000000000000A001400C5374726F6B652E436F6C6F7207097846463641
      364136410557696474680500000000000000F4044000000B54476C6F77456666
      6563740008536F66746E657373050000000000CDCCCCFC3F09476C6F77436F6C
      6F720709784646464141383030074F7061636974790500000000006666E6FE3F
      0754726967676572060E4973466F63757365643D7472756507456E61626C6564
      080000005450463007544C61796F757400095374796C654E616D650611636F72
      6E6572627574746F6E7374796C650D44657369676E56697369626C6508064865
      696768740500000000000000D003400A506F736974696F6E2E58050000000000
      0000C007400A506F736974696F6E2E590500000000000000F407400557696474
      680500000000000000920540000A5452656374616E676C6500095374796C654E
      616D65060A6261636B67726F756E6405416C69676E070A616C436F6E74656E74
      730946696C6C2E4B696E64070A626B4772616469656E741446696C6C2E477261
      6469656E742E506F696E74730E0105436F6C6F72070978464645353944303006
      4F66667365740500000000000000000000000105436F6C6F7207097846464242
      38383030064F6666736574050000000000000080FE3F000105436F6C6F720709
      784646423338323030064F6666736574050000000000000080FF3F0000064C6F
      636B656409064865696768740500000000000000D00340074869745465737408
      0C5374726F6B652E436F6C6F7207097846464231383130300758526164697573
      050000000000000080FF3F0759526164697573050000000000000080FF3F0557
      6964746805000000000000009205400012544772616469656E74416E696D6174
      696F6E00084475726174696F6E050000000000CDCCCCFC3F0C50726F70657274
      794E616D65060D46696C6C2E4772616469656E7411537461727456616C75652E
      506F696E74730E0105436F6C6F720709784646453539443030064F6666736574
      0500000000000000000000000105436F6C6F720709784646424238383030064F
      6666736574050000000000000080FE3F000105436F6C6F720709784646423338
      323030064F6666736574050000000000000080FF3F00001053746F7056616C75
      652E506F696E74730E0105436F6C6F720709784646463541383030064F666673
      65740500000000000000000000000105436F6C6F720709784646463541383030
      064F66667365740500000000000000000000000105436F6C6F72070978464646
      3541383030064F6666736574050000000000000080FF3F000007547269676765
      72062049734D6F7573654F7665723D747275653B4973507265737365643D6661
      6C73650E54726967676572496E7665727365062149734D6F7573654F7665723D
      66616C73653B4973507265737365643D66616C736500001054496E6E6572476C
      6F774566666563740008536F66746E657373050000000000CDCCCCFD3F09476C
      6F77436F6C6F720709784646344634443438074F706163697479050000000000
      6666E6FE3F0754726967676572060E4973507265737365643D7472756507456E
      61626C65640800000005545465787400095374796C654E616D65060474657874
      05416C69676E0708616C436C69656E7405436F6C6F7207097846464530453045
      30064C6F636B656409064865696768740500000000000000B003400748697454
      657374080C4D617267696E732E4C6566740500000000000000A001400B4D6172
      67696E732E546F7005000000000000008000400D4D617267696E732E52696768
      740500000000000000A001400E4D617267696E732E426F74746F6D0500000000
      00000080004004546578740606627574746F6E05576964746805000000000000
      00FC044000000B54476C6F774566666563740008536F66746E65737305000000
      0000CDCCCCFC3F09476C6F77436F6C6F720709784646464141383030074F7061
      636974790500000000006666E6FE3F0754726967676572060E4973466F637573
      65643D7472756507456E61626C6564080000005450463007544C61796F757400
      095374796C654E616D6506107370656564627574746F6E7374796C650D446573
      69676E56697369626C6508064865696768740500000000000000D003400A506F
      736974696F6E2E580500000000000000C007400A506F736974696F6E2E590500
      000000000000F407400557696474680500000000000000920540000A54526563
      74616E676C6500095374796C654E616D65060A6261636B67726F756E6405416C
      69676E070A616C436F6E74656E74730946696C6C2E4B696E64070A626B477261
      6469656E741446696C6C2E4772616469656E742E506F696E74730E0105436F6C
      6F720709784646453539443030064F6666736574050000000000000000000000
      0105436F6C6F720709784646424238383030064F666673657405000000000000
      0080FE3F000105436F6C6F720709784646423338323030064F66667365740500
      00000000000080FF3F0000064C6F636B65640906486569676874050000000000
      0000D003400748697454657374080C5374726F6B652E436F6C6F720709784646
      42313831303007585261646975730500000000000000C0004007595261646975
      730500000000000000C000400557696474680500000000000000920540000A54
      52656374616E676C650005416C69676E0708616C436C69656E740946696C6C2E
      4B696E640706626B4E6F6E65064C6F636B656409064865696768740500000000
      000000C003400748697454657374080C4D617267696E732E4C65667405000000
      0000000080FF3F0B4D617267696E732E546F70050000000000000080FF3F0D4D
      617267696E732E5269676874050000000000000080FF3F0E4D617267696E732E
      426F74746F6D050000000000000080FF3F0C5374726F6B652E436F6C6F720709
      78464644463939304307585261646975730500000000000000C0004007595261
      646975730500000000000000C0004005576964746805000000000000008E0540
      00000A5452656374616E676C650005416C69676E0708616C436C69656E740A46
      696C6C2E436F6C6F720709784646463541383030064C6F636B65640906486569
      6768740500000000000000D00340074869745465737408074F70616369747905
      00000000006F1283F53F0B5374726F6B652E4B696E640706626B4E6F6E650758
      5261646975730500000000000000C00040075952616469757305000000000000
      00C000400557696474680500000000000000920540000F54466C6F6174416E69
      6D6174696F6E00084475726174696F6E050000000000CDCCCCFC3F0C50726F70
      657274794E616D6506074F7061636974790A537461727456616C756505000000
      00006F1283F53F0953746F7056616C7565050000000000000080FF3F07547269
      67676572062049734D6F7573654F7665723D747275653B497350726573736564
      3D66616C73650E54726967676572496E7665727365062149734D6F7573654F76
      65723D66616C73653B4973507265737365643D66616C73650000001054496E6E
      6572476C6F774566666563740008536F66746E657373050000000000CDCCCCFD
      3F09476C6F77436F6C6F720709784646344634443438074F7061636974790500
      000000006666E6FE3F0754726967676572060E4973507265737365643D747275
      6507456E61626C65640800000005545465787400095374796C654E616D650604
      7465787405416C69676E0708616C436C69656E7405436F6C6F72070978464645
      3045304530064C6F636B656409064865696768740500000000000000B0034007
      48697454657374080C4D617267696E732E4C6566740500000000000000A00140
      0B4D617267696E732E546F7005000000000000008000400D4D617267696E732E
      52696768740500000000000000A001400E4D617267696E732E426F74746F6D05
      0000000000000080004004546578740606627574746F6E055769647468050000
      0000000000FC04400000005450463007544C61796F757400095374796C654E61
      6D65060C6172636469616C7374796C650D44657369676E56697369626C650806
      4865696768740500000000000000D003400A506F736974696F6E2E5805000000
      00000000C007400A506F736974696F6E2E590500000000000000F40740055769
      6474680500000000000000920540000854456C6C6970736500095374796C654E
      616D65060A6261636B67726F756E6405416C69676E070A616C436F6E74656E74
      730946696C6C2E4B696E64070A626B4772616469656E741446696C6C2E477261
      6469656E742E506F696E74730E0105436F6C6F72070978464645353944303006
      4F66667365740500000000000000000000000105436F6C6F7207097846464242
      38383030064F6666736574050000000000000080FE3F000105436F6C6F720709
      784646423338323030064F6666736574050000000000000080FF3F0000064C6F
      636B656409064865696768740500000000000000D00340074869745465737408
      0C5374726F6B652E436F6C6F7207097846464231383130300557696474680500
      000000000000920540000854456C6C697073650005416C69676E0708616C436C
      69656E740946696C6C2E4B696E640706626B4E6F6E65064C6F636B6564090648
      65696768740500000000000000C003400748697454657374080C4D617267696E
      732E4C656674050000000000000080FF3F0B4D617267696E732E546F70050000
      000000000080FF3F0D4D617267696E732E5269676874050000000000000080FF
      3F0E4D617267696E732E426F74746F6D050000000000000080FF3F0C5374726F
      6B652E436F6C6F72070978464644463939304305576964746805000000000000
      008E054000000854456C6C697073650005416C69676E0708616C436C69656E74
      0A46696C6C2E436F6C6F720709784646463541383030064C6F636B6564090648
      65696768740500000000000000D00340074869745465737408074F7061636974
      790500000000006F1283F53F0B5374726F6B652E4B696E640706626B4E6F6E65
      0557696474680500000000000000920540000F54466C6F6174416E696D617469
      6F6E00084475726174696F6E050000000000CDCCCCFC3F0C50726F7065727479
      4E616D6506074F7061636974790A537461727456616C75650500000000006F12
      83F53F0953746F7056616C7565050000000000000080FF3F0754726967676572
      062049734D6F7573654F7665723D747275653B4973507265737365643D66616C
      73650E54726967676572496E7665727365062149734D6F7573654F7665723D66
      616C73653B4973507265737365643D66616C73650000001054496E6E6572476C
      6F774566666563740008536F66746E657373050000000000CDCCCCFD3F09476C
      6F77436F6C6F720709784646344634443438074F706163697479050000000000
      6666E6FE3F0754726967676572060E4973507265737365643D7472756507456E
      61626C65640800000007544C61796F757400095374796C654E616D6506047469
      636B05416C69676E0708616C436C69656E740648656967687405000000000000
      00B003400C4D617267696E732E4C65667405000000000000008000400B4D6172
      67696E732E546F7005000000000000008000400D4D617267696E732E52696768
      7405000000000000008000400E4D617267696E732E426F74746F6D0500000000
      00000080004005576964746805000000000000008A05400007544C61796F7574
      0005416C69676E0707616C5269676874064865696768740500000000000000B0
      03400A506F736974696F6E2E5805000000000000008005400557696474680500
      000000000000A00140000854456C6C697073650005416C69676E0708616C4365
      6E746572064C6F636B6564090648656967687405000000000000008001400748
      697454657374080B5374726F6B652E4B696E640706626B4E6F6E650557696474
      6805000000000000008001400000000005545465787400095374796C654E616D
      6506047465787405416C69676E0708616C436C69656E7405436F6C6F72070978
      464645304530453009466F6E742E53697A650500000000000000900240064C6F
      636B656409064865696768740500000000000000D00340074869745465737408
      0454657874060474657874055769647468050000000000000092054008576F72
      645772617008000005545465787400095374796C654E616D650609747261636B
      7465787405416C69676E0708616C426F74746F6D05436F6C6F72070978464645
      304530453009466F6E742E53697A650500000000000000900240064C6F636B65
      6409064865696768740500000000000000A002400748697454657374080E4D61
      7267696E732E426F74746F6D0500000000000000A002C00A506F736974696F6E
      2E590500000000000000D0034004546578740604746578740557696474680500
      00000000000092054008576F726457726170080000005450463007544C61796F
      757400095374796C654E616D65060D73706C69747465727374796C650D446573
      69676E56697369626C6508064865696768740500000000000000C804400A506F
      736974696F6E2E580500000000000000C607400A506F736974696F6E2E590500
      000000000000EE07400557696474680500000000000000C80440000854456C6C
      6970736500095374796C654E616D6506046772697005416C69676E0708616C43
      656E7465720946696C6C2E4B696E64070A626B4772616469656E741446696C6C
      2E4772616469656E742E506F696E74730E0105436F6C6F720709784646344634
      463446064F66667365740500000000000000000000000105436F6C6F72070978
      4646344434443444064F666673657405000000000050BFADFD3F000105436F6C
      6F720709784646343434343434064F66667365740500000000001E23F2FD3F00
      0105436F6C6F720709784646334533453345064F6666736574050000000000AA
      2884FE3F00001C46696C6C2E4772616469656E742E53746F70506F736974696F
      6E2E58050000000000000080FF3F064C6F636B65640906486569676874050000
      0000000000E001400748697454657374080C5374726F6B652E436F6C6F720709
      7846464130413041300557696474680500000000000000E00140000000545046
      3007544C61796F757400095374796C654E616D650609656469747374796C650D
      44657369676E56697369626C6508064865696768740500000000000000B00340
      0A506F736974696F6E2E580500000000000080B707400A506F736974696F6E2E
      590500000000000000F507400557696474680500000000000000D60540000A54
      52656374616E676C6500095374796C654E616D65060A6261636B67726F756E64
      05416C69676E070A616C436F6E74656E74730A46696C6C2E436F6C6F72070863
      6C61426C61636B064C6F636B656409064865696768740500000000000000B003
      400748697454657374080B5374726F6B652E4B696E640706626B4E6F6E650557
      696474680500000000000000D60540000A5452656374616E676C650005416C69
      676E070A616C436F6E74656E74730946696C6C2E4B696E640706626B4E6F6E65
      064C6F636B656409064865696768740500000000000000A00340074869745465
      7374080C4D617267696E732E4C656674050000000000000080FF3F0B4D617267
      696E732E546F70050000000000000080FF3F0D4D617267696E732E5269676874
      050000000000000080FF3F0E4D617267696E732E426F74746F6D050000000000
      000080FF3F0C5374726F6B652E436F6C6F720709784646334533453345055769
      6474680500000000000000D205400000000C5442727573684F626A6563740009
      5374796C654E616D65060A666F726567726F756E6400000C5442727573684F62
      6A65637400095374796C654E616D65060973656C656374696F6E0B4272757368
      2E436F6C6F720709783730463541343041000007544C61796F75740009537479
      6C654E616D650607636F6E74656E7405416C69676E0708616C436C69656E7406
      4C6F636B6564090648656967687405000000000000008003400C4D617267696E
      732E4C6566740500000000000000C000400B4D617267696E732E546F70050000
      0000000000C000400D4D617267696E732E52696768740500000000000000C000
      400E4D617267696E732E426F74746F6D0500000000000000C000400557696474
      680500000000000000C00440000007544C61796F757400095374796C654E616D
      650607627574746F6E7305416C69676E0707616C5269676874064C6F636B6564
      090648656967687405000000000000008003400B4D617267696E732E546F7005
      00000000000000C000400D4D617267696E732E52696768740500000000000000
      C000400E4D617267696E732E426F74746F6D0500000000000000C000400A506F
      736974696F6E2E580500000000000000D804400A506F736974696F6E2E590500
      000000000000C000400557696474680500000000000000C8044000000B54476C
      6F774566666563740008536F66746E657373050000000000CDCCCCFC3F09476C
      6F77436F6C6F720709784646464141383030074F706163697479050000000000
      6666E6FE3F0754726967676572060E4973466F63757365643D7472756507456E
      61626C656408000000545046300A5452656374616E676C6500095374796C654E
      616D6506167472616E73706172656E74627574746F6E7374796C650D44657369
      676E56697369626C65080A46696C6C2E436F6C6F720709783030383038303830
      064865696768740500000000000000F002400748697454657374080A506F7369
      74696F6E2E580500000000000000CF07400A506F736974696F6E2E5905000000
      00000000F707400B5374726F6B652E4B696E640706626B4E6F6E650557696474
      680500000000000000F00240000F54436F6C6F72416E696D6174696F6E000844
      75726174696F6E050000000000CDCCCCFB3F0C50726F70657274794E616D6506
      0A46696C6C2E436F6C6F720A537461727456616C756507097830303830383038
      300953746F7056616C7565070978414638303830383007547269676765720610
      49734D6F7573654F7665723D7472756500000F54436F6C6F72416E696D617469
      6F6E00084475726174696F6E050000000000CDCCCCFB3F0C50726F7065727479
      4E616D65060A46696C6C2E636F6C6F720A537461727456616C75650709784146
      3830383038300953746F7056616C756507097830303830383038300754726967
      676572061149734D6F7573654F7665723D66616C736500000F54466C6F617441
      6E696D6174696F6E00084475726174696F6E050000000000CDCCCCFB3F0C5072
      6F70657274794E616D65060E506172656E742E4F7061636974790A5374617274
      56616C7565050000000000000080FF3F0953746F7056616C7565050000000000
      000080FE3F0754726967676572061049734D6F7573654F7665723D7472756500
      000F54466C6F6174416E696D6174696F6E00084475726174696F6E0500000000
      00CDCCCCFB3F0C50726F70657274794E616D65060E506172656E742E4F706163
      6974790A537461727456616C7565050000000000000080FE3F0953746F705661
      6C7565050000000000000080FF3F0754726967676572061149734D6F7573654F
      7665723D66616C7365000000545046300854456C6C6970736500095374796C65
      4E616D65061C7472616E73706172656E74636972636C65627574746F6E737479
      6C650D44657369676E56697369626C65080A46696C6C2E436F6C6F7207097830
      30383038303830064865696768740500000000000000F0024007486974546573
      74080A506F736974696F6E2E580500000000000000CF07400A506F736974696F
      6E2E590500000000000000F707400B5374726F6B652E4B696E640706626B4E6F
      6E650557696474680500000000000000F00240000F54436F6C6F72416E696D61
      74696F6E00084475726174696F6E050000000000CDCCCCFB3F0C50726F706572
      74794E616D65060A46696C6C2E436F6C6F720A537461727456616C7565070978
      30303830383038300953746F7056616C75650709784146383038303830075472
      6967676572061049734D6F7573654F7665723D7472756500000F54436F6C6F72
      416E696D6174696F6E00084475726174696F6E050000000000CDCCCCFB3F0C50
      726F70657274794E616D65060A46696C6C2E636F6C6F720A537461727456616C
      756507097841463830383038300953746F7056616C7565070978303038303830
      38300754726967676572061149734D6F7573654F7665723D66616C736500000F
      54466C6F6174416E696D6174696F6E00084475726174696F6E050000000000CD
      CCCCFB3F0C50726F70657274794E616D65060E506172656E742E4F7061636974
      790A537461727456616C7565050000000000000080FF3F0953746F7056616C75
      65050000000000000080FE3F0754726967676572061049734D6F7573654F7665
      723D7472756500000F54466C6F6174416E696D6174696F6E0008447572617469
      6F6E050000000000CDCCCCFB3F0C50726F70657274794E616D65060E50617265
      6E742E4F7061636974790A537461727456616C7565050000000000000080FE3F
      0953746F7056616C7565050000000000000080FF3F0754726967676572061149
      734D6F7573654F7665723D66616C73650000005450463007544C61796F757400
      095374796C654E616D65060C7370696E626F787374796C650D44657369676E56
      697369626C6508064865696768740500000000000000B003400A506F73697469
      6F6E2E580500000000000080B707400A506F736974696F6E2E59050000000000
      0000F507400557696474680500000000000000D60540000A5452656374616E67
      6C6500095374796C654E616D65060A6261636B67726F756E6405416C69676E07
      0A616C436F6E74656E74730A46696C6C2E436F6C6F720708636C61426C61636B
      064C6F636B656409064865696768740500000000000000B00340074869745465
      7374080B5374726F6B652E4B696E640706626B4E6F6E65055769647468050000
      0000000000D60540000A5452656374616E676C650005416C69676E070A616C43
      6F6E74656E74730946696C6C2E4B696E640706626B4E6F6E65064C6F636B6564
      09064865696768740500000000000000A003400748697454657374080C4D6172
      67696E732E4C656674050000000000000080FF3F0B4D617267696E732E546F70
      050000000000000080FF3F0D4D617267696E732E526967687405000000000000
      0080FF3F0E4D617267696E732E426F74746F6D050000000000000080FF3F0C53
      74726F6B652E436F6C6F72070978464633453345334505576964746805000000
      00000000D205400000000C5442727573684F626A65637400095374796C654E61
      6D65060A666F726567726F756E6400000C5442727573684F626A656374000953
      74796C654E616D65060973656C656374696F6E0B42727573682E436F6C6F7207
      09783730463541343041000007544C61796F757400095374796C654E616D6506
      07636F6E74656E7405416C69676E0708616C436C69656E74064C6F636B656409
      0648656967687405000000000000009003400C4D617267696E732E4C65667405
      000000000000008000400B4D617267696E732E546F7005000000000000008000
      400D4D617267696E732E526967687405000000000000008000400E4D61726769
      6E732E426F74746F6D0500000000000000800040055769647468050000000000
      0000EC044000000C545370656564427574746F6E00095374796C654E616D6506
      0B6D696E7573627574746F6E05416C69676E0709616C4669744C656674064865
      6967687405000000000000008003400C4D617267696E732E4C65667405000000
      00000000C000400B4D617267696E732E546F700500000000000000C000400D4D
      617267696E732E52696768740500000000000000C000400E4D617267696E732E
      426F74746F6D0500000000000000C000400A506F736974696F6E2E5805000000
      00000000C000400A506F736974696F6E2E590500000000000000C00040055769
      6474680500000000000000800340000554506174680005416C69676E0708616C
      436C69656E7409446174612E506174680A400000000500000000000000000080
      3F00000000010000000000803F0000803F01000000000000000000003F010000
      000000803F00000000030000000000803F000000000A46696C6C2E436F6C6F72
      0708636C61576869746506486569676874050000000000000080014007486974
      54657374080C4D617267696E732E4C6566740500000000000000C001400B4D61
      7267696E732E546F700500000000000000C001400D4D617267696E732E526967
      68740500000000000000C001400E4D617267696E732E426F74746F6D05000000
      00000000C001400B5374726F6B652E4B696E640706626B4E6F6E650557696474
      6805000000000000008001400000000C545370656564427574746F6E00095374
      796C654E616D65060A706C7573627574746F6E05416C69676E070A616C466974
      52696768740648656967687405000000000000008003400C4D617267696E732E
      4C6566740500000000000000C000400B4D617267696E732E546F700500000000
      000000C000400D4D617267696E732E52696768740500000000000000C000400E
      4D617267696E732E426F74746F6D0500000000000000C000400A506F73697469
      6F6E2E580500000000000000B005400A506F736974696F6E2E59050000000000
      0000C00040055769647468050000000000000080034000055450617468000541
      6C69676E0708616C436C69656E7409446174612E506174680A34000000040000
      0000000000000000000000000001000000000000000000803F01000000000080
      3F0000003F0300000000000000000000000A46696C6C2E436F6C6F720708636C
      6157686974650648656967687405000000000000008001400748697454657374
      080C4D617267696E732E4C6566740500000000000000C001400B4D617267696E
      732E546F700500000000000000C001400D4D617267696E732E52696768740500
      000000000000C001400E4D617267696E732E426F74746F6D0500000000000000
      C001400B5374726F6B652E4B696E640706626B4E6F6E65055769647468050000
      00000000008001400000000B54476C6F774566666563740008536F66746E6573
      73050000000000CDCCCCFC3F09476C6F77436F6C6F7207097846464641413830
      30074F7061636974790500000000006666E6FE3F0754726967676572060E4973
      466F63757365643D7472756507456E61626C6564080000005450463007544C61
      796F757400095374796C654E616D650611636C656172696E6765646974737479
      6C650D44657369676E56697369626C6508064865696768740500000000000000
      B003400A506F736974696F6E2E580500000000000080B707400A506F73697469
      6F6E2E590500000000000000F507400557696474680500000000000000D60540
      000A5452656374616E676C6500095374796C654E616D65060A6261636B67726F
      756E6405416C69676E070A616C436F6E74656E74730A46696C6C2E436F6C6F72
      0708636C61426C61636B064C6F636B6564090648656967687405000000000000
      00B003400748697454657374080B5374726F6B652E4B696E640706626B4E6F6E
      650557696474680500000000000000D60540000A5452656374616E676C650005
      416C69676E070A616C436F6E74656E74730946696C6C2E4B696E640706626B4E
      6F6E65064C6F636B656409064865696768740500000000000000A00340074869
      7454657374080C4D617267696E732E4C656674050000000000000080FF3F0B4D
      617267696E732E546F70050000000000000080FF3F0D4D617267696E732E5269
      676874050000000000000080FF3F0E4D617267696E732E426F74746F6D050000
      000000000080FF3F0C5374726F6B652E436F6C6F720709784646334533453345
      0557696474680500000000000000D205400000000C5442727573684F626A6563
      7400095374796C654E616D65060A666F726567726F756E6400000C5442727573
      684F626A65637400095374796C654E616D65060973656C656374696F6E0B4272
      7573682E436F6C6F720709783730463541343041000007544C61796F75740009
      5374796C654E616D650607636F6E74656E7405416C69676E070A616C436F6E74
      656E7473064C6F636B6564090648656967687405000000000000009003400C4D
      617267696E732E4C65667405000000000000008000400B4D617267696E732E54
      6F7005000000000000008000400D4D617267696E732E52696768740500000000
      000000B803400E4D617267696E732E426F74746F6D0500000000000000800040
      0557696474680500000000000000A4054000000C545370656564427574746F6E
      00095374796C654E616D65060B636C656172627574746F6E05416C69676E070A
      616C46697452696768740648656967687405000000000000008003400C4D6172
      67696E732E4C6566740500000000000000C000400B4D617267696E732E546F70
      0500000000000000C000400D4D617267696E732E526967687405000000000000
      00C000400E4D617267696E732E426F74746F6D0500000000000000C000400A50
      6F736974696F6E2E580500000000000000B005400A506F736974696F6E2E5905
      00000000000000C0004005576964746805000000000000008003400005545061
      74680005416C69676E0705616C46697409446174612E506174680AC400000010
      000000000000000000A0C00000704101000000000070410000A0C00100000000
      0048420000F041010000000000AA420000A0C0010000000000D2420000704101
      00000000008C4200004842010000000000D2420000B442010000000000AA4200
      00DC42020000003BDF34429E6F8C4202000000FE547D427FAAB0420200000000
      0048420000964201000000000070410000DC42010000000000A0C00000B44201
      0000000000F04100005C42010000000000A0C000007041030000000000000000
      0000000A46696C6C2E436F6C6F720708636C615768697465064C6F636B656409
      0648656967687405000000000000008002400748697454657374080C4D617267
      696E732E4C65667405000000000000008001400B4D617267696E732E546F7005
      000000000000008001400D4D617267696E732E52696768740500000000000000
      8001400E4D617267696E732E426F74746F6D05000000000000008001400B5374
      726F6B652E4B696E640706626B4E6F6E65055769647468050000000000000080
      02400000000B54476C6F774566666563740008536F66746E6573730500000000
      00CDCCCCFC3F09476C6F77436F6C6F720709784646464141383030074F706163
      6974790500000000006666E6FE3F0754726967676572060E4973466F63757365
      643D7472756507456E61626C6564080000005450463007544C61796F75740009
      5374796C654E616D65060D706F707570626F787374796C650D44657369676E56
      697369626C6508064865696768740500000000000000B003400A506F73697469
      6F6E2E580500000000000000B807400A506F736974696F6E2E59050000000000
      0000F507400557696474680500000000000000D60540000A5452656374616E67
      6C6500095374796C654E616D65060A6261636B67726F756E6405416C69676E07
      0A616C436F6E74656E74730A46696C6C2E436F6C6F720708636C61426C61636B
      064C6F636B656409064865696768740500000000000000B00340074869745465
      7374080B5374726F6B652E4B696E640706626B4E6F6E65055769647468050000
      0000000000D60540000A5452656374616E676C650005416C69676E070A616C43
      6F6E74656E74730946696C6C2E4B696E640706626B4E6F6E65064C6F636B6564
      09064865696768740500000000000000A003400748697454657374080C4D6172
      67696E732E4C656674050000000000000080FF3F0B4D617267696E732E546F70
      050000000000000080FF3F0D4D617267696E732E526967687405000000000000
      0080FF3F0E4D617267696E732E426F74746F6D050000000000000080FF3F0C53
      74726F6B652E436F6C6F72070978464633453345334505576964746805000000
      00000000D2054000000007544C61796F75740005416C69676E0707616C526967
      6874064865696768740500000000000000B003400A506F736974696F6E2E5805
      00000000000000B805400557696474680500000000000000F002400005545061
      74680005416C69676E0708616C43656E74657209446174612E506174680A4000
      00000500000000000000000000000000803F010000000000803F0000803F0100
      00000000003F0000000001000000000000000000803F03000000000000000000
      00000A46696C6C2E436F6C6F720708636C615768697465064865696768740500
      000000000000A001400748697454657374080B4D617267696E732E546F700500
      0000000000009002C00B5374726F6B652E4B696E640706626B4E6F6E65055769
      647468050000000000000080024000000554506174680005416C69676E070861
      6C43656E74657209446174612E506174680A3400000004000000000000000000
      000000000000010000000000803F00000000010000000000003F0000803F0300
      000000000000000000000A46696C6C2E436F6C6F720708636C61576869746506
      4865696768740500000000000000A001400748697454657374080B4D61726769
      6E732E546F700500000000000000E001400B5374726F6B652E4B696E64070662
      6B4E6F6E65055769647468050000000000000080024000000005545465787400
      095374796C654E616D6506047465787405416C69676E0708616C436C69656E74
      05436F6C6F720708636C615768697465064C6F636B6564090648656967687405
      00000000000000C002400748697454657374080C4D617267696E732E4C656674
      0500000000000000A001400B4D617267696E732E546F700500000000000000A0
      01400D4D617267696E732E52696768740500000000000000A001400E4D617267
      696E732E426F74746F6D0500000000000000A001400454657874060662757474
      6F6E0557696474680500000000000000A4054008576F7264577261700800000B
      54476C6F774566666563740008536F66746E657373050000000000CDCCCCFC3F
      09476C6F77436F6C6F720709784646464141383030074F706163697479050000
      0000006666E6FE3F0754726967676572060E4973466F63757365643D74727565
      07456E61626C6564080000005450463007544C61796F757400095374796C654E
      616D6506096D656D6F7374796C650D44657369676E56697369626C6508064865
      6967687405000000000000008306400A506F736974696F6E2E58050000000000
      0000FE06400A506F736974696F6E2E590500000000000080D907400557696474
      680500000000000000A70740000A5452656374616E676C6500095374796C654E
      616D65060A6261636B67726F756E6405416C69676E070A616C436F6E74656E74
      730A46696C6C2E436F6C6F720708636C61426C61636B064C6F636B6564090648
      656967687405000000000000008306400748697454657374080C50616464696E
      672E4C65667405000000000000008000400B50616464696E672E546F70050000
      00000000008000400D50616464696E672E526967687405000000000000008000
      400E50616464696E672E426F74746F6D05000000000000008000400B5374726F
      6B652E4B696E640706626B4E6F6E650557696474680500000000000000A70740
      000A5452656374616E676C650005416C69676E070A616C436F6E74656E747309
      46696C6C2E4B696E640706626B4E6F6E65064C6F636B65640906486569676874
      05000000000000008106400748697454657374080C4D617267696E732E4C6566
      74050000000000000080FF3F0B4D617267696E732E546F700500000000000000
      80FF3F0D4D617267696E732E5269676874050000000000000080FF3F0E4D6172
      67696E732E426F74746F6D050000000000000080FF3F0C5374726F6B652E436F
      6C6F7207097846463345334533450557696474680500000000000000A6074000
      0007544C61796F757400095374796C654E616D650607636F6E74656E7405416C
      69676E0708616C436C69656E74064865696768740500000000000000DE054005
      576964746805000000000000009D074000000A545363726F6C6C426172000953
      74796C654E616D65060A767363726F6C6C62617205416C69676E0707616C5269
      676874064865696768740500000000000000DE05400B536D616C6C4368616E67
      6505000000000000000000000B4F7269656E746174696F6E070A6F7256657274
      6963616C0A506F736974696F6E2E5805000000000000009E07400A506F736974
      696F6E2E59050000000000000080004005576964746805000000000000008003
      4000000A545363726F6C6C42617200095374796C654E616D65060A687363726F
      6C6C62617205416C69676E0708616C426F74746F6D0648656967687405000000
      000000008003400B536D616C6C4368616E676505000000000000000000000B4F
      7269656E746174696F6E070C6F72486F72697A6F6E74616C0A506F736974696F
      6E2E5805000000000000008000400A506F736974696F6E2E5905000000000000
      00E205400557696474680500000000000000A5074000000F54536D616C6C5363
      726F6C6C42617200095374796C654E616D65060F76736D616C6C7363726F6C6C
      62617205416C69676E0707616C52696768740648656967687405000000000000
      008002400B536D616C6C4368616E676505000000000000000000000B4F726965
      6E746174696F6E070A6F72566572746963616C0C4D617267696E732E4C656674
      05000000000000008000400A506F736974696F6E2E580500000000000000C605
      400A506F736974696F6E2E5905000000000000008000400756697369626C6508
      055769647468050000000000000080024000000F54536D616C6C5363726F6C6C
      42617200095374796C654E616D65060F68736D616C6C7363726F6C6C62617205
      416C69676E0708616C426F74746F6D0648656967687405000000000000008002
      400B536D616C6C4368616E676505000000000000000000000B4F7269656E7461
      74696F6E070C6F72486F72697A6F6E74616C0B4D617267696E732E546F700500
      0000000000008000400A506F736974696F6E2E5805000000000000008000400A
      506F736974696F6E2E590500000000000000E205400756697369626C65080557
      696474680500000000000000960640000007544C61796F75740005416C69676E
      070A616C436F6E74656E74730648656967687405000000000000008306400557
      696474680500000000000000A707400007544C61796F75740005416C69676E07
      08616C426F74746F6D064865696768740500000000000000A003400A506F7369
      74696F6E2E590500000000000000DE05400557696474680500000000000000A7
      074000095453697A654772697000095374796C654E616D65060873697A656772
      697005416C69676E0707616C5269676874064C6F636B65640906486569676874
      0500000000000000A003400A506F736974696F6E2E5805000000000000009D07
      400557696474680500000000000000A0034000000000000C5442727573684F62
      6A65637400095374796C654E616D65060A666F726567726F756E6400000C5442
      727573684F626A65637400095374796C654E616D65060973656C656374696F6E
      0B42727573682E436F6C6F72070978373046354134304100000B54476C6F7745
      66666563740008536F66746E657373050000000000CDCCCCFC3F09476C6F7743
      6F6C6F720709784646464141383030074F7061636974790500000000006666E6
      FE3F0754726967676572060E4973466F63757365643D7472756507456E61626C
      6564080000005450463007544C61796F757400095374796C654E616D65060E6E
      756D626572626F787374796C650D44657369676E56697369626C650806486569
      6768740500000000000000D003400A506F736974696F6E2E5805000000000000
      00C007400A506F736974696F6E2E590500000000000000F40740055769647468
      0500000000000000920540000A5452656374616E676C6500095374796C654E61
      6D65060A6261636B67726F756E6405416C69676E070A616C436F6E74656E7473
      0A46696C6C2E436F6C6F720708636C61426C61636B064C6F636B656409064865
      696768740500000000000000D003400748697454657374080B5374726F6B652E
      4B696E640706626B4E6F6E650557696474680500000000000000920540000A54
      52656374616E676C650005416C69676E070A616C436F6E74656E74730946696C
      6C2E4B696E640706626B4E6F6E65064C6F636B65640906486569676874050000
      0000000000C003400748697454657374080C4D617267696E732E4C6566740500
      00000000000080FF3F0B4D617267696E732E546F70050000000000000080FF3F
      0D4D617267696E732E5269676874050000000000000080FF3F0E4D617267696E
      732E426F74746F6D050000000000000080FF3F0C5374726F6B652E436F6C6F72
      070978464633453345334505576964746805000000000000008E05400000000C
      5442727573684F626A65637400095374796C654E616D65060A666F726567726F
      756E6400000C5442727573684F626A65637400095374796C654E616D65060973
      656C656374696F6E0B42727573682E436F6C6F72070978373046354134304100
      0007544C61796F757400095374796C654E616D650607636F6E74656E7405416C
      69676E070A616C436F6E74656E7473064C6F636B656409064865696768740500
      0000000000009003400C4D617267696E732E4C65667405000000000000008001
      400B4D617267696E732E546F7005000000000000008001400D4D617267696E73
      2E526967687405000000000000008001400E4D617267696E732E426F74746F6D
      0500000000000000800140055769647468050000000000000082054000000B54
      476C6F774566666563740008536F66746E657373050000000000CDCCCCFC3F09
      476C6F77436F6C6F720709784646464141383030074F70616369747905000000
      00006666E6FE3F0754726967676572060E4973466F63757365643D7472756507
      456E61626C6564080000005450463007544C61796F757400095374796C654E61
      6D65060A6C6162656C7374796C650D44657369676E56697369626C6508064865
      696768740500000000000000A003400A506F736974696F6E2E58050000000000
      0000C607400A506F736974696F6E2E590500000000000080F507400557696474
      680500000000000000C404400005545465787400095374796C654E616D650604
      7465787405416C69676E0708616C436C69656E7405436F6C6F720708636C6157
      68697465064C6F636B656409064865696768740500000000000000A003400748
      69745465737408045465787406056C6162656C05576964746805000000000000
      00C404400000005450463007544C61796F757400095374796C654E616D65060F
      76616C75656C6162656C7374796C650D44657369676E56697369626C65080648
      65696768740500000000000000C003400A506F736974696F6E2E580500000000
      000080BA07400A506F736974696F6E2E590500000000000080F4074005576964
      74680500000000000000BE0540000A54526F756E64526563740005416C69676E
      070A616C436F6E74656E74730A46696C6C2E436F6C6F72070978464643374337
      4337064865696768740500000000000000C003400748697454657374080B5374
      726F6B652E4B696E640706626B4E6F6E650557696474680500000000000000BE
      0540000005545465787400095374796C654E616D6506047465787405416C6967
      6E0708616C436C69656E7405436F6C6F720708636C61426C61636B09466F6E74
      2E53697A650500000000000000A00240064865696768740500000000000000B0
      03400748697454657374080C4D617267696E732E4C6566740500000000000000
      80FF3F0B4D617267696E732E546F70050000000000000080FF3F0D4D61726769
      6E732E5269676874050000000000000080FF3F0E4D617267696E732E426F7474
      6F6D050000000000000080FF3F04546578740604546578740557696474680500
      000000000000BA05400000005450463007544C61796F757400095374796C654E
      616D65060C6C697374626F787374796C650D44657369676E56697369626C6508
      0648656967687405000000000000008306400A506F736974696F6E2E58050000
      0000000000B507400A506F736974696F6E2E590500000000000080D907400557
      69647468050000000000FFFFE90540000C5442727573684F626A656374000953
      74796C654E616D650618416C7465726E6174696E67526F774261636B67726F75
      6E640B42727573682E436F6C6F72070978323046354134304100000A54526563
      74616E676C6500095374796C654E616D65060A6261636B67726F756E6405416C
      69676E070A616C436F6E74656E74730A46696C6C2E436F6C6F720708636C6142
      6C61636B064C6F636B6564090648656967687405000000000000008306400748
      697454657374080C50616464696E672E4C65667405000000000000008000400B
      50616464696E672E546F7005000000000000008000400D50616464696E672E52
      6967687405000000000000008000400E50616464696E672E426F74746F6D0500
      0000000000008000400B5374726F6B652E4B696E640706626B4E6F6E65055769
      647468050000000000FFFFE90540000A5452656374616E676C650005416C6967
      6E070A616C436F6E74656E74730946696C6C2E4B696E640706626B4E6F6E6506
      4C6F636B65640906486569676874050000000000000081064007486974546573
      74080C4D617267696E732E4C656674050000000000000080FF3F0B4D61726769
      6E732E546F70050000000000000080FF3F0D4D617267696E732E526967687405
      0000000000000080FF3F0E4D617267696E732E426F74746F6D05000000000000
      0080FF3F0C5374726F6B652E436F6C6F72070978464633453345334505576964
      7468050000000000FFFFE50540000007544C61796F757400095374796C654E61
      6D650607636F6E74656E7405416C69676E0708616C436C69656E740C436C6970
      4368696C6472656E09064865696768740500000000000000DE05400557696474
      68050000000000FFFFC10540000A5452656374616E676C6500095374796C654E
      616D65060973656C656374696F6E0A46696C6C2E436F6C6F7207097846464635
      41343041064865696768740500000000000000C804400748697454657374080B
      5374726F6B652E4B696E640706626B4E6F6E6505576964746805000000000000
      00C8044000000A5452656374616E676C6500095374796C654E616D650610666F
      637573656473656C656374696F6E0A46696C6C2E436F6C6F7207097846464635
      41343041064865696768740500000000000000C804400748697454657374080B
      5374726F6B652E4461736807057364446F740557696474680500000000000000
      C804400000000A545363726F6C6C42617200095374796C654E616D65060A7673
      63726F6C6C62617205416C69676E0707616C5269676874064865696768740500
      000000000000DE05400B536D616C6C4368616E67650500000000000000000000
      0B4F7269656E746174696F6E070A6F72566572746963616C0A506F736974696F
      6E2E58050000000000FFFFC505400A506F736974696F6E2E5905000000000000
      00800040055769647468050000000000000080034000000A545363726F6C6C42
      617200095374796C654E616D65060A687363726F6C6C62617205416C69676E07
      08616C426F74746F6D0648656967687405000000000000008003400B536D616C
      6C4368616E676505000000000000000000000B4F7269656E746174696F6E070C
      6F72486F72697A6F6E74616C0A506F736974696F6E2E58050000000000000080
      00400A506F736974696F6E2E590500000000000000E205400557696474680500
      00000000FFFFE1054000000F54536D616C6C5363726F6C6C4261720009537479
      6C654E616D65060F76736D616C6C7363726F6C6C62617205416C69676E070761
      6C52696768740648656967687405000000000000008002400B536D616C6C4368
      616E676505000000000000000000000B4F7269656E746174696F6E070A6F7256
      6572746963616C0C4D617267696E732E4C65667405000000000000008000400A
      506F736974696F6E2E580500000000000000C605400A506F736974696F6E2E59
      05000000000000008000400756697369626C6508055769647468050000000000
      000080024000000F54536D616C6C5363726F6C6C42617200095374796C654E61
      6D65060F68736D616C6C7363726F6C6C62617205416C69676E0708616C426F74
      746F6D0648656967687405000000000000008002400B536D616C6C4368616E67
      6505000000000000000000000B4F7269656E746174696F6E070C6F72486F7269
      7A6F6E74616C0B4D617267696E732E546F7005000000000000008000400A506F
      736974696F6E2E5805000000000000008000400A506F736974696F6E2E590500
      000000000000E205400756697369626C65080557696474680500000000000000
      9606400000000B54476C6F774566666563740008536F66746E65737305000000
      0000CDCCCCFC3F09476C6F77436F6C6F720709784646464141383030074F7061
      636974790500000000006666E6FE3F0754726967676572060E4973466F637573
      65643D7472756507456E61626C6564080000005450463007544C61796F757400
      095374796C654E616D6506177472616E73706172656E746C697374626F787374
      796C650D44657369676E56697369626C65080648656967687405000000000000
      008306400A506F736974696F6E2E580500000000000080B507400A506F736974
      696F6E2E590500000000000000DA0740055769647468050000000000FFFFE905
      40000C5442727573684F626A65637400095374796C654E616D650618416C7465
      726E6174696E67526F774261636B67726F756E640B42727573682E436F6C6F72
      0709783230303030303030000007544C61796F757400095374796C654E616D65
      060A6261636B67726F756E6405416C69676E070A616C436F6E74656E7473064C
      6F636B6564090648656967687405000000000000008306400557696474680500
      00000000FFFFE905400007544C61796F757400095374796C654E616D65060763
      6F6E74656E7405416C69676E0708616C436C69656E740C436C69704368696C64
      72656E09064865696768740500000000000000E6054005576964746805000000
      0000FFFFC90540000A5452656374616E676C6500095374796C654E616D650609
      73656C656374696F6E0A46696C6C2E436F6C6F72070978464646354134304106
      4865696768740500000000000000C804400748697454657374080B5374726F6B
      652E4B696E640706626B4E6F6E650557696474680500000000000000C8044000
      000A5452656374616E676C6500095374796C654E616D650610666F6375736564
      73656C656374696F6E0A46696C6C2E436F6C6F72070978464646354134304106
      4865696768740500000000000000C804400748697454657374080B5374726F6B
      652E4461736807057364446F740557696474680500000000000000C804400000
      000A545363726F6C6C42617200095374796C654E616D65060A767363726F6C6C
      62617205416C69676E0707616C52696768740648656967687405000000000000
      00E605400B536D616C6C4368616E676505000000000000000000000B4F726965
      6E746174696F6E070A6F72566572746963616C0A506F736974696F6E2E580500
      00000000FFFFC90540055769647468050000000000000080034000000A545363
      726F6C6C42617200095374796C654E616D65060A687363726F6C6C6261720541
      6C69676E0708616C426F74746F6D064865696768740500000000000000800340
      0B536D616C6C4368616E676505000000000000000000000B4F7269656E746174
      696F6E070C6F72486F72697A6F6E74616C0A506F736974696F6E2E5905000000
      00000000E60540055769647468050000000000FFFFE9054000000F54536D616C
      6C5363726F6C6C42617200095374796C654E616D65060F76736D616C6C736372
      6F6C6C62617205416C69676E0707616C52696768740648656967687405000000
      000000008002400B536D616C6C4368616E676505000000000000000000000B4F
      7269656E746174696F6E070A6F72566572746963616C0C4D617267696E732E4C
      65667405000000000000008000400A506F736974696F6E2E5805000000000000
      00C605400A506F736974696F6E2E590500000000000000800040075669736962
      6C6508055769647468050000000000000080024000000F54536D616C6C536372
      6F6C6C42617200095374796C654E616D65060F68736D616C6C7363726F6C6C62
      617205416C69676E0708616C426F74746F6D0648656967687405000000000000
      008002400B536D616C6C4368616E676505000000000000000000000B4F726965
      6E746174696F6E070C6F72486F72697A6F6E74616C0B4D617267696E732E546F
      7005000000000000008000400A506F736974696F6E2E58050000000000000080
      00400A506F736974696F6E2E590500000000000000E205400756697369626C65
      080557696474680500000000000000960640000000005450463007544C61796F
      757400095374796C654E616D650615636F6C6F726C697374626F786974656D73
      74796C650D44657369676E56697369626C650806486569676874050000000000
      0000C003400A506F736974696F6E2E580500000000000080BC07400A506F7369
      74696F6E2E590500000000000080F407400557696474680500000000000000B0
      0540000954436865636B426F7800095374796C654E616D650605636865636B05
      416C69676E0706616C4C6566740843616E466F637573081244697361626C6546
      6F63757345666665637409064865696768740500000000000000C00340085461
      624F7264657202000756697369626C65080557696474680500000000000000A0
      034000000A5452656374616E676C6500095374796C654E616D650605636F6C6F
      7205416C69676E0706616C4C656674064C6F636B656409064865696768740500
      000000000000A003400748697454657374080C4D617267696E732E4C65667405
      000000000000008000400B4D617267696E732E546F7005000000000000008000
      400D4D617267696E732E526967687405000000000000008000400E4D61726769
      6E732E426F74746F6D05000000000000008000400A506F736974696F6E2E5805
      000000000000008000400A506F736974696F6E2E590500000000000000800040
      0C5374726F6B652E436F6C6F7207097846463641364136410557696474680500
      000000000000800340000005545465787400095374796C654E616D6506047465
      787405416C69676E0708616C436C69656E7405436F6C6F720708636C61576869
      7465064865696768740500000000000000B003400748697454657374080D486F
      727A54657874416C69676E070974614C656164696E670C4D617267696E732E4C
      6566740500000000000000C000400B4D617267696E732E546F70050000000000
      000080FF3F0D4D617267696E732E52696768740500000000000000C000400E4D
      617267696E732E426F74746F6D050000000000000080FF3F0454657874060454
      6578740557696474680500000000000000F8044008576F726457726170080000
      005450463007544C61796F757400095374796C654E616D6506106C697374626F
      786974656D7374796C650D44657369676E56697369626C650806486569676874
      0500000000000000C003400A506F736974696F6E2E580500000000000000B807
      400A506F736974696F6E2E590500000000000080F40740055769647468050000
      0000000000D605400005545465787400095374796C654E616D65060474657874
      05416C69676E0708616C436C69656E7405436F6C6F720708636C615768697465
      064865696768740500000000000000B003400748697454657374080D486F727A
      54657874416C69676E070974614C656164696E670C4D617267696E732E4C6566
      740500000000000000C000400B4D617267696E732E546F700500000000000000
      80FF3F0D4D617267696E732E52696768740500000000000000C000400E4D6172
      67696E732E426F74746F6D050000000000000080FF3F04546578740604546578
      740557696474680500000000000000CA054008576F7264577261700800000954
      436865636B426F7800095374796C654E616D650605636865636B05416C69676E
      0706616C4C6566740843616E466F637573081244697361626C65466F63757345
      666665637409064865696768740500000000000000C00340085461624F726465
      7202010756697369626C65080557696474680500000000000000A00340000000
      5450463007544C61796F757400095374796C654E616D65060C7461626974656D
      7374796C650D44657369676E56697369626C6508064865696768740500000000
      000000A003400A506F736974696F6E2E580500000000000000C707400A506F73
      6974696F6E2E590500000000000080F507400557696474680500000000000000
      B80440000A5452656374616E676C650005416C69676E070A616C436F6E74656E
      747307436F726E6572730B096372546F704C6566740A6372546F705269676874
      000A46696C6C2E436F6C6F720709784646323532353235064C6F636B65640906
      48656967687405000000000000009003400748697454657374080C4D61726769
      6E732E4C65667405000000000000008000400B4D617267696E732E546F700500
      0000000000008000400D4D617267696E732E52696768740500000000000000C0
      00C00553696465730B057364546F700673644C6566740773645269676874000C
      5374726F6B652E436F6C6F720709784646383538353835075852616469757305
      00000000000000C0004007595261646975730500000000000000C00040055769
      6474680500000000000000BC0440000F54436F6C6F72416E696D6174696F6E00
      084475726174696F6E05000000000017B7D1F13F0C50726F70657274794E616D
      65060A46696C6C2E436F6C6F720A537461727456616C75650709784646353635
      3535340953746F7056616C756507097846464434384130310754726967676572
      062149734D6F7573654F7665723D747275653B497353656C65637465643D6661
      6C73650E54726967676572496E7665727365062249734D6F7573654F7665723D
      66616C73653B497353656C65637465643D66616C736500000F54436F6C6F7241
      6E696D6174696F6E00084475726174696F6E050000000000BD3786EB3F0C5072
      6F70657274794E616D65060A46696C6C2E436F6C6F720A537461727456616C75
      6507097846463536353535340953746F7056616C756507097846463235323532
      350754726967676572060F497353656C65637465643D747275650E5472696767
      6572496E76657273650610497353656C65637465643D66616C736500000E5452
      656374416E696D6174696F6E00084475726174696F6E050000000000ACC5A7EE
      3F0C50726F70657274794E616D6506074D617267696E730F537461727456616C
      75652E4C65667405000000000000008000400E537461727456616C75652E546F
      70050000000000000080004010537461727456616C75652E5269676874050000
      00000000008000C011537461727456616C75652E426F74746F6D050000000000
      000080FFBF0E53746F7056616C75652E4C65667405000000000000008000400F
      53746F7056616C75652E526967687405000000000000008000C01053746F7056
      616C75652E426F74746F6D050000000000000080FFBF0754726967676572060F
      497353656C65637465643D747275650E54726967676572496E76657273650610
      497353656C65637465643D66616C7365000005545465787400095374796C654E
      616D6506047465787405416C69676E0708616C436C69656E7405436F6C6F7207
      08636C615768697465064C6F636B656409064865696768740500000000000000
      D002400748697454657374080C4D617267696E732E4C65667405000000000000
      008002400B4D617267696E732E546F700500000000000000C000400D4D617267
      696E732E526967687405000000000000008002400E4D617267696E732E426F74
      746F6D0500000000000000800040045465787406046974656D05576964746805
      00000000000000F8034008576F72645772617008000000005450463007544C61
      796F757400095374796C654E616D65060D636865636B626F787374796C650D44
      657369676E56697369626C6508064865696768740500000000000000F003400A
      506F736974696F6E2E580500000000000000AD07400A506F736974696F6E2E59
      0500000000000000F3074005576964746805000000000000009506400007544C
      61796F75740005416C69676E0706616C4C656674064865696768740500000000
      000000F003400557696474680500000000000000A00340000A5452656374616E
      676C6500095374796C654E616D65060A6261636B67726F756E6405416C69676E
      0708616C43656E7465720946696C6C2E4B696E64070A626B4772616469656E74
      1446696C6C2E4772616469656E742E506F696E74730E0105436F6C6F72070978
      4646424342434243064F66667365740500000000000000000000000105436F6C
      6F720709784646454545454545064F6666736574050000000000000080FF3F00
      00064C6F636B656409064865696768740500000000000000F002400748697454
      657374080C5374726F6B652E436F6C6F72070978464631443144314405576964
      74680500000000000000F00240000F54436F6C6F72416E696D6174696F6E0008
      4475726174696F6E050000000000CDCCCCFC3F0C50726F70657274794E616D65
      060C5374726F6B652E436F6C6F720A537461727456616C756507097846463144
      314431440953746F7056616C7565070978464643363842313207547269676765
      72062049734D6F7573654F7665723D747275653B4973507265737365643D6661
      6C73650E54726967676572496E7665727365062149734D6F7573654F7665723D
      66616C73653B4973507265737365643D66616C736500000B54476C6F77456666
      6563740008536F66746E657373050000000000CDCCCCFC3F09476C6F77436F6C
      6F720709784646464141383030074F7061636974790500000000006666E6FE3F
      0754726967676572060E4973466F63757365643D7472756507456E61626C6564
      08000005545061746800095374796C654E616D650609636865636B6D61726B05
      416C69676E0708616C43656E74657209446174612E506174680A580000000700
      000000000000CD92A7423983E24301000000A6C0194372B5BB4301000000DCB6
      6143EF52DF43010000006EDBE84394136E4301000000B76DFB4338E58D430100
      00009224594378A9174403000000CD92A7423983E2430A46696C6C2E436F6C6F
      720709783030423846353238064C6F636B656409064865696768740500000000
      000000B002400748697454657374080B5374726F6B652E4B696E640706626B4E
      6F6E650557696474680500000000000000B00240000F54436F6C6F72416E696D
      6174696F6E00084475726174696F6E050000000000CDCCCCFB3F0C50726F7065
      7274794E616D65060A46696C6C2E436F6C6F720A537461727456616C75650709
      7830304641413830300953746F7056616C756507097846464641413830300754
      726967676572060E4973436865636B65643D747275650E54726967676572496E
      7665727365060F4973436865636B65643D66616C736500000000000554546578
      7400095374796C654E616D6506047465787405416C69676E0708616C436C6965
      6E7405436F6C6F720708636C615768697465064C6F636B656409064865696768
      740500000000000000E003400748697454657374080C4D617267696E732E4C65
      6674050000000000000080FF3F0B4D617267696E732E546F7005000000000000
      008000400D4D617267696E732E5269676874050000000000000080FF3F045465
      78740608436865636B426F780557696474680500000000000000FE0540000000
      5450463007544C61796F757400095374796C654E616D650610726164696F6275
      74746F6E7374796C650D44657369676E56697369626C65080648656967687405
      00000000000000A803400A506F736974696F6E2E580500000000000000B40740
      0A506F736974696F6E2E590500000000000000F5074005576964746805000000
      00000000F205400007544C61796F75740005416C69676E0706616C4C65667406
      4865696768740500000000000000A803400557696474680500000000000000A0
      0340000854456C6C6970736500095374796C654E616D65060A6261636B67726F
      756E6405416C69676E0708616C43656E7465720946696C6C2E4B696E64070A62
      6B4772616469656E741446696C6C2E4772616469656E742E506F696E74730E01
      05436F6C6F720709784646424342434243064F66667365740500000000000000
      000000000105436F6C6F720709784646454545454545064F6666736574050000
      000000000080FF3F0000064C6F636B6564090648656967687405000000000000
      00F002400748697454657374080C5374726F6B652E436F6C6F72070978464631
      44314431440557696474680500000000000000F00240000F54436F6C6F72416E
      696D6174696F6E00084475726174696F6E050000000000CDCCCCFC3F0C50726F
      70657274794E616D65060C5374726F6B652E436F6C6F720A537461727456616C
      756507097846463144314431440953746F7056616C7565070978464643363842
      31320754726967676572062049734D6F7573654F7665723D747275653B497350
      7265737365643D66616C73650E54726967676572496E7665727365062149734D
      6F7573654F7665723D66616C73653B4973507265737365643D66616C73650000
      0B54476C6F774566666563740008536F66746E657373050000000000CDCCCCFC
      3F09476C6F77436F6C6F720709784646464141383030074F7061636974790500
      000000006666E6FE3F0754726967676572060E4973466F63757365643D747275
      6507456E61626C65640800000854456C6C6970736500095374796C654E616D65
      0609636865636B6D61726B05416C69676E0708616C436C69656E740A46696C6C
      2E436F6C6F720709783030464141383030064C6F636B65640906486569676874
      0500000000000000E001400748697454657374080C4D617267696E732E4C6566
      7405000000000000008001400B4D617267696E732E546F700500000000000000
      8001400D4D617267696E732E526967687405000000000000008001400E4D6172
      67696E732E426F74746F6D05000000000000008001400B5374726F6B652E4B69
      6E640706626B4E6F6E650557696474680500000000000000E00140000F54436F
      6C6F72416E696D6174696F6E00084475726174696F6E050000000000CDCCCCFB
      3F0C50726F70657274794E616D65060A46696C6C2E436F6C6F720A5374617274
      56616C756507097830304641413830300953746F7056616C7565070978464646
      41413830300754726967676572060E4973436865636B65643D747275650E5472
      6967676572496E7665727365060F4973436865636B65643D66616C7365000000
      000005545465787400095374796C654E616D6506047465787405416C69676E07
      08616C436C69656E7405436F6C6F720708636C615768697465064C6F636B6564
      090648656967687405000000000000009803400748697454657374080C4D6172
      67696E732E4C656674050000000000000080FF3F0B4D617267696E732E546F70
      05000000000000008000400D4D617267696E732E526967687405000000000000
      0080FF3F0454657874060B526164696F427574746F6E05576964746805000000
      00000000C605400000005450463007544C61796F757400095374796C654E616D
      65061070726F67726573736261727374796C650D44657369676E56697369626C
      6508064865696768740500000000000000FC05400A506F736974696F6E2E5805
      00000000000080B307400A506F736974696F6E2E590500000000000000DB0740
      0557696474680500000000000000F80540000A5452656374616E676C65000953
      74796C654E616D65060668747261636B05416C69676E070A616C436F6E74656E
      74730A46696C6C2E436F6C6F720709784646333933393339064C6F636B656409
      064865696768740500000000000000FC05400748697454657374080557696474
      680500000000000000F80540000A5452656374616E676C6500095374796C654E
      616D65060A68696E64696361746F7205416C69676E0706616C4C656674094669
      6C6C2E4B696E64070A626B4772616469656E741446696C6C2E4772616469656E
      742E506F696E74730E0105436F6C6F720709784646313143363534064F666673
      65740500000000000000000000000105436F6C6F720709784646364444433936
      064F6666736574050000000000000080FE3F000105436F6C6F72070978464630
      4643363533064F6666736574050000000000000080FE3F0000064C6F636B6564
      09064865696768740500000000000000F805400748697454657374080C4D6172
      67696E732E4C656674050000000000000080FF3F0B4D617267696E732E546F70
      050000000000000080FF3F0D4D617267696E732E526967687405000000000000
      0080FF3F0E4D617267696E732E426F74746F6D050000000000000080FF3F0A50
      6F736974696F6E2E58050000000000000080FF3F0A506F736974696F6E2E5905
      0000000000000080FF3F0B5374726F6B652E4B696E640706626B4E6F6E650557
      696474680500000000000000C804400000000A5452656374616E676C65000953
      74796C654E616D65060676747261636B05416C69676E070A616C436F6E74656E
      74730A46696C6C2E436F6C6F720709784646333933393339064C6F636B656409
      064865696768740500000000000000FC05400748697454657374080557696474
      680500000000000000F80540000A5452656374616E676C6500095374796C654E
      616D65060A76696E64696361746F7205416C69676E0708616C426F74746F6D09
      46696C6C2E4B696E64070A626B4772616469656E741446696C6C2E4772616469
      656E742E506F696E74730E0105436F6C6F720709784646313143363534064F66
      667365740500000000000000000000000105436F6C6F72070978464636444443
      3936064F6666736574050000000000000080FE3F000105436F6C6F7207097846
      46304643363533064F6666736574050000000000000080FE3F00001D46696C6C
      2E4772616469656E742E5374617274506F736974696F6E2E5905000000000000
      0080FE3F1C46696C6C2E4772616469656E742E53746F70506F736974696F6E2E
      58050000000000000080FF3F1C46696C6C2E4772616469656E742E53746F7050
      6F736974696F6E2E59050000000000000080FE3F064C6F636B65640906486569
      6768740500000000000000A803400748697454657374080C4D617267696E732E
      4C656674050000000000000080FF3F0B4D617267696E732E546F700500000000
      00000080FF3F0D4D617267696E732E5269676874050000000000000080FF3F0E
      4D617267696E732E426F74746F6D050000000000000080FF3F0A506F73697469
      6F6E2E58050000000000000080FF3F0A506F736974696F6E2E59050000000000
      0000D005400B5374726F6B652E4B696E640706626B4E6F6E6505576964746805
      00000000000000F40540000000005450463007544C61796F757400095374796C
      654E616D65060D73697A65677269707374796C650D44657369676E5669736962
      6C6508064865696768740500000000000000B803400A506F736974696F6E2E58
      0500000000000080CC07400A506F736974696F6E2E590500000000000080F407
      400557696474680500000000000000B80340000654496D616765000E4D756C74
      695265734269746D61700E01055769647468020B06486569676874020B03504E
      470A7E00000089504E470D0A1A0A0000000D494844520000000B0000000B0806
      000000A9AC7726000000017352474200AECE1CE90000000467414D410000B18F
      0BFC61050000002849444154285363A03A707373FB0F655209C04CA49EC9E826
      526E322E13C9379990896498CCC00000561E1B403E8EC0440000000049454E44
      AE426082000005416C69676E0708616C43656E746572064C6F636B6564090648
      65696768740500000000000000B0024007486974546573740805576964746805
      00000000000000B0024008577261704D6F6465070A69774F726967696E616C00
      00005450463007544C61796F757400095374796C654E616D65060D636F6D626F
      626F787374796C650D44657369676E56697369626C6508064865696768740500
      000000000000B003400A506F736974696F6E2E580500000000000000B907400A
      506F736974696F6E2E590500000000000000F507400557696474680500000000
      00FFFFC90540000A5452656374616E676C6500095374796C654E616D65060A62
      61636B67726F756E6405416C69676E070A616C436F6E74656E74730A46696C6C
      2E436F6C6F720708636C61426C61636B064C6F636B6564090648656967687405
      00000000000000B003400748697454657374080B5374726F6B652E4B696E6407
      06626B4E6F6E65055769647468050000000000FFFFC90540000A545265637461
      6E676C650005416C69676E070A616C436F6E74656E74730946696C6C2E4B696E
      640706626B4E6F6E65064C6F636B656409064865696768740500000000000000
      A003400748697454657374080C4D617267696E732E4C65667405000000000000
      0080FF3F0B4D617267696E732E546F70050000000000000080FF3F0D4D617267
      696E732E5269676874050000000000000080FF3F0E4D617267696E732E426F74
      746F6D050000000000000080FF3F0C5374726F6B652E436F6C6F720709784646
      334533453345055769647468050000000000FFFFC5054000000007544C61796F
      75740005416C69676E0707616C5269676874064C6F636B656409064865696768
      740500000000000000B003400A506F736974696F6E2E58050000000000FFFFAB
      05400557696474680500000000000000F00240000554506174680005416C6967
      6E0708616C43656E74657209446174612E506174680A34000000040000000000
      00000000000000000000010000000000803F00000000010000000000003F0000
      803F0300000000000000000000000A46696C6C2E436F6C6F720708636C615768
      697465064865696768740500000000000000A001400748697454657374080B53
      74726F6B652E4B696E640706626B4E6F6E650557696474680500000000000000
      8002400000000C5442727573684F626A65637400095374796C654E616D65060A
      666F726567726F756E64000007544C61796F757400095374796C654E616D6506
      07636F6E74656E7405416C69676E070A616C436F6E74656E7473064C6F636B65
      64090648656967687405000000000000009003400C4D617267696E732E4C6566
      7405000000000000008000400B4D617267696E732E546F700500000000000000
      8000400D4D617267696E732E52696768740500000000000000B803400E4D6172
      67696E732E426F74746F6D050000000000000080004005576964746805000000
      0000FFFF97054000000B54476C6F774566666563740008536F66746E65737305
      0000000000CDCCCCFC3F09476C6F77436F6C6F72070978464646414138303007
      4F7061636974790500000000006666E6FE3F0754726967676572060E4973466F
      63757365643D7472756507456E61626C6564080000005450463007544C61796F
      757400095374796C654E616D65060E636F6D626F656469747374796C650D4465
      7369676E56697369626C6508064865696768740500000000000000B003400A50
      6F736974696F6E2E580500000000000000B907400A506F736974696F6E2E5905
      00000000000000F50740055769647468050000000000FFFFC90540000C544272
      7573684F626A65637400095374796C654E616D65060A666F726567726F756E64
      00000C5442727573684F626A65637400095374796C654E616D65060973656C65
      6374696F6E0B42727573682E436F6C6F72070978373046354134304100000A54
      52656374616E676C6500095374796C654E616D65060A6261636B67726F756E64
      05416C69676E070A616C436F6E74656E74730A46696C6C2E436F6C6F72070863
      6C61426C61636B064C6F636B656409064865696768740500000000000000B003
      400748697454657374080B5374726F6B652E4B696E640706626B4E6F6E650557
      69647468050000000000FFFFC90540000A5452656374616E676C650005416C69
      676E070A616C436F6E74656E74730946696C6C2E4B696E640706626B4E6F6E65
      064C6F636B656409064865696768740500000000000000A00340074869745465
      7374080C4D617267696E732E4C656674050000000000000080FF3F0B4D617267
      696E732E546F70050000000000000080FF3F0D4D617267696E732E5269676874
      050000000000000080FF3F0E4D617267696E732E426F74746F6D050000000000
      000080FF3F0C5374726F6B652E436F6C6F720709784646334533453345055769
      647468050000000000FFFFC5054000000007544C61796F757400095374796C65
      4E616D6506056172726F7705416C69676E0707616C5269676874064C6F636B65
      6409064865696768740500000000000000B003400A506F736974696F6E2E5805
      0000000000FFFFAB05400557696474680500000000000000F002400005545061
      74680005416C69676E0708616C43656E74657209446174612E506174680A3400
      000004000000000000000000000000000000010000000000803F000000000100
      00000000003F0000803F0300000000000000000000000A46696C6C2E436F6C6F
      720708636C615768697465064865696768740500000000000000A00140074869
      7454657374080B5374726F6B652E4B696E640706626B4E6F6E65055769647468
      050000000000000080024000000007544C61796F757400095374796C654E616D
      650607636F6E74656E7405416C69676E070A616C436F6E74656E7473064C6F63
      6B6564090648656967687405000000000000008003400C4D617267696E732E4C
      65667405000000000000008001400B4D617267696E732E546F70050000000000
      0000C000400D4D617267696E732E52696768740500000000000000B803400E4D
      617267696E732E426F74746F6D0500000000000000C000400557696474680500
      00000000FFFF93054000000B54476C6F774566666563740008536F66746E6573
      73050000000000CDCCCCFC3F09476C6F77436F6C6F7207097846464641413830
      30074F7061636974790500000000006666E6FE3F0754726967676572060E4973
      466F63757365643D7472756507456E61626C6564080000005450463007544C61
      796F757400095374796C654E616D65060F636F6D626F706F7075707374796C65
      0D44657369676E56697369626C6508064865696768740500000000000000EC04
      40074F706163697479050000000000D7A3F0FE3F0A506F736974696F6E2E5805
      00000000000080BB07400A506F736974696F6E2E590500000000000080EB0740
      0557696474680500000000000000B80540000A5452656374616E676C65000953
      74796C654E616D65060A6261636B67726F756E6405416C69676E070A616C436F
      6E74656E74730A46696C6C2E436F6C6F720709784646323032303230064C6F63
      6B656409064865696768740500000000000000EC04400748697454657374080C
      50616464696E672E4C65667405000000000000008000400B50616464696E672E
      546F7005000000000000008000400D50616464696E672E526967687405000000
      000000008000400E50616464696E672E426F74746F6D05000000000000008000
      400557696474680500000000000000B8054000000F54466C6F6174416E696D61
      74696F6E00084475726174696F6E050000000000CDCCCCFB3F0C50726F706572
      74794E616D65060E506172656E742E4F7061636974790A537461727456616C75
      6505000000000000000000000953746F7056616C7565050000000000000080FF
      3F0754726967676572060F497344726F70446F776E3D747275650E5472696767
      6572496E76657273650610497344726F70446F776E3D66616C73650000005450
      463007544C61796F757400095374796C654E616D650613657870616E64657262
      7574746F6E7374796C650D44657369676E56697369626C650806486569676874
      0500000000000000B003400B4D617267696E732E546F70050000000000000080
      FF3F0A506F736974696F6E2E580500000000000000CD07400A506F736974696F
      6E2E590500000000000000F507400557696474680500000000000000B0034000
      0554506174680005416C69676E0708616C43656E74657209446174612E506174
      680A400000000500000000000000D36D3F431BEF4843010000001749E043BA09
      E54301000000C9B63943C73B344401000000D36D3F431BEF4843030000000000
      0000000000000A46696C6C2E436F6C6F720708636C615768697465064C6F636B
      6564090648656967687405000000000000009002400748697454657374080B53
      74726F6B652E4B696E640706626B4E6F6E650557696474680500000000000000
      800240000F54436F6C6F72416E696D6174696F6E00084475726174696F6E0500
      0000000017B7D1F13F0C50726F70657274794E616D65060A46696C6C2E436F6C
      6F720A537461727456616C756507097830304646464646460953746F7056616C
      75650708636C615768697465075472696767657206104973457870616E646564
      3D66616C73650E54726967676572496E7665727365060F4973457870616E6465
      643D747275650000000554506174680005416C69676E0708616C43656E746572
      09446174612E506174680A400000000500000000000000CB11CF4379E93C4301
      000000DDB4CD4396230A44010000007DBF1E424871094401000000CB11CF4379
      E93C430300000000000000000000000A46696C6C2E436F6C6F72070978303046
      4646464646064C6F636B65640906486569676874050000000000000080024007
      48697454657374080B5374726F6B652E4B696E640706626B4E6F6E6505576964
      74680500000000000000800240000F54436F6C6F72416E696D6174696F6E0008
      4475726174696F6E05000000000017B7D1F13F0C50726F70657274794E616D65
      060A46696C6C2E436F6C6F720A537461727456616C7565070978303046464646
      46460953746F7056616C75650708636C6157686974650754726967676572060F
      4973457870616E6465643D747275650E54726967676572496E76657273650610
      4973457870616E6465643D66616C7365000000005450463007544C61796F7574
      00095374796C654E616D65060D74726565766965777374796C650D4465736967
      6E56697369626C65080648656967687405000000000000008306400A506F7369
      74696F6E2E580500000000000000B507400A506F736974696F6E2E5905000000
      00000080D90740055769647468050000000000FFFFE90540000C544272757368
      4F626A65637400095374796C654E616D650618416C7465726E6174696E67526F
      774261636B67726F756E640B42727573682E436F6C6F72070978323046354134
      304100000A5452656374616E676C6500095374796C654E616D65060A6261636B
      67726F756E6405416C69676E070A616C436F6E74656E74730A46696C6C2E436F
      6C6F720708636C61426C61636B064C6F636B6564090648656967687405000000
      000000008306400748697454657374080C50616464696E672E4C656674050000
      00000000008000400B50616464696E672E546F7005000000000000008000400D
      50616464696E672E526967687405000000000000008000400E50616464696E67
      2E426F74746F6D05000000000000008000400B5374726F6B652E4B696E640706
      626B4E6F6E65055769647468050000000000FFFFE90540000A5452656374616E
      676C650005416C69676E070A616C436F6E74656E74730946696C6C2E4B696E64
      0706626B4E6F6E65064C6F636B65640906486569676874050000000000000081
      06400748697454657374080C4D617267696E732E4C6566740500000000000000
      80FF3F0B4D617267696E732E546F70050000000000000080FF3F0D4D61726769
      6E732E5269676874050000000000000080FF3F0E4D617267696E732E426F7474
      6F6D050000000000000080FF3F0C5374726F6B652E436F6C6F72070978464633
      4533453345055769647468050000000000FFFFE50540000007544C61796F7574
      00095374796C654E616D650607636F6E74656E7405416C69676E0708616C436C
      69656E740C436C69704368696C6472656E090648656967687405000000000000
      00DA0540055769647468050000000000FFFFBD0540000A5452656374616E676C
      6500095374796C654E616D65060973656C656374696F6E0A46696C6C2E436F6C
      6F720709784646463541343041064865696768740500000000000000C8044007
      48697454657374080B5374726F6B652E4B696E640706626B4E6F6E6505576964
      74680500000000000000C8044000000A5452656374616E676C6500095374796C
      654E616D650610666F637573656473656C656374696F6E0A46696C6C2E436F6C
      6F720709784646463541343041064865696768740500000000000000C8044007
      48697454657374080B5374726F6B652E4461736807057364446F740557696474
      680500000000000000C804400000000A545363726F6C6C42617200095374796C
      654E616D65060A767363726F6C6C62617205416C69676E0707616C5269676874
      064865696768740500000000000000DA05400B536D616C6C4368616E67650500
      0000000000000000000B4F7269656E746174696F6E070A6F7256657274696361
      6C0C4D617267696E732E4C65667405000000000000008000400A506F73697469
      6F6E2E58050000000000FFFFC505400A506F736974696F6E2E59050000000000
      0000800040055769647468050000000000000080034000000A545363726F6C6C
      42617200095374796C654E616D65060A687363726F6C6C62617205416C69676E
      0708616C426F74746F6D0648656967687405000000000000008003400B536D61
      6C6C4368616E676505000000000000000000000B4F7269656E746174696F6E07
      0C6F72486F72697A6F6E74616C0B4D617267696E732E546F7005000000000000
      008000400A506F736974696F6E2E5805000000000000008000400A506F736974
      696F6E2E590500000000000000E20540055769647468050000000000FFFFE105
      4000000F54536D616C6C5363726F6C6C42617200095374796C654E616D65060F
      76736D616C6C7363726F6C6C62617205416C69676E0707616C52696768740648
      656967687405000000000000008002400B536D616C6C4368616E676505000000
      000000000000000B4F7269656E746174696F6E070A6F72566572746963616C0C
      4D617267696E732E4C65667405000000000000008000400A506F736974696F6E
      2E580500000000000000C605400A506F736974696F6E2E590500000000000000
      8000400756697369626C6508055769647468050000000000000080024000000F
      54536D616C6C5363726F6C6C42617200095374796C654E616D65060F68736D61
      6C6C7363726F6C6C62617205416C69676E0708616C426F74746F6D0648656967
      687405000000000000008002400B536D616C6C4368616E676505000000000000
      000000000B4F7269656E746174696F6E070C6F72486F72697A6F6E74616C0B4D
      617267696E732E546F7005000000000000008000400A506F736974696F6E2E58
      05000000000000008000400A506F736974696F6E2E590500000000000000E205
      400756697369626C650805576964746805000000000000009606400000000B54
      476C6F774566666563740008536F66746E657373050000000000CDCCCCFC3F09
      476C6F77436F6C6F720709784646464141383030074F70616369747905000000
      00006666E6FE3F0754726967676572060E4973466F63757365643D7472756507
      456E61626C656408000000545046300A5452656374616E676C6500095374796C
      654E616D65061174726565766965776974656D7374796C650D44657369676E56
      697369626C65080946696C6C2E4B696E640706626B4E6F6E6506486569676874
      0500000000000000A004400748697454657374080A506F736974696F6E2E5805
      00000000000080BC07400A506F736974696F6E2E590500000000000080F00740
      0B5374726F6B652E4B696E640706626B4E6F6E65075852616469757305000000
      0000000080014007595261646975730500000000000000800140055769647468
      0500000000000000AE0540000C545370656564427574746F6E00095374796C65
      4E616D650606627574746F6E05416C69676E0706616C4C656674064865696768
      7405000000000000008804400C4D617267696E732E4C65667405000000000000
      00C000400B4D617267696E732E546F700500000000000000C000400D4D617267
      696E732E52696768740500000000000000C000400E4D617267696E732E426F74
      746F6D0500000000000000C000400A506F736974696F6E2E5805000000000000
      00C000400A506F736974696F6E2E590500000000000000C000400B5374796C65
      4C6F6F6B7570061B7472656576696577657870616E646572627574746F6E7374
      796C650557696474680500000000000000F00240000007544C61796F75740005
      416C69676E070A616C436F6E74656E7473064865696768740500000000000000
      A004400C4D617267696E732E4C6566740500000000000000A003400557696474
      680500000000000000860540000954436865636B426F7800095374796C654E61
      6D650605636865636B05416C69676E0706616C4C6566740843616E466F637573
      081244697361626C65466F637573456666656374090648656967687405000000
      00000000A00440085461624F7264657202000557696474680500000000000000
      A00340000005545465787400095374796C654E616D6506047465787405416C69
      676E0708616C436C69656E7405436F6C6F720708636C615768697465064C6F63
      6B656409064865696768740500000000000000A004400748697454657374080D
      486F727A54657874416C69676E070974614C656164696E670557696474680500
      000000000000BC044008576F72645772617008000000005450463007544C6179
      6F757400095374796C654E616D65061B7472656576696577657870616E646572
      627574746F6E7374796C650D44657369676E56697369626C6508064865696768
      740500000000000000B003400B4D617267696E732E546F700500000000000000
      80FF3F0A506F736974696F6E2E580500000000000000CD07400A506F73697469
      6F6E2E590500000000000000F507400557696474680500000000000000B00340
      000554506174680005416C69676E0708616C43656E74657209446174612E5061
      74680A400000000500000000000000D36D3F431BEF4843010000001749E043BA
      09E54301000000C9B63943C73B344401000000D36D3F431BEF48430300000000
      000000000000000A46696C6C2E436F6C6F720708636C615768697465064C6F63
      6B6564090648656967687405000000000000009002400748697454657374080B
      5374726F6B652E4B696E640706626B4E6F6E6505576964746805000000000000
      00800240000F54436F6C6F72416E696D6174696F6E00084475726174696F6E05
      000000000017B7D1F13F0C50726F70657274794E616D65060A46696C6C2E436F
      6C6F720A537461727456616C75650707636C614E756C6C0953746F7056616C75
      650708636C615768697465075472696767657206104973457870616E6465643D
      66616C73650E54726967676572496E7665727365060F4973457870616E646564
      3D747275650000000554506174680005416C69676E0708616C43656E74657209
      446174612E506174680A400000000500000000000000CB11CF4379E93C430100
      0000DDB4CD4396230A44010000007DBF1E424871094401000000CB11CF4379E9
      3C430300000000000000000000000A46696C6C2E436F6C6F720707636C614E75
      6C6C064C6F636B65640906486569676874050000000000000080024007486974
      54657374080B5374726F6B652E4B696E640706626B4E6F6E6505576964746805
      00000000000000800240000F54436F6C6F72416E696D6174696F6E0008447572
      6174696F6E05000000000017B7D1F13F0C50726F70657274794E616D65060A46
      696C6C2E436F6C6F720A537461727456616C75650707636C614E756C6C095374
      6F7056616C75650708636C6157686974650754726967676572060F4973457870
      616E6465643D747275650E54726967676572496E766572736506104973457870
      616E6465643D66616C7365000000005450463007544C61796F75740009537479
      6C654E616D65060F746162636F6E74726F6C7374796C650D44657369676E5669
      7369626C650806486569676874050000000000FFFFC905400A506F736974696F
      6E2E580500000000000000AF07400A506F736974696F6E2E5905000000000000
      00E1074005576964746805000000000000008E0640000A5452656374616E676C
      6500095374796C654E616D65060A6261636B67726F756E6405416C69676E070A
      616C436F6E74656E74730A46696C6C2E436F6C6F720709784646323532353235
      064C6F636B65640906486569676874050000000000FFFFC90540074869745465
      7374080C50616464696E672E4C65667405000000000000008000400B50616464
      696E672E546F7005000000000000008000400D50616464696E672E5269676874
      05000000000000008000400E50616464696E672E426F74746F6D050000000000
      00008000400C5374726F6B652E436F6C6F720709784646383538353835055769
      64746805000000000000008E06400000005450463007544C61796F7574000953
      74796C654E616D65060F64726F707461726765747374796C650D44657369676E
      56697369626C6508064865696768740500000000000000C804400A506F736974
      696F6E2E580500000000000000C607400A506F736974696F6E2E590500000000
      000000EE07400557696474680500000000000000C80440000A5452656374616E
      676C650005416C69676E070A616C436F6E74656E74730946696C6C2E4B696E64
      0706626B4E6F6E65064865696768740500000000000000C80440074869745465
      7374080C5374726F6B652E436F6C6F720709784646453845384538105374726F
      6B652E546869636B6E65737305000000000000008001400B5374726F6B652E44
      617368070673644461736807585261646975730500000000000100B002400759
      5261646975730500000000000100B002400557696474680500000000000000C8
      04400005545465787400095374796C654E616D6506047465787405416C69676E
      0708616C426F74746F6D05436F6C6F7207097846464538453845380648656967
      68740500000000000000C804400748697454657374080C4D617267696E732E4C
      6566740500000000000000A002400D4D617267696E732E526967687405000000
      00000000A002400A506F736974696F6E2E580500000000000000A00240045465
      78740604746578740557696474680500000000000000F003400000001254466C
      6F61744B6579416E696D6174696F6E00084475726174696F6E05000000000099
      9999FE3F044B6579730E010001034B6579050000000000000080FE3F0556616C
      75650500000000000000A003C00001034B6579050000000000000080FF3F0000
      044C6F6F70090C50726F70657274794E616D65060B50616464696E672E546F70
      10537461727446726F6D43757272656E74080754726967676572060F49734472
      61674F7665723D7472756500000554506174680005416C69676E0708616C4365
      6E74657209446174612E506174680AC4000000100000000000000008EC8343F0
      87A4430100000008EC8343083CFB430200000035BE7143504DF9430200000012
      835C43A8E6F54302000000F0674943F803F1430100000008EC8343FC01164401
      00000008EC8343FC5116440100000000408443FC5116440100000010689A43FC
      412B4401000000081CD043F803F14302000000915DC64321E0F5430200000091
      9DBB439643F94302000000087CB043F833FB4301000000087CB043F087A44301
      00000008EC8343F087A443030000000000000000000000064865696768740500
      000000000100C804400748697454657374080B5374726F6B652E4B696E640706
      626B4E6F6E650557696474680500000000000000C80440000000545046300754
      4C61796F757400095374796C654E616D65060F64726F70746172676574737479
      6C650D44657369676E56697369626C6508064865696768740500000000000000
      C804400A506F736974696F6E2E580500000000000000C607400A506F73697469
      6F6E2E590500000000000000EE07400557696474680500000000000000C80440
      000A5452656374616E676C650005416C69676E070A616C436F6E74656E747309
      46696C6C2E4B696E640706626B4E6F6E65064865696768740500000000000000
      C804400748697454657374080C5374726F6B652E436F6C6F7207097846464538
      45384538105374726F6B652E546869636B6E6573730500000000000000800140
      0B5374726F6B652E446173680706736444617368075852616469757305000000
      00000100B0024007595261646975730500000000000100B00240055769647468
      0500000000000000C804400005545465787400095374796C654E616D65060474
      65787405416C69676E0708616C426F74746F6D05436F6C6F7207097846464538
      45384538064865696768740500000000000000C804400C4D617267696E732E4C
      6566740500000000000000A002400D4D617267696E732E526967687405000000
      00000000A002400A506F736974696F6E2E580500000000000000A00240045465
      78740604746578740557696474680500000000000000F003400000001254466C
      6F61744B6579416E696D6174696F6E00084475726174696F6E05000000000099
      9999FE3F044B6579730E010001034B6579050000000000000080FE3F0556616C
      75650500000000000000A003C00001034B6579050000000000000080FF3F0000
      044C6F6F70090C50726F70657274794E616D65060B50616464696E672E546F70
      10537461727446726F6D43757272656E74080754726967676572060F49734472
      61674F7665723D7472756500000554506174680005416C69676E0708616C4365
      6E74657209446174612E506174680AC4000000100000000000000008EC8343F0
      87A4430100000008EC8343083CFB430200000035BE7143504DF9430200000012
      835C43A8E6F54302000000F0674943F803F1430100000008EC8343FC01164401
      00000008EC8343FC5116440100000000408443FC5116440100000010689A43FC
      412B4401000000081CD043F803F14302000000915DC64321E0F5430200000091
      9DBB439643F94302000000087CB043F833FB4301000000087CB043F087A44301
      00000008EC8343F087A443030000000000000000000000064865696768740500
      000000000100C804400748697454657374080B5374726F6B652E4B696E640706
      626B4E6F6E650557696474680500000000000000C80440000000545046300754
      4C61796F757400095374796C654E616D65060D7465787463656C6C7374796C65
      0D44657369676E56697369626C6508064865696768740500000000000000B003
      400A506F736974696F6E2E580500000000000080B707400A506F736974696F6E
      2E590500000000000000F507400557696474680500000000000000D60540000C
      5442727573684F626A65637400095374796C654E616D65060A666F726567726F
      756E6400000C5442727573684F626A65637400095374796C654E616D65060973
      656C656374696F6E0B42727573682E436F6C6F72070978373046354134304100
      0007544C61796F757400095374796C654E616D650607636F6E74656E7405416C
      69676E070A616C436F6E74656E7473064C6F636B656409064865696768740500
      0000000000008003400C4D617267696E732E4C6566740500000000000000C000
      400B4D617267696E732E546F700500000000000000C000400D4D617267696E73
      2E52696768740500000000000000C000400E4D617267696E732E426F74746F6D
      0500000000000000C000400557696474680500000000000000CA054000000054
      50463007544C61796F757400095374796C654E616D65060E636865636B63656C
      6C7374796C650D44657369676E56697369626C65080648656967687405000000
      00000000F003400A506F736974696F6E2E580500000000000000AD07400A506F
      736974696F6E2E590500000000000000F3074005576964746805000000000000
      009506400007544C61796F75740005416C69676E0708616C43656E7465720648
      65696768740500000000000000F003400557696474680500000000000000A003
      400007544C61796F75740005416C69676E0708616C43656E746572064C6F636B
      656409064865696768740500000000000000F002400557696474680500000000
      000000F002400005545061746800095374796C654E616D650609636865636B6D
      61726B05416C69676E0708616C43656E74657209446174612E506174680A5800
      00000700000000000000CD92A7423983E24301000000A6C0194372B5BB430100
      0000DCB66143EF52DF43010000006EDBE84394136E4301000000B76DFB4338E5
      8D43010000009224594378A9174403000000CD92A7423983E2430A46696C6C2E
      436F6C6F720709783030423846353238064C6F636B6564090648656967687405
      00000000000000B002400748697454657374080B5374726F6B652E4B696E6407
      06626B4E6F6E650557696474680500000000000000B00240000F54436F6C6F72
      416E696D6174696F6E00084475726174696F6E050000000000CDCCCCFB3F0C50
      726F70657274794E616D65060A46696C6C2E436F6C6F720A537461727456616C
      75650707636C614E756C6C0953746F7056616C75650708636C61576869746507
      54726967676572060E4973436865636B65643D747275650E5472696767657249
      6E7665727365060F4973436865636B65643D66616C7365000000000000545046
      3007544C61796F757400095374796C654E616D65061170726F67726573736365
      6C6C7374796C650D44657369676E56697369626C650806486569676874050000
      0000000000FC05400A506F736974696F6E2E580500000000000080B307400A50
      6F736974696F6E2E590500000000000000DB0740055769647468050000000000
      0000F805400007544C61796F757400095374796C654E616D6506066874726163
      6B05416C69676E070A616C436F6E74656E7473064C6F636B6564090648656967
      68740500000000000000F405400C4D617267696E732E4C656674050000000000
      00008000400B4D617267696E732E546F7005000000000000008000400D4D6172
      67696E732E526967687405000000000000008000400E4D617267696E732E426F
      74746F6D05000000000000008000400557696474680500000000000000F00540
      000A5452656374616E676C6500095374796C654E616D65060A68696E64696361
      746F7205416C69676E0706616C4C6566740946696C6C2E4B696E64070A626B47
      72616469656E741446696C6C2E4772616469656E742E506F696E74730E010543
      6F6C6F720709784646313143363534064F666673657405000000000000000000
      00000105436F6C6F720709784646364444433936064F66667365740500000000
      00000080FE3F000105436F6C6F720709784646304643363533064F6666736574
      050000000000000080FE3F0000064C6F636B6564090648656967687405000000
      00000000F005400748697454657374080C4D617267696E732E4C656674050000
      000000000080FF3F0B4D617267696E732E546F70050000000000000080FF3F0D
      4D617267696E732E5269676874050000000000000080FF3F0E4D617267696E73
      2E426F74746F6D050000000000000080FF3F0A506F736974696F6E2E58050000
      000000000080FF3F0A506F736974696F6E2E59050000000000000080FF3F0557
      696474680500000000000000C80440000000005450463007544C61796F757400
      095374796C654E616D65060E706F70757063656C6C7374796C650D4465736967
      6E56697369626C6508064865696768740500000000000000B003400A506F7369
      74696F6E2E580500000000000080B707400A506F736974696F6E2E5905000000
      00000000F507400557696474680500000000000000D605400007544C61796F75
      740005416C69676E0707616C5269676874064865696768740500000000000000
      B003400A506F736974696F6E2E580500000000000000B8054005576964746805
      00000000000000F00240000554506174680005416C69676E0708616C43656E74
      657209446174612E506174680A40000000050000000000000000000000000080
      3F010000000000803F0000803F010000000000003F0000000001000000000000
      000000803F0300000000000000000000000A46696C6C2E436F6C6F720708636C
      615768697465064865696768740500000000000000A001400748697454657374
      080B4D617267696E732E546F7005000000000000009002C00B5374726F6B652E
      4B696E640706626B4E6F6E650557696474680500000000000000800240000005
      54506174680005416C69676E0708616C43656E74657209446174612E50617468
      0A3400000004000000000000000000000000000000010000000000803F000000
      00010000000000003F0000803F0300000000000000000000000A46696C6C2E43
      6F6C6F720708636C615768697465064865696768740500000000000000A00140
      0748697454657374080B4D617267696E732E546F700500000000000000E00140
      0B5374726F6B652E4B696E640706626B4E6F6E65055769647468050000000000
      000080024000000005545465787400095374796C654E616D6506047465787405
      416C69676E0708616C436C69656E7405436F6C6F720708636C61576869746506
      4C6F636B656409064865696768740500000000000000C0024007486974546573
      74080C4D617267696E732E4C6566740500000000000000A001400B4D61726769
      6E732E546F700500000000000000A001400D4D617267696E732E526967687405
      00000000000000A001400E4D617267696E732E426F74746F6D05000000000000
      00A0014004546578740606627574746F6E0557696474680500000000000000A4
      054008576F726457726170080000005450463007544C61796F75740009537479
      6C654E616D65060E696D61676563656C6C7374796C650D44657369676E566973
      69626C6508064865696768740500000000000000D003400A506F736974696F6E
      2E580500000000000000C007400A506F736974696F6E2E590500000000000000
      F407400557696474680500000000000000920540000654496D61676500095374
      796C654E616D650605696D6167650E4D756C74695265734269746D61700E0100
      0005416C69676E0708616C436C69656E74064C6F636B65640906486569676874
      0500000000000000A003400748697454657374080C4D617267696E732E4C6566
      740500000000000000C000400B4D617267696E732E546F700500000000000000
      C000400D4D617267696E732E52696768740500000000000000C000400E4D6172
      67696E732E426F74746F6D0500000000000000C0004005576964746805000000
      000000008605400000005450463007544C61796F757400095374796C654E616D
      65060F6865616465726974656D7374796C650D44657369676E56697369626C65
      08064865696768740500000000000000D003400A506F736974696F6E2E580500
      000000000000C007400A506F736974696F6E2E590500000000000000F4074005
      57696474680500000000000000920540000A5452656374616E676C6500095374
      796C654E616D65060A6261636B67726F756E6405416C69676E070A616C436F6E
      74656E74730946696C6C2E4B696E64070A626B4772616469656E741446696C6C
      2E4772616469656E742E506F696E74730E0105436F6C6F720709784646453539
      443030064F66667365740500000000000000000000000105436F6C6F72070978
      4646424238383030064F6666736574050000000000000080FE3F000105436F6C
      6F720709784646423338323030064F6666736574050000000000000080FF3F00
      00064C6F636B656409064865696768740500000000000000D003400748697454
      657374080C5374726F6B652E436F6C6F72070978464642313831303005576964
      74680500000000000000920540001054496E6E6572476C6F7745666665637400
      08536F66746E657373050000000000CDCCCCFD3F09476C6F77436F6C6F720709
      784646344634443438074F7061636974790500000000006666E6FE3F07547269
      67676572060E4973507265737365643D7472756507456E61626C656408000000
      05545465787400095374796C654E616D6506047465787405416C69676E070861
      6C436C69656E7405436F6C6F720709784646453045304530064C6F636B656409
      064865696768740500000000000000B003400748697454657374080C4D617267
      696E732E4C6566740500000000000000A001400B4D617267696E732E546F7005
      000000000000008000400D4D617267696E732E52696768740500000000000000
      A001400E4D617267696E732E426F74746F6D0500000000000000800040045465
      78740606627574746F6E0557696474680500000000000000FC04400000005450
      463007544C61796F757400095374796C654E616D650609677269647374796C65
      0D44657369676E56697369626C65080648656967687405000000000000008306
      400A506F736974696F6E2E580500000000000080B507400A506F736974696F6E
      2E590500000000000000DA0740055769647468050000000000FFFFE90540000C
      5442727573684F626A65637400095374796C654E616D650618416C7465726E61
      74696E67526F774261636B67726F756E640B42727573682E436F6C6F72070978
      323046354134304100000C5442727573684F626A65637400095374796C654E61
      6D6506086C696E6566696C6C0B42727573682E436F6C6F720709784646323032
      30323000000A5452656374616E676C6500095374796C654E616D65060A626163
      6B67726F756E6405416C69676E070A616C436F6E74656E74730A46696C6C2E43
      6F6C6F720708636C61426C61636B064C6F636B65640906486569676874050000
      00000000008306400748697454657374080C50616464696E672E4C6566740500
      0000000000008000400B50616464696E672E546F700500000000000000800040
      0D50616464696E672E526967687405000000000000008000400E50616464696E
      672E426F74746F6D05000000000000008000400B5374726F6B652E4B696E6407
      06626B4E6F6E65055769647468050000000000FFFFE90540000A545265637461
      6E676C650005416C69676E070A616C436F6E74656E74730946696C6C2E4B696E
      640706626B4E6F6E65064C6F636B656409064865696768740500000000000000
      8106400748697454657374080C4D617267696E732E4C65667405000000000000
      0080FF3F0B4D617267696E732E546F70050000000000000080FF3F0D4D617267
      696E732E5269676874050000000000000080FF3F0E4D617267696E732E426F74
      746F6D050000000000000080FF3F0C5374726F6B652E436F6C6F720709784646
      334533453345055769647468050000000000FFFFE50540000007544865616465
      7200095374796C654E616D6506066865616465720553696465730B057364546F
      700673644C656674087364426F74746F6D07736452696768740005416C69676E
      0705616C546F70064865696768740500000000000000A803400A506F73697469
      6F6E2E5805000000000000008000400A506F736974696F6E2E59050000000000
      0000800040085461624F726465720201055769647468050000000000FFFFE105
      40000007544C61796F757400095374796C654E616D650607636F6E74656E7405
      416C69676E0708616C436C69656E740C436C69704368696C6472656E09064865
      696768740500000000000000B40540055769647468050000000000FFFFC10540
      000A5452656374616E676C6500095374796C654E616D65060973656C65637469
      6F6E0A46696C6C2E436F6C6F7207097846464635413430410648656967687405
      00000000000000C804400748697454657374080B5374726F6B652E4B696E6407
      06626B4E6F6E650557696474680500000000000000C8044000000A5452656374
      616E676C6500095374796C654E616D650605666F6375730A46696C6C2E436F6C
      6F720709783846303030303030064865696768740500000000000000C8044007
      48697454657374080C4D617267696E732E4C656674050000000000000080FF3F
      0B4D617267696E732E546F70050000000000000080FF3F0D4D617267696E732E
      5269676874050000000000000080FF3F0E4D617267696E732E426F74746F6D05
      0000000000000080FF3F0B5374726F6B652E4B696E640706626B4E6F6E650557
      696474680500000000000000C804400000000A545363726F6C6C426172000953
      74796C654E616D65060A767363726F6C6C62617205416C69676E0707616C5269
      676874064865696768740500000000000000B405400B536D616C6C4368616E67
      6505000000000000000000000B4F7269656E746174696F6E070A6F7256657274
      6963616C0A506F736974696F6E2E58050000000000FFFFC505400A506F736974
      696F6E2E590500000000000000B8034005576964746805000000000000008003
      4000000A545363726F6C6C42617200095374796C654E616D65060A687363726F
      6C6C62617205416C69676E0708616C426F74746F6D0648656967687405000000
      000000008003400B536D616C6C4368616E676505000000000000000000000B4F
      7269656E746174696F6E070C6F72486F72697A6F6E74616C0A506F736974696F
      6E2E5805000000000000008000400A506F736974696F6E2E5905000000000000
      00E20540055769647468050000000000FFFFE1054000000F54536D616C6C5363
      726F6C6C42617200095374796C654E616D65060F76736D616C6C7363726F6C6C
      62617205416C69676E0707616C52696768740648656967687405000000000000
      008002400B536D616C6C4368616E676505000000000000000000000B4F726965
      6E746174696F6E070A6F72566572746963616C0C4D617267696E732E4C656674
      05000000000000008000400A506F736974696F6E2E580500000000000000C605
      400A506F736974696F6E2E5905000000000000008000400756697369626C6508
      055769647468050000000000000080024000000F54536D616C6C5363726F6C6C
      42617200095374796C654E616D65060F68736D616C6C7363726F6C6C62617205
      416C69676E0708616C426F74746F6D0648656967687405000000000000008002
      400B536D616C6C4368616E676505000000000000000000000B4F7269656E7461
      74696F6E070C6F72486F72697A6F6E74616C0B4D617267696E732E546F700500
      0000000000008000400A506F736974696F6E2E5805000000000000008000400A
      506F736974696F6E2E590500000000000000E205400756697369626C65080557
      6964746805000000000000009606400000000B54476C6F774566666563740008
      536F66746E657373050000000000CDCCCCFC3F09476C6F77436F6C6F72070978
      4646464141383030074F7061636974790500000000006666E6FE3F0754726967
      676572060E4973466F63757365643D7472756507456E61626C65640800000054
      5046300A5452656374616E676C6500095374796C654E616D65060C6D656E7562
      61727374796C650C436C69704368696C6472656E090D44657369676E56697369
      626C65080A46696C6C2E436F6C6F720708636C61426C61636B06486569676874
      0500000000000000C804400748697454657374080A506F736974696F6E2E5805
      00000000000000C607400A506F736974696F6E2E590500000000000000EE0740
      0B5374726F6B652E4B696E640706626B4E6F6E65055769647468050000000000
      0000C804400007544C61796F757400095374796C654E616D650607636F6E7465
      6E7405416C69676E0708616C436C69656E740648656967687405000000000000
      00BC04400C4D617267696E732E4C656674050000000000000080FF3F0B4D6172
      67696E732E546F70050000000000000080FF3F0D4D617267696E732E52696768
      74050000000000000080FF3F0E4D617267696E732E426F74746F6D0500000000
      0000008000400557696474680500000000000000C00440000000545046300A54
      52656374616E676C6500095374796C654E616D65060D6D656E75766965777374
      796C650D44657369676E56697369626C65080648656967687405000000000000
      00C804400D50616464696E672E526967687405000000000000008002400E5061
      6464696E672E426F74746F6D05000000000000008002400A506F736974696F6E
      2E580500000000000000C607400A506F736974696F6E2E590500000000000000
      EE07400557696474680500000000000000C80440000A5452656374616E676C65
      0005416C69676E0708616C436C69656E740946696C6C2E4B696E64070A626B47
      72616469656E741446696C6C2E4772616469656E742E506F696E74730E010543
      6F6C6F720709784646364336433643064F666673657405000000000000000000
      00000105436F6C6F720709784646334333433343064F66667365740500000000
      00000080FF3F0000064865696768740500000000000000C80440074869745465
      7374080D4D617267696E732E526967687405000000000000008002C00E4D6172
      67696E732E426F74746F6D05000000000000008002C00C5374726F6B652E436F
      6C6F7207097846464135413541350557696474680500000000000000C8044000
      0D54536861646F77456666656374000844697374616E63650500000000000000
      80014009446972656374696F6E0500000000000000B4044008536F66746E6573
      73050000000000CECCCCFC3F074F706163697479050000000000000080FE3F0B
      536861646F77436F6C6F720708636C61426C61636B00000007544C61796F7574
      00095374796C654E616D650607636F6E74656E7405416C69676E0708616C436C
      69656E74064865696768740500000000000000A004400C4D617267696E732E4C
      656674050000000000000080FF3F0B4D617267696E732E546F70050000000000
      000080FF3F0D4D617267696E732E5269676874050000000000000080FF3F0E4D
      617267696E732E426F74746F6D050000000000000080FF3F0557696474680500
      000000000000A004400000005450463007544C61796F757400095374796C654E
      616D65060D6D656E756974656D7374796C650D44657369676E56697369626C65
      08064865696768740500000000000000D003400C4D617267696E732E4C656674
      050000000000000080FF3F0B4D617267696E732E546F70050000000000000080
      FF3F0D4D617267696E732E5269676874050000000000000080FF3F0E4D617267
      696E732E426F74746F6D050000000000000080FF3F0A506F736974696F6E2E58
      0500000000000000C007400A506F736974696F6E2E590500000000000000F407
      400557696474680500000000000000920540000A5452656374616E676C650005
      416C69676E070A616C436F6E74656E74730A46696C6C2E436F6C6F7207097846
      46463541383030064865696768740500000000000000D0034007486974546573
      7408074F70616369747905000000000017B7D1F13F0B5374726F6B652E4B696E
      640706626B4E6F6E650557696474680500000000000000920540000F54466C6F
      6174416E696D6174696F6E00084475726174696F6E05000000000018B7D1F23F
      0C50726F70657274794E616D6506074F7061636974790A537461727456616C75
      6505000000000000000000000953746F7056616C7565050000000000000080FF
      3F0754726967676572060F497353656C65637465643D747275650E5472696767
      6572496E76657273650610497353656C65637465643D66616C73650000000A54
      52656374616E676C6500095374796C654E616D65060A6261636B67726F756E64
      05416C69676E070A616C436F6E74656E74730A46696C6C2E436F6C6F72070978
      4646463541383030064865696768740500000000000000D00340074869745465
      737408074F70616369747905000000000017B7D1F13F0B5374726F6B652E4B69
      6E640706626B4E6F6E650557696474680500000000000000920540000F54466C
      6F6174416E696D6174696F6E00084475726174696F6E05000000000018B7D1F2
      3F0C50726F70657274794E616D6506074F7061636974790A537461727456616C
      756505000000000000000000000953746F7056616C7565050000000000000080
      FF3F0754726967676572061049734D6F7573654F7665723D747275650E547269
      67676572496E7665727365061149734D6F7573654F7665723D66616C73650000
      0007544C61796F757400095374796C654E616D650605676C79706805416C6967
      6E0706616C4C656674064865696768740500000000000000D003400557696474
      680500000000000000C803400007544C61796F757400095374796C654E616D65
      0609636865636B6D61726B05416C69676E070A616C436F6E74656E7473064865
      696768740500000000000000D00340074F7061636974790500000000006F1283
      F53F0557696474680500000000000000C80340000554506174680005416C6967
      6E0708616C43656E74657209446174612E506174680A58000000070000000000
      000056D9524391AE2C43010000009276664365021643010000009F3983432B7C
      3C43010000009E9AA64382D2B442010000006F1CB04375A4D1420100000026DF
      8243263F67430300000056D9524391AE2C430A46696C6C2E436F6C6F72070863
      6C61426C61636B06486569676874050000000000000080024007486974546573
      74080B5374726F6B652E4B696E640706626B4E6F6E6505576964746805000000
      0000000090024000000F54466C6F6174416E696D6174696F6E00084475726174
      696F6E050000000000CDCCCCFB3F0C50726F70657274794E616D6506074F7061
      636974790A537461727456616C756505000000000000000000000953746F7056
      616C7565050000000000000080FF3F0754726967676572060E4973436865636B
      65643D747275650E54726967676572496E7665727365060F4973436865636B65
      643D66616C73650000000654496D61676500095374796C654E616D6506066269
      746D61700E4D756C74695265734269746D61700E01000005416C69676E070A61
      6C436F6E74656E7473064865696768740500000000000000B003400C4D617267
      696E732E4C65667405000000000000008000400B4D617267696E732E546F7005
      000000000000008000400D4D617267696E732E52696768740500000000000000
      8000400E4D617267696E732E426F74746F6D0500000000000000800040055769
      6474680500000000000000A8034000000005545465787400095374796C654E61
      6D6506047465787405416C69676E0706616C4C65667405436F6C6F720708636C
      615768697465064C6F636B656409064865696768740500000000000000D00340
      0748697454657374080D486F727A54657874416C69676E070974614C65616469
      6E670C4D617267696E732E4C65667405000000000000008002400D4D61726769
      6E732E526967687405000000000000008002400A506F736974696F6E2E580500
      0000000000008404400557696474680500000000000000C80440000005545465
      787400095374796C654E616D65060873686F727463757405416C69676E070761
      6C526967687405436F6C6F720708636C61426C61636B064C6F636B6564090648
      65696768740500000000000000D003400748697454657374080D486F727A5465
      7874416C69676E070974614C656164696E670C4D617267696E732E4C65667405
      00000000000000C002400D4D617267696E732E52696768740500000000000000
      C001400A506F736974696F6E2E580500000000000000C000C005576964746805
      00000000000000C80440000007544C61796F757400095374796C654E616D6506
      077375626D61726B05416C69676E0707616C5269676874064865696768740500
      000000000000D003400A506F736974696F6E2E580500000000000000D4044005
      57696474680500000000000000A00340000554506174680005416C69676E0708
      616C43656E74657209446174612E506174680A34000000040000000000000000
      0000000000000001000000000000000000803F010000000000803F0000003F03
      00000000000000000000000A46696C6C2E436F6C6F720707636C614772617906
      4C6F636B65640906486569676874050000000000000080024007486974546573
      74080B5374726F6B652E4B696E640706626B4E6F6E6505576964746805000000
      00000000E00140000000005450463007544C61796F757400095374796C654E61
      6D6506126D656E75736570617261746F727374796C650D44657369676E566973
      69626C6508064865696768740500000000000000C804400C4D617267696E732E
      4C656674050000000000000080FF3F0B4D617267696E732E546F700500000000
      00000080FF3F0D4D617267696E732E5269676874050000000000000080FF3F0E
      4D617267696E732E426F74746F6D050000000000000080FF3F0A506F73697469
      6F6E2E580500000000000000C607400A506F736974696F6E2E59050000000000
      0000EE07400557696474680500000000000000C804400005544C696E65000541
      6C69676E0705616C546F7006486569676874050000000000000080FF3F084C69
      6E655479706507056C74546F700C4D617267696E732E4C656674050000000000
      0000C000400B4D617267696E732E546F7005000000000000008000400D4D6172
      67696E732E52696768740500000000000000C000400A506F736974696F6E2E58
      0500000000000000C000400A506F736974696F6E2E5905000000000000008000
      400C5374726F6B652E436F6C6F720709636C6153696C76657205576964746805
      00000000000000B00440000000545046300654496D61676500095374796C654E
      616D650611616E69696E64696361746F727374796C650E4D756C746952657342
      69746D61700E0100000D44657369676E56697369626C65080648656967687405
      00000000000000C804400557696474680500000000000000C80440000C544272
      7573684F626A65637400095374796C654E616D65060466696C6C000000545046
      3007544C61796F757400095374796C654E616D65060D74696D65656469747374
      796C650D44657369676E56697369626C65080648656967687405000000000000
      00C804400557696474680500000000000000C80440000B54476C6F7745666665
      63740008536F66746E657373050000000000CDCCCCFC3F09476C6F77436F6C6F
      720709784646464141383030074F7061636974790500000000006666E6FE3F07
      54726967676572060E4973466F63757365643D7472756507456E61626C656408
      00000A5452656374616E676C6500095374796C654E616D65060A6261636B6772
      6F756E6405416C69676E070A616C436F6E74656E74730A46696C6C2E436F6C6F
      720708636C61426C61636B064C6F636B65640906486569676874050000000000
      0000C804400748697454657374080B5374726F6B652E4B696E640706626B4E6F
      6E650557696474680500000000000000C80440000A5452656374616E676C6500
      05416C69676E070A616C436F6E74656E74730946696C6C2E4B696E640706626B
      4E6F6E65064C6F636B656409064865696768740500000000000000C004400748
      697454657374080C4D617267696E732E4C656674050000000000000080FF3F0B
      4D617267696E732E546F70050000000000000080FF3F0D4D617267696E732E52
      69676874050000000000000080FF3F0E4D617267696E732E426F74746F6D0500
      00000000000080FF3F0C5374726F6B652E436F6C6F7207097846463345334533
      450557696474680500000000000000C004400000000B54477269644C61796F75
      740005416C69676E070B616C4D6F737452696768740648656967687405000000
      00000000B804400A4974656D486569676874050000000000000080FFBF094974
      656D576964746805000000000000008005400B4F7269656E746174696F6E070A
      6F72566572746963616C0C4D617267696E732E4C656674050000000000000080
      00400B4D617267696E732E546F7005000000000000008000400D4D617267696E
      732E526967687405000000000000008000400E4D617267696E732E426F74746F
      6D05000000000000008000400A506F736974696F6E2E580500000000000000E0
      03400A506F736974696F6E2E5905000000000000008000400557696474680500
      000000000000A003400007544C61796F75740006486569676874050000000000
      0000B803400557696474680500000000000000A00340000754427574746F6E00
      095374796C654E616D6506087570627574746F6E05416C69676E0708616C436C
      69656E740843616E466F63757308064865696768740500000000000000B80340
      0B5374796C654C6F6F6B757006127363726F6C6C626172746F70627574746F6E
      085461624F7264657202000557696474680500000000000000A0034000000007
      544C61796F757400064865696768740500000000000000B803400A506F736974
      696F6E2E590500000000000000B803400557696474680500000000000000A003
      40000754427574746F6E00095374796C654E616D65060A646F776E627574746F
      6E05416C69676E0708616C436C69656E740843616E466F637573080648656967
      68740500000000000000B803400B5374796C654C6F6F6B757006157363726F6C
      6C626172626F74746F6D627574746F6E085461624F7264657202000557696474
      680500000000000000A003400000000010545374796C65546578744F626A6563
      7400095374796C654E616D6506045465787405416C69676E0708616C436C6965
      6E7405436F6C6F720709784646454145414541064C6F636B6564090648656967
      68740500000000000000B804400C4D617267696E732E4C656674050000000000
      00008000400B4D617267696E732E546F7005000000000000008000400D4D6172
      67696E732E526967687405000000000000008000400E4D617267696E732E426F
      74746F6D05000000000000008000400557696474680500000000000000B00340
      0C536861646F772E436F6C6F720707636C614E756C6C0D536861646F77566973
      69626C650800000C5442727573684F626A65637400095374796C654E616D6506
      0973656C656374696F6E0B42727573682E436F6C6F7207097837304635413430
      4100000954436865636B426F7800095374796C654E616D650605636865636B05
      416C69676E070A616C4D6F73744C6566740843616E466F637573081244697361
      626C65466F637573456666656374090648656967687405000000000000009803
      400C4D617267696E732E4C6566740500000000000000800040085461624F7264
      657202030756697369626C65080557696474680500000000000000A003400000
      00545046300B54477269644C61796F757400095374796C654E616D65060E7370
      696E65646974627574746F6E0D44657369676E56697369626C65080648656967
      68740500000000000000C804400A4974656D4865696768740500000000000000
      80FFBF094974656D576964746805000000000000008005400B4F7269656E7461
      74696F6E070A6F72566572746963616C0557696474680500000000000000C804
      400007544C61796F757400064865696768740500000000000000C80340055769
      6474680500000000000000C80440000754427574746F6E00095374796C654E61
      6D6506087570627574746F6E05416C69676E0708616C436C69656E740843616E
      466F63757308064865696768740500000000000000C803400B5374796C654C6F
      6F6B757006127363726F6C6C626172746F70627574746F6E085461624F726465
      7202000557696474680500000000000000C8044000000007544C61796F757400
      064865696768740500000000000000C803400A506F736974696F6E2E59050000
      0000000000C803400557696474680500000000000000C8044000075442757474
      6F6E00095374796C654E616D65060A646F776E627574746F6E05416C69676E07
      08616C436C69656E740843616E466F6375730806486569676874050000000000
      0000C803400B5374796C654C6F6F6B757006157363726F6C6C626172626F7474
      6F6D627574746F6E085461624F72646572020005576964746805000000000000
      00C8044000000000}
  end
  inherited srcPesquisa: TDataSource
    Left = 48
  end
  inherited BindingsList1: TBindingsList
    inherited LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Columns = <
        item
          MemberName = 'Codigo'
        end
        item
          MemberName = 'NomePaciente'
          Header = 'Nome'
          Width = 500
        end>
    end
  end
  inherited BindSourceDB1: TBindSourceDB
    Top = 208
  end
end
