program ACPDV;

uses
  Vcl.Forms,
  ACPDV.View.Principal in 'src\view\ACPDV.View.Principal.pas' {pagePrincipal},
  ACPDV.View.Page.Login in 'src\view\ACPDV.View.Page.Login.pas' {pageLogin},
  ACPDV.View.Componente.Transparencia in 'src\view\componente\ACPDV.View.Componente.Transparencia.pas' {pageTransparencia},
  ACPDV.Model.Dados in 'src\model\ACPDV.Model.Dados.pas' {dmDados: TDataModule},
  ACPDV.View.Page.Pagamentos in 'src\view\ACPDV.View.Page.Pagamentos.pas' {pagePagamentos},
  ACPDV.View.Page.Pix in 'src\view\ACPDV.View.Page.Pix.pas' {framePix: TFrame},
  ACPDV.View.Page.Dinheiro in 'src\view\ACPDV.View.Page.Dinheiro.pas' {frameDinheiro: TFrame},
  ACPDV.View.Page.Cartao in 'src\view\ACPDV.View.Page.Cartao.pas' {frameCartao: TFrame},
  ACPDV.View.Page.Identificar.Cliente in 'src\view\ACPDV.View.Page.Identificar.Cliente.pas' {pageIdentificarCliente},
  ACPDV.View.Page.Importar.Cliente in 'src\view\ACPDV.View.Page.Importar.Cliente.pas' {pageImportarCliente},
  ACPDV.View.Page.Abrir.Caixa in 'src\view\ACPDV.View.Page.Abrir.Caixa.pas' {pageAbrirCaixa},
  ACPDV.Model.Caixa in 'src\model\ACPDV.Model.Caixa.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TpagePrincipal, pagePrincipal);
  Application.CreateForm(TdmDados, dmDados);
  Application.Run;
end.
