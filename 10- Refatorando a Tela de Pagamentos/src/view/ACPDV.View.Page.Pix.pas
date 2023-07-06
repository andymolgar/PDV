unit ACPDV.View.Page.Pix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TframePix = class(TFrame)
    pnlContainer: TPanel;
    img1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
    class function New(AOWner : TComponent) : TframePix;
    function Alinhamento(Value : TAlign) : TframePix;
    function Embed(Value : TWinControl) : TframePix;
  end;

implementation

{$R *.dfm}

{ TframePix }

function TframePix.Alinhamento(Value: TAlign): TframePix;
begin
  Result := Self;
  Self.Align := Value;
end;

function TframePix.Embed(Value: TWinControl): TframePix;
begin
  Result := Self;
  Self.Parent := Value;
end;

class function TframePix.New(AOWner: TComponent): TframePix;
begin
  Result := Self.Create(AOWner);
end;

end.
