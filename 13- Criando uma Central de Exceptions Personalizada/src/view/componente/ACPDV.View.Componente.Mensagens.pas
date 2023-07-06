unit ACPDV.View.Componente.Mensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  acpdv.utils.forms.impl.resourcesimages, ACPDV.Utils;

type
  TTipoMensagem = (INFORMACAO, ERRO, ALERTA);

  TpageMensagem = class(TForm)
    pnlContainer: TPanel;
    pnlTitulo: TPanel;
    Image: TImage;
    pnlBotoes: TPanel;
    pnlCancelar: TPanel;
    shapeCancelar: TShape;
    btnCancelar: TSpeedButton;
    pnlConfirmar: TPanel;
    shapeConfirmar: TShape;
    btnConfirmar: TSpeedButton;
    pnlOk: TPanel;
    shapeOk: TShape;
    btnOk: TSpeedButton;
    pnlMensagem: TPanel;
    lblMensagem: TLabel;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    FProc : TProc<TObject>;
    procedure Responsive;
    procedure ModelarMensagem(const aMensagem: string; aTipo : TTipoMensagem);
    procedure TipoMensagem(aTipo : TTipoMensagem);
  public
    { Public declarations }
    class function New(AOWner : TComponent):TpageMensagem;
    function Embed(aParent : TPanel) : TpageMensagem;
    function Mensagem(const aMensagem : string; aTipo : TTipoMensagem):TpageMensagem;
    function ClickOk(Proc : TProc<TObject>):TpageMensagem;
    function ClickConfirmar(Proc : TProc<TObject>):TpageMensagem;
    function ClickCancelar(Proc : TProc<TObject>):TpageMensagem;
  end;

var
  pageMensagem: TpageMensagem;

implementation

{$R *.dfm}

{ TpageMensagem }

procedure TpageMensagem.btnCancelarClick(Sender: TObject);
begin
  Self.RemoveObject;
end;

procedure TpageMensagem.btnConfirmarClick(Sender: TObject);
begin
  if Assigned(FProc) then
    FProc(Sender);

  Self.RemoveObject;
end;

procedure TpageMensagem.btnOkClick(Sender: TObject);
begin
  if Assigned(FProc) then
    FProc(Sender);

  Self.RemoveObject;
end;

function TpageMensagem.ClickCancelar(Proc: TProc<TObject>): TpageMensagem;
begin
  Result := Self;
  FProc := Proc;
end;

function TpageMensagem.ClickConfirmar(Proc: TProc<TObject>): TpageMensagem;
begin
  Result := Self;
  FProc := Proc;
end;

function TpageMensagem.ClickOk(Proc: TProc<TObject>): TpageMensagem;
begin
  Result := Self;
  FProc := Proc;
end;

function TpageMensagem.Embed(aParent: TPanel): TpageMensagem;
begin
  Result := Self;
  Self.AddObject(aParent);
end;

procedure TpageMensagem.FormCreate(Sender: TObject);
begin
  Responsive;
end;

procedure TpageMensagem.FormResize(Sender: TObject);
begin
  Responsive;
end;

function TpageMensagem.Mensagem(const aMensagem: string;
  aTipo: TTipoMensagem): TpageMensagem;
begin
  Result := Self;
  Self.ModelarMensagem(aMensagem, aTipo);
end;

procedure TpageMensagem.ModelarMensagem(const aMensagem: string;
  aTipo: TTipoMensagem);
begin
  Self.lblMensagem.Caption := aMensagem;
  TipoMensagem(aTipo);
end;

class function TpageMensagem.New(AOWner: TComponent): TpageMensagem;
begin
  Result := Self.Create(AOWner);
end;

procedure TpageMensagem.Responsive;
var
  lHeight, lWidth : Integer;
begin
  lHeight := Round((Self.Height - pnlContainer.Height) / 2);
  lWidth := Round((Self.Width - pnlContainer.Width) / 2);

  pnlContainer.Margins.Left := lWidth;
  pnlContainer.Margins.Right := lWidth;
  pnlContainer.Margins.Top := lHeight;
  pnlContainer.Margins.Bottom := lHeight;

  pnlContainer.Align := alClient;

end;

procedure TpageMensagem.TipoMensagem(aTipo: TTipoMensagem);
begin
  case aTipo of
    INFORMACAO:
    begin
      Self.pnlTitulo.Caption := 'Informação';
      Self.pnlCancelar.Visible := True;
      Self.pnlConfirmar.Visible := True;

      Self.btnCancelar.Caption := 'Cancelar';
      Self.btnConfirmar.Caption := 'Confirmar';

      TResourceImage.New.ResourceImage(Image, 'informacao');
    end;
    ERRO:
    begin
      Self.pnlTitulo.Caption := 'Erro';
      Self.pnlOk.Visible := True;

      Self.btnOk.Caption := 'Ok';

      TResourceImage.New.ResourceImage(Image, 'erro');
    end;
    ALERTA:
    begin
      Self.pnlTitulo.Caption := 'Alerta';
      Self.pnlOk.Visible := True;

      Self.btnOk.Caption := 'Ok';

      TResourceImage.New.ResourceImage(Image, 'alerta');
    end;
  end;
end;

end.
