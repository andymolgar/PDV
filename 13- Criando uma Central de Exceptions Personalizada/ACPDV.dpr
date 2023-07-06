program ACPDV;

{$R *.dres}

uses
  Vcl.Forms,
  ACPDV.View.Principal in 'src\view\ACPDV.View.Principal.pas' {pagePrincipal},
  ACPDV.View.Page.Login in 'src\view\ACPDV.View.Page.Login.pas' {pageLogin},
  ACPDV.View.Componente.Transparencia in 'src\view\componente\ACPDV.View.Componente.Transparencia.pas' {pageTransparencia},
  ACPDV.Model.Dados in 'src\model\ACPDV.Model.Dados.pas' {dmDados: TDataModule},
  ACPDV.View.Page.Pix in 'src\view\ACPDV.View.Page.Pix.pas' {framePix: TFrame},
  ACPDV.View.Page.Dinheiro in 'src\view\ACPDV.View.Page.Dinheiro.pas' {frameDinheiro: TFrame},
  ACPDV.View.Page.Cartao in 'src\view\ACPDV.View.Page.Cartao.pas' {frameCartao: TFrame},
  ACPDV.View.Page.Identificar.Cliente in 'src\view\ACPDV.View.Page.Identificar.Cliente.pas' {pageIdentificarCliente},
  ACPDV.View.Page.Importar.Cliente in 'src\view\ACPDV.View.Page.Importar.Cliente.pas' {pageImportarCliente},
  ACPDV.View.Page.Abrir.Caixa in 'src\view\ACPDV.View.Page.Abrir.Caixa.pas' {pageAbrirCaixa},
  ACPDV.Model.Caixa in 'src\model\ACPDV.Model.Caixa.pas',
  ACPDV.View.Page.Fechamento.Caixa in 'src\view\ACPDV.View.Page.Fechamento.Caixa.pas' {pageFechamentoCaixa},
  ACPDV.View.Componente.Lista.TiposPgFechamento in 'src\view\componente\ACPDV.View.Componente.Lista.TiposPgFechamento.pas' {ComponenteListaFechamentoCaixa: TFrame},
  ACPDV.Model.FechamentoCaixa in 'src\model\ACPDV.Model.FechamentoCaixa.pas',
  ACPDV.Model.Enum in 'src\model\ACPDV.Model.Enum.pas',
  ACPDV.Utils in 'src\utils\ACPDV.Utils.pas',
  ACPDV.View.Page.Pagamento in 'src\view\ACPDV.View.Page.Pagamento.pas' {pagePagamento},
  ACPDV.View.Page.Login.Supervisor in 'src\view\ACPDV.View.Page.Login.Supervisor.pas' {pagePermissaoSupervisor},
  ACPDV.View.Componente.ListaItem in 'src\view\componente\ACPDV.View.Componente.ListaItem.pas' {componenteListaItem: TFrame},
  ACPDV.View.Componente.Mensagens in 'src\view\componente\ACPDV.View.Componente.Mensagens.pas' {pageMensagem},
  acpdv.utils.forms.impl.forms in 'src\utils\impl\acpdv.utils.forms.impl.forms.pas',
  acpdv.utils.forms.impl.gerenciadorform in 'src\utils\impl\acpdv.utils.forms.impl.gerenciadorform.pas',
  acpdv.utils.forms.impl.resourcesimages in 'src\utils\impl\acpdv.utils.forms.impl.resourcesimages.pas',
  acpdv.panelbordercolor in 'src\utils\acpdv.panelbordercolor.pas',
  acpdv.utils.forms.interfaces in 'src\utils\acpdv.utils.forms.interfaces.pas',
  acpdv.utils.keyevent in 'src\utils\acpdv.utils.keyevent.pas',
  ACPDV.Utils.trataExceptions in 'src\utils\ACPDV.Utils.trataExceptions.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TpagePrincipal, pagePrincipal);
  Application.Run;
end.
