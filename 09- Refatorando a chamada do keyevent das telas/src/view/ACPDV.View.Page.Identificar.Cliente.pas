unit ACPDV.View.Page.Identificar.Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, ACPDV.Utils;

type
  TpageIdentificarCliente = class(TForm)
    pnlContainer: TPanel;
    pnlTop: TPanel;
    shpLine: TShape;
    pnlCpfCnpj: TPanel;
    lblCpfCnpj: TLabel;
    shp1: TShape;
    edtCpfCnpj: TEdit;
    pnlNomeCliente: TPanel;
    lblNomeCliente: TLabel;
    shpNomeCliente: TShape;
    edtNome: TEdit;
    pnlbotoes: TPanel;
    pnlDebito: TPanel;
    shapeDebito: TShape;
    pnlContainerDebito: TPanel;
    pnlTitlePesquisar: TPanel;
    pnlImgPesquisar: TPanel;
    imgPesquisar: TImage;
    pnlConfirmar: TPanel;
    shpConfirmar: TShape;
    pnl1: TPanel;
    pnlTitleConfirmar: TPanel;
    pnlImgConfirmar: TPanel;
    imgConfirmar: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure pnlImgConfirmarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FProc : TProc<string, string>;
  public
    { Public declarations }
    class function New(AOwner : TComponent) : TpageIdentificarCliente;
    function Embed(Value : TPanel) : TpageIdentificarCliente;
    function IdentificarCPF: TpageIdentificarCliente;
    function IdentificaCliente(Value : TProc<string, string>) :  TpageIdentificarCliente;
  end;

var
  pageIdentificarCliente: TpageIdentificarCliente;

implementation

{$R *.dfm}

function TpageIdentificarCliente.Embed(
  Value: TPanel): TpageIdentificarCliente;
begin
  Result := Self;
  Self.AddObject(Value);
end;

procedure TpageIdentificarCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F2:     ShowMessage('Pesquisa Cliente, PageIdentificarCliente');
    VK_F5:     pnlImgConfirmarClick(Sender);
    VK_ESCAPE:
    begin
      Self.RemoveObject;
      //Self.DisposeOf;
    end;

  end;
end;

procedure TpageIdentificarCliente.FormResize(Sender: TObject);
var
  lHeigth, lWidth : Integer;
begin
  lHeigth := Round((Self.Height - pnlContainer.Height) / 2);
  lWidth  := Round((Self.Width  - pnlContainer.Width) / 2);

  pnlContainer.Margins.Left   := lWidth;
  pnlContainer.Margins.Right  := lWidth;
  pnlContainer.Margins.Top    := lHeigth;
  pnlContainer.Margins.Bottom := lHeigth;

  pnlContainer.Align := alClient;
end;

procedure TpageIdentificarCliente.FormShow(Sender: TObject);
begin
  edtCpfCnpj.SetFocus;
end;

function TpageIdentificarCliente.IdentificaCliente(
  Value: TProc<string, string>): TpageIdentificarCliente;
begin
  Result := Self;
  FProc := Value;
end;

function TpageIdentificarCliente.IdentificarCPF: TpageIdentificarCliente;
begin
  Result := Self;
  pnlNomeCliente.Visible := False;
  pnlContainer.Height := (pnlContainer.Height - pnlNomeCliente.Height);
end;

class function TpageIdentificarCliente.New(
  AOwner: TComponent): TpageIdentificarCliente;
begin
  Result := Self.Create(AOwner);
end;

procedure TpageIdentificarCliente.pnlImgConfirmarClick(Sender: TObject);
begin
  if Assigned(FProc) then
    FProc(edtCpfCnpj.Text, edtNome.Text);


  Self.RemoveObject;
end;

end.
