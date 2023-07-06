unit ACPDV.View.Page.Dinheiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TframeDinheiro = class(TFrame)
    pnlContainer: TPanel;
    pnlRecebido: TPanel;
    lbl1: TLabel;
    edtValorRecebido: TEdit;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function New(AOWner : TComponent) : TframeDinheiro;
    function Alinhamento(Value : TAlign) : TframeDinheiro;
    function Embed(Value : TWinControl) : TframeDinheiro;
  end;

implementation

{$R *.dfm}

function TframeDinheiro.Alinhamento(Value: TAlign): TframeDinheiro;
begin
  Result := Self;
  Self.Align := Value;
end;

function TframeDinheiro.Embed(Value: TWinControl): TframeDinheiro;
begin
  Result := Self;
  Self.Parent := Value;
end;

procedure TframeDinheiro.FrameResize(Sender: TObject);
begin
  pnlRecebido.Top := Round((pnlContainer.Height - pnlRecebido.Height) / 2);
  pnlRecebido.Left := Round((pnlContainer.Width - pnlRecebido.Width) / 2);
end;

class function TframeDinheiro.New(AOWner: TComponent): TframeDinheiro;
begin
  Result := Self.Create(AOWner);
end;

end.
