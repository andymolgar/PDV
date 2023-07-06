unit ACPDV.View.Page.Importar.Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Imaging.pngimage, ACPDV.Utils;

type
  TpageImportarCliente = class(TForm)
    pnlContainer: TPanel;
    pnlTop: TPanel;
    pnlInfo: TPanel;
    pnlSair: TPanel;
    img1: TImage;
    btnSair: TSpeedButton;
    pnlTitulo: TPanel;
    imgCliente: TImage;
    pnl1: TPanel;
    pnl2: TPanel;
    dbgrd1: TDBGrid;
    pnl3: TPanel;
    shpBtnPesquisar: TShape;
    btnPesquisar: TSpeedButton;
    shp1: TShape;
    edtPesquisar: TSearchBox;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FProc : TProc<TObject>;
  public
    { Public declarations }
    class function New(AOwner : TComponent) : TpageImportarCliente;
    function Titulo(Value : string) : TpageImportarCliente;
    function Image(Value : string) : TpageImportarCliente;
    function Click(Value : TProc<TObject>) : TpageImportarCliente;
    function Embed(Value : TPanel) : TpageImportarCliente;
    function Alinhamento(Value : TAlign) : TpageImportarCliente;
  end;

var
  pageImportarCliente: TpageImportarCliente;

implementation

{$R *.dfm}

{ TpageImportarCliente }

function TpageImportarCliente.Alinhamento(Value: TAlign): TpageImportarCliente;
begin
  Result := Self;
  Self.Align := Value;
end;

procedure TpageImportarCliente.btnSairClick(Sender: TObject);
begin
  Self.RemoveObject;
end;

function TpageImportarCliente.Click(
  Value: TProc<TObject>): TpageImportarCliente;
begin
  Result := Self;
  FProc := Value;
end;

function TpageImportarCliente.Embed(Value: TPanel): TpageImportarCliente;
begin
  Result := Self;
  Self.AddObject(Value);
end;

procedure TpageImportarCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Self.RemoveObject;
    //Self.DisposeOf;
  end;
end;

function TpageImportarCliente.Image(Value: string): TpageImportarCliente;
begin
  Result := Self;
  imgCliente.Picture.LoadFromFile(Value);
end;

class function TpageImportarCliente.New(
  AOwner: TComponent): TpageImportarCliente;
begin
  Result := Self.Create(AOwner);
end;

function TpageImportarCliente.Titulo(Value: string): TpageImportarCliente;
begin
  Result := Self;
  pnlTitulo.Caption := Value;
end;

end.
