program Imovel;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FormPrincipal},
  ClientesDAO in '..\Dao\ClientesDAO.pas',
  GenericDAO in '..\Dao\GenericDAO.pas',
  Controller in '..\Controller\Controller.pas',
  ControllerCaixaMovimentacao in '..\Controller\ControllerCaixaMovimentacao.pas',
  ControllerClientes in '..\Controller\ControllerClientes.pas',
  ControllerFormaPagamento in '..\Controller\ControllerFormaPagamento.pas',
  ControllerFornecedores in '..\Controller\ControllerFornecedores.pas',
  ControllerFuncionarios in '..\Controller\ControllerFuncionarios.pas',
  ControllerPagamento in '..\Controller\ControllerPagamento.pas',
  ControllerPermissoes in '..\Controller\ControllerPermissoes.pas',
  ControllerRecebimento in '..\Controller\ControllerRecebimento.pas',
  ControllerTabelas in '..\Controller\ControllerTabelas.pas',
  Caixa in '..\Modelos\Caixa.pas',
  CaixaMovimentacao in '..\Modelos\CaixaMovimentacao.pas',
  Categoria in '..\Modelos\Categoria.pas',
  ClassificacaoCliente in '..\Modelos\ClassificacaoCliente.pas',
  Contatos in '..\Modelos\Contatos.pas',
  Empresa in '..\Modelos\Empresa.pas',
  FormaPagamento in '..\Modelos\FormaPagamento.pas',
  Fornecedores in '..\Modelos\Fornecedores.pas',
  FuncionarioComissao in '..\Modelos\FuncionarioComissao.pas',
  Funcionarios in '..\Modelos\Funcionarios.pas',
  GenericEntidade in '..\Modelos\GenericEntidade.pas',
  Log in '..\Modelos\Log.pas',
  Modulo in '..\Modelos\Modulo.pas',
  Pagamentos in '..\Modelos\Pagamentos.pas',
  Pessoa in '..\Modelos\Pessoa.pas',
  Recebimentos in '..\Modelos\Recebimentos.pas',
  CAtribEntity in '..\Persistencia\CAtribEntity.pas',
  Mapper in '..\Persistencia\Mapper.pas',
  CategoriasDetalhes in '..\Views\Tabelas\CategoriasDetalhes.pas',
  ClassificacaoDetalhes in '..\Views\Tabelas\ClassificacaoDetalhes.pas',
  FormaPagamentoDetalhes in '..\Views\Tabelas\FormaPagamentoDetalhes.pas',
  Baixar in '..\Baixar.pas' {FormBaixar},
  Constantes in '..\Constantes.pas',
  DBUtils in '..\DBUtils.pas',
  DialogsUtils in '..\DialogsUtils.pas',
  FiltroPeriodo in '..\FiltroPeriodo.pas' {Form1},
  LoginAcesso in '..\LoginAcesso.pas' {FormLoginAcesso},
  Parcelar in '..\Parcelar.pas' {FormParcelar},
  TemplateComboEditDialog in '..\TemplateComboEditDialog.pas' {TemplateFormComboboEditDialog},
  TemplateDetalhesBase in '..\TemplateDetalhesBase.pas' {TemplateFormBaseDetalhes},
  TemplateDetalhesComTab in '..\TemplateDetalhesComTab.pas' {TemplateFormComTabDetalhes},
  TemplateDetalhesComTabGrid in '..\TemplateDetalhesComTabGrid.pas' {TemplateFormComTabGridDetalhes},
  TemplateListagemBase in '..\TemplateListagemBase.pas' {TemplateFormListagemBase},
  UtilsNumeros in '..\UtilsNumeros.pas',
  UtilsString in '..\UtilsString.pas',
  RecebimentosDetalhes in '..\Views\Recebimentos\RecebimentosDetalhes.pas' {FormRecebimentoDetalhes},
  RelRecebimento in '..\Views\Recebimentos\RelRecebimento.pas' {FormRelRecebimento},
  PagamentoDetalhes in '..\Views\Pagamentos\PagamentoDetalhes.pas' {FormPagamentoDetalhes},
  Relpagamento in '..\Views\Pagamentos\Relpagamento.pas' {FormRelPagamento},
  EmpresaDetalhes in '..\Views\Empresa\EmpresaDetalhes.pas' {FormEmpresaDetalhes},
  ClientesDetalhes in '..\Views\Clientes\ClientesDetalhes.pas' {FormClientesDetalhes},
  FornecedoresDetalhes in '..\Views\Fornecedores\FornecedoresDetalhes.pas' {FormFornecedoresDetalhes},
  FuncionariosDetalhes in '..\Views\Funcionarios\FuncionariosDetalhes.pas' {FormFuncionariosDetalhes},
  PermissoesAcessos in '..\Views\Permissoes\PermissoesAcessos.pas' {FormPermissoes},
  CaixaDetalhes in '..\Views\Caixa\CaixaDetalhes.pas' {FormCaixaDetalhes},
  CaixaFinanceiroDetalhes in '..\Views\Caixa\CaixaFinanceiroDetalhes.pas' {FormCaixaFinanceiroDetalhes},
  FiltroFluxoCaixa in '..\Views\Caixa\FiltroFluxoCaixa.pas' {FormFiltroFluxoCaixa},
  RelFluxoCaixa in '..\Views\Caixa\RelFluxoCaixa.pas' {FormRelFluxoCaixa},
  RelMovimentacaoCaixaFinanceiro in '..\Views\Caixa\RelMovimentacaoCaixaFinanceiro.pas' {FormRelMovimentacaoCaixaFinanceiro},
  srvModBaseDados in 'Conexao\srvModBaseDados.pas' {DSServerModuleBaseDados: TDataModule},
  EntidadeFactory in 'Factory\EntidadeFactory.pas',
  Boleto in '..\Views\Boleto\Boleto.pas' {FormBoleto},
  LogListagem in '..\Views\Log\LogListagem.pas' {FormLogListagem},
  ImovelDetalhes in 'Views\Imovel\ImovelDetalhes.pas' {FormImoveisDetalhes},
  Imovel in 'Modelos\Imovel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDSServerModuleBaseDados, DSServerModuleBaseDados);
  Application.CreateForm(TFormLogListagem, FormLogListagem);
  Application.CreateForm(TFormImoveisDetalhes, FormImoveisDetalhes);
  Application.Run;
end.