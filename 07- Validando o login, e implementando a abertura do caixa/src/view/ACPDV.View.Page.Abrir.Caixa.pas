unit ACPDV.View.Page.Abrir.Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  ACPDV.Model.Caixa;

type
  TpageAbrirCaixa = class(TForm)
    pnlContainer: TPanel;
    pnlTitulo: TPanel;
    pnl1: TPanel;
    pnlPrincipal: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    shp1: TShape;
    edtValorSuprimento: TEdit;
    shp2: TShape;
    btnAbrirCaixa: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAbrirCaixaClick(Sender: TObject);
  private
    FProc : TProc<TCaixa>;
    procedure Responsive;

  public
    { Public declarations }
    class function New(AOwner : TComponent) : TpageAbrirCaixa;
    function Embed(Value : TWinControl) : TpageAbrirCaixa;
    function Alinhamento(Value : TAlign) : TpageAbrirCaixa;
    function Informacoes(Value : TProc<TCaixa>) : TpageAbrirCaixa;
  end;



implementation

{$R *.dfm}

{ TForm1 }

function TpageAbrirCaixa.Alinhamento(Value: TAlign): TpageAbrirCaixa;
begin
  Result := Self;
  Self.Align := Value;
end;

procedure TpageAbrirCaixa.btnAbrirCaixaClick(Sender: TObject);
var
	lCaixa : TCaixa;
  lTurno : TTurno;
  LData  : TDateTime;
begin
	LData := Now;
  lCaixa := TCaixa.New;

  try
  	lCaixa.Id := 1;
    lCaixa.Caixa := 1;
    lCaixa.Turno := lTurno.RetornaTurno(LData);
    lCaixa.Aberto := True;
    lCaixa.DataHoraAbertura := LData;
    lCaixa.SaldoInicial := StrToCurr(StringReplace(edtValorSuprimento.Text, 'R$ ', '', [rfReplaceAll, rfIgnoreCase]));

    FProc(lCaixa);
  finally
    lCaixa.DisposeOf;
    Self.Close;
  end;
end;

function TpageAbrirCaixa.Embed(Value: TWinControl): TpageAbrirCaixa;
begin
  Result := Self;
  Self.Parent := Value;
end;

procedure TpageAbrirCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Self.Close;

end;

procedure TpageAbrirCaixa.FormResize(Sender: TObject);
begin
  Responsive;
end;

procedure TpageAbrirCaixa.FormShow(Sender: TObject);
begin
  Responsive;
end;

function TpageAbrirCaixa.Informacoes(Value: TProc<TCaixa>): TpageAbrirCaixa;
begin
	Result := Self;
  FProc := Value;
end;

class function TpageAbrirCaixa.New(AOwner: TComponent): TpageAbrirCaixa;
begin
  Result := Self.Create(AOwner);
end;

procedure TpageAbrirCaixa.Responsive;
begin
  pnlContainer.Top := Round((Self.Height - pnlContainer.Height) / 2);
  pnlContainer.Left := Round((Self.Width - pnlContainer.Width) / 2);

end;

end.
