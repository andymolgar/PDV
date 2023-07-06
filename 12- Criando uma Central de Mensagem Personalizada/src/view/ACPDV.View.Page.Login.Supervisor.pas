unit ACPDV.View.Page.Login.Supervisor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, ACPDV.Utils;

type
  TpagePermissaoSupervisor = class(TForm)
    pnlContainer: TPanel;
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
    btnPermitir: TSpeedButton;
    Panel2: TPanel;
    Shape1: TShape;
    btnCancelar: TSpeedButton;
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Responsive;
  public
    { Public declarations }
    class function New(AOWner : TComponent):TpagePermissaoSupervisor;
    function Embed(Value : TPanel):TpagePermissaoSupervisor;
    function Alinhamento(Value : TAlign):TpagePermissaoSupervisor;
  end;


implementation

{$R *.dfm}

{ TpageLoginSupervisor }

function TpagePermissaoSupervisor.Alinhamento(
  Value: TAlign): TpagePermissaoSupervisor;
begin
  Result := Self;
  Self.Align := Value;
end;

function TpagePermissaoSupervisor.Embed(
  Value: TPanel): TpagePermissaoSupervisor;
begin
  Result := Self;
  Self.AddObject(Value);
end;

procedure TpagePermissaoSupervisor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE : Self.RemoveObject;
    VK_F5: Self.RemoveObject;
    VK_F2 : Self.RemoveObject;

  end;
end;

procedure TpagePermissaoSupervisor.FormResize(Sender: TObject);
begin
  Responsive;
end;

procedure TpagePermissaoSupervisor.FormShow(Sender: TObject);
begin
  Responsive;
end;

class function TpagePermissaoSupervisor.New(
  AOWner: TComponent): TpagePermissaoSupervisor;
begin
  Result := Self.Create(AOWner);
end;

procedure TpagePermissaoSupervisor.Responsive;
var
  lHeigth, lWidth: Integer;
begin
  lHeigth := Round((Self.Height - pnlContainer.Height)/2);
  lWidth := Round((Self.Width - pnlContainer.Width)/2);

  pnlContainer.Margins.Left := lWidth;
  pnlContainer.Margins.Right := lWidth;
  pnlContainer.Margins.Top := lHeigth;
  pnlContainer.Margins.Bottom := lHeigth;

  pnlContainer.Align := alClient;
end;

end.
