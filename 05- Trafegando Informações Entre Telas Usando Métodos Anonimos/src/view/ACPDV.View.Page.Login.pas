unit ACPDV.View.Page.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, ACPDV.View.Componente.Transparencia;

type
  TpageLogin = class(TForm)
    pnlContainer: TPanel;
    pnlLogin: TPanel;
    pnlImage: TPanel;
    pnlLogar: TPanel;
    pnlTitleLogin: TPanel;
    pnlUsuario: TPanel;
    lbl1: TLabel;
    shpUsuario: TShape;
    edtUsuario: TEdit;
    pnlSenha: TPanel;
    lbl11: TLabel;
    shpSenha: TShape;
    edtSenha: TEdit;
    pnlContainerBotao: TPanel;
    pnlBotaoLogar: TPanel;
    shpBotaoLogar: TShape;
    btnLogar: TSpeedButton;
    Image: TImage;
    procedure btnLogarClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FFundo : TpageTransparencia;
  public

  end;

var
  pageLogin: TpageLogin;

implementation

{$R *.dfm}

procedure TpageLogin.btnLogarClick(Sender: TObject);
begin
  if not ( (edtUsuario.Text = 'Anderson') and (edtSenha.Text = '123') ) then
  begin
    ShowMessage('Login e senha inválido');
    Exit;
  end;

  Close;

end;


procedure TpageLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnLogarClick(Sender);
end;

procedure TpageLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FFundo.Free;
end;

procedure TpageLogin.FormCreate(Sender: TObject);
begin
  FFundo := TpageTransparencia.Create(nil);
  FFundo.Align := alClient;
  FFundo.Parent := pnlImage;
  FFundo.Show;
end;

end.
