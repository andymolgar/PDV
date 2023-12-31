unit acpdv.utils.keyevent;

interface

uses
  System.Classes,
  Vcl.Controls,
  ACPDV.View.Page.Abrir.Caixa,
  Vcl.ExtCtrls,
  System.SysUtils,
  Winapi.Windows,
  acpdv.model.caixa,
  Vcl.Forms;

type
  TRouter = class
  private
    FParent: TComponent;
    FKeyEvent: TKeyEvent;
    FPanel: TPanel;
    FProc: TProc<TObject>;
    FCaixa: TCaixa;
  public
    constructor Create(Parent: TComponent);
    destructor Destroy; override;
    class function New(Parent: TComponent): TRouter;
    function Embed(Value: TPanel): TRouter;
    function Execute(var Value: Word): TRouter;
    function keyevent(Value: TKeyEvent): TRouter;
    procedure KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  end;

implementation

{ TRouter }

constructor TRouter.Create(Parent: TComponent);
begin
  FParent := Parent;
end;

destructor TRouter.Destroy;
begin

  inherited;
end;

function TRouter.Embed(Value: TPanel): TRouter;
begin
  Result := Self;
  FPanel := Value;
end;

function TRouter.Execute(var Value: Word): TRouter;
var
  I: Integer;
begin
  Result := Self;

  for I := Pred(FPanel.ControlCount) downto 0 do
  begin
    if ((FPanel.Controls[I] is TForm) and (TForm(FPanel.Controls[I]).ModalResult = mrOk))then
    begin
      if ((TForm(FPanel.Controls[I]).KeyPreview) and (Assigned(FKeyEvent))) then
        //
    end;
  end;

  case Value of
    VK_F2:
      FKeyEvent := TPageAbrirCaixa.New(FParent).Embed(FPanel).Informacoes(
        procedure(Value: TCaixa)
        begin
          FCaixa.Id := Value.Id;
          FCaixa.caixa := Value.caixa;
          FCaixa.Turno := Value.Turno;
          FCaixa.Aberto := Value.Aberto;
          FCaixa.DataHoraAbertura := Value.DataHoraAbertura;
          FCaixa.SaldoInicial := Value.SaldoInicial;
        end).OnKeyDown;
  end;
end;

procedure TRouter.KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  FKeyEvent(Sender, Key, Shift);
end;

function TRouter.keyevent(Value: TKeyEvent): TRouter;
begin
  Result := Self;
  FKeyEvent := Value;
end;

class function TRouter.New(Parent: TComponent): TRouter;
begin
  Result := Self.Create(Parent);
end;

end.
