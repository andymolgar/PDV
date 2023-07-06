unit ACPDV.View.Componente.ListaItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TcomponenteListaItem = class(TFrame)
    shpLine: TShape;
    pnlContainer: TPanel;
    pnlItem: TPanel;
    pnlCodigo: TPanel;
    pnlSubTotal: TPanel;
    pnlQuantidade: TPanel;
    pnlValorUnitario: TPanel;
    pnlDescricao: TPanel;
    lblDescricao: TLabel;
  private
    { Private declarations }
    FProc : TProc<TObject>;
    FQuantidade : Double;
    FValorUnitario : Double;
  public
    { Public declarations }
    class function New(AOWner : TComponent) : TcomponenteListaItem;
    function Embed(Value: TWinControl):TcomponenteListaItem;
    function Alinhamento(Value : TAlign):TcomponenteListaItem;
    function Item(Value : Integer):TcomponenteListaItem;
    function Codigo(Value : String):TcomponenteListaItem;
    function Descricao(Value : String):TcomponenteListaItem;
    function Quantidade(Value : Double):TcomponenteListaItem;
    function ValorUnitario(Value : Double):TcomponenteListaItem;
    function Click(Value : TProc<TObject>):TcomponenteListaItem;
    function Nome(Value : String):TcomponenteListaItem;
    function Build :TcomponenteListaItem;
  end;

implementation

{$R *.dfm}

{ TcomponenteListaItem }

function TcomponenteListaItem.Alinhamento(Value: TAlign): TcomponenteListaItem;
begin
  Result := Self;
  Self.Align := alBottom;
  Self.Align := Value;
end;

function TcomponenteListaItem.Build: TcomponenteListaItem;
begin
  Result := Self;
  pnlSubTotal.Caption := FormatCurr('"R$ ",0.00', (FValorUnitario * FQuantidade));
end;

function TcomponenteListaItem.Click(
  Value: TProc<TObject>): TcomponenteListaItem;
begin
  Result := Self;
  FProc := Value;
end;

function TcomponenteListaItem.Codigo(Value: String): TcomponenteListaItem;
begin
  Result := Self;
  pnlCodigo.Caption := Value;
end;

function TcomponenteListaItem.Descricao(Value: String): TcomponenteListaItem;
begin
  Result := Self;

  if Length(Value) > 40 then
    pnlDescricao.Padding.Top := 0;

  lblDescricao.Caption := Value;
end;

function TcomponenteListaItem.Embed(Value: TWinControl): TcomponenteListaItem;
begin
  Result := Self;
  Self.Parent := Value;
end;

function TcomponenteListaItem.Item(Value: Integer): TcomponenteListaItem;
begin
  Result := Self;
  pnlItem.Caption := Value.ToString;
end;

class function TcomponenteListaItem.New(
  AOWner: TComponent): TcomponenteListaItem;
begin
  Result := Self.Create(AOWner);
end;

function TcomponenteListaItem.Nome(Value: String): TcomponenteListaItem;
begin
  Result := Self;
  Self.Name := Value;
end;

function TcomponenteListaItem.Quantidade(Value: Double): TcomponenteListaItem;
begin
  Result := Self;
  FQuantidade := Value;
  pnlQuantidade.Caption := FormatFloat(',0.000',FQuantidade);
end;

function TcomponenteListaItem.ValorUnitario(
  Value: Double): TcomponenteListaItem;
begin
  Result := Self;
  FValorUnitario := Value;
  pnlValorUnitario.Caption := FormatCurr('"R$ ",0.00',FValorUnitario);
end;

end.
