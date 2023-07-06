program ACPDV;

uses
  Vcl.Forms,
  ACPDV.View.Principal in 'src\view\ACPDV.View.Principal.pas' {pagePrincipal},
  ACPDV.View.Page.Login in 'src\view\ACPDV.View.Page.Login.pas' {pageLogin},
  ACPDV.View.Componente.Transparencia in 'src\view\componente\ACPDV.View.Componente.Transparencia.pas' {pageTransparencia};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TpagePrincipal, pagePrincipal);
  Application.CreateForm(TpageTransparencia, pageTransparencia);
  Application.Run;
end.
