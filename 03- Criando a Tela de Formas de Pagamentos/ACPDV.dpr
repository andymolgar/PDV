program ACPDV;

uses
  Vcl.Forms,
  ACPDV.View.Principal in 'src\view\ACPDV.View.Principal.pas' {pagePrincipal},
  ACPDV.View.Page.Login in 'src\view\ACPDV.View.Page.Login.pas' {pageLogin},
  ACPDV.View.Componente.Transparencia in 'src\view\componente\ACPDV.View.Componente.Transparencia.pas' {pageTransparencia},
  ACPDV.Model.Dados in 'src\model\ACPDV.Model.Dados.pas' {dmDados: TDataModule},
  ACPDV.View.Page.Pagamentos in 'src\view\ACPDV.View.Page.Pagamentos.pas' {pagePagamentos},
  ACPDV.View.Page.Pix in 'src\view\ACPDV.View.Page.Pix.pas' {framePix: TFrame};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TpagePrincipal, pagePrincipal);
  Application.Run;
end.
