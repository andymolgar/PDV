unit ACPDV.View.Page.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, ACPDV.View.Componente.Transparencia, ACPDV.Utils;

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
    procedure FormShow(Sender: TObject);
  private
    FFundo : TpageTransparencia;
    FProc : TProc<string>;
  public
  	class function New(AOWner : TComponent) : TpageLogin;
    function Embed(Value : TPanel) : TpageLogin;
    function Alinhamento(Value : TAlign) : TpageLogin;
    function Informacao(Value : TProc<string>) : TpageLogin;

  end;

implementation

{$R *.dfm}

function TpageLogin.Alinhamento(Value: TAlign): TpageLogin;
begin
	Result := Self;
  Self.Align := Value;
end;

procedure TpageLogin.btnLogarClick(Sender: TObject);
begin
  if not ( (edtUsuario.Text = 'Anderson') and (edtSenha.Text = '123') ) then
  begin
    ShowMessage('Login e senha inválido');
    Exit;
  end;
  FProc(edtUsuario.Text);
  Self.RemoveObject;

end;


procedure TpageLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnLogarClick(Sender);
end;

function TpageLogin.Embed(Value: TPanel): TpageLogin;
begin
	Result := Self;
  Self.AddObject(Value);
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

procedure TpageLogin.FormShow(Sender: TObject);
begin
  edtUsuario.SetFocus;
end;

function TpageLogin.Informacao(Value: TProc<string>): TpageLogin;
begin
	Result := Self;
  FProc := Value;
end;

class function TpageLogin.New(AOWner: TComponent): TpageLogin;
begin
	Result := Self.Create(AOWner);
end;

end.
