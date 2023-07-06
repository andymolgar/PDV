unit ACPDV.View.Componente.Lista.TiposPgFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TComponenteListaFechamentoCaixa = class(TFrame)
    shp1: TShape;
    pnlContainer: TPanel;
    pnl1: TPanel;
    btn1: TSpeedButton;
    pnlTipoPagamento: TPanel;
    pnlValor: TPanel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    FProc : TProc<TObject>;
  public
    { Public declarations }
    class function New(AOwner : TComponent) : TComponenteListaFechamentoCaixa;
    function Embed(Value : TWinControl) : TComponenteListaFechamentoCaixa;
    function Nome(Value : string) : TComponenteListaFechamentoCaixa;
    function TipoPagamento(Value : string) : TComponenteListaFechamentoCaixa;
    function Valor(Value : string) : TComponenteListaFechamentoCaixa;
    function Click(Value : TProc<TObject>) : TComponenteListaFechamentoCaixa;
    function Alinhamento(Value : TAlign) : TComponenteListaFechamentoCaixa;
  end;

implementation

{$R *.dfm}

{ TComponenteListaFechamentoCaixa }

function TComponenteListaFechamentoCaixa.Alinhamento(
  Value: TAlign): TComponenteListaFechamentoCaixa;
begin
  Result := Self;
  Self.Align := alBottom;
  Self.Align := Value;
end;

procedure TComponenteListaFechamentoCaixa.btn1Click(Sender: TObject);
begin
  if Assigned(FProc) then
    FProc(Sender);
end;

function TComponenteListaFechamentoCaixa.Click(
  Value: TProc<TObject>): TComponenteListaFechamentoCaixa;
begin
  Result := Self;
  FProc := Value;
end;

function TComponenteListaFechamentoCaixa.Embed(
  Value: TWinControl): TComponenteListaFechamentoCaixa;
begin
  Result := Self;
  Self.Parent := Value;
end;

class function TComponenteListaFechamentoCaixa.New(
  AOwner: TComponent): TComponenteListaFechamentoCaixa;
begin
  Result := Self.Create(AOwner);
end;

function TComponenteListaFechamentoCaixa.Nome(
  Value: string): TComponenteListaFechamentoCaixa;
begin
  Result := Self;
  Self.Name := Value;
end;

function TComponenteListaFechamentoCaixa.TipoPagamento(
  Value: string): TComponenteListaFechamentoCaixa;
begin
  Result := Self;
  pnlTipoPagamento.Caption := Value;
end;

function TComponenteListaFechamentoCaixa.Valor(
  Value: string): TComponenteListaFechamentoCaixa;
begin
  Result := Self;
  pnlValor.Caption := Format('R$ %s', [Value]);
end;

end.
