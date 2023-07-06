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
  end;

implementation

{$R *.dfm}

procedure TframeDinheiro.FrameResize(Sender: TObject);
begin
  pnlRecebido.Top := Round((pnlContainer.Height - pnlRecebido.Height) / 2);
  pnlRecebido.Left := Round((pnlContainer.Width - pnlRecebido.Width) / 2);
end;

end.
