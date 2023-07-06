unit ACPDV.View.Page.Fechamento.Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  ACPDV.Model.Caixa, ACPDV.Model.Enum, ACPDV.View.Componente.Lista.TiposPgFechamento;

type
  TpageFechamentoCaixa = class(TForm)
    pnlContainer: TPanel;
    pnlTitulo: TPanel;
    pnl1: TPanel;
    pnlPrincipal: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    shp1: TShape;
    btn1: TSpeedButton;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    cmbTipoPagamentos: TComboBox;
    edt1: TEdit;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl9: TPanel;
    shp2: TShape;
    shp3: TShape;
    btnCancelar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    pnl10: TPanel;
    ListBox1: TListBox;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    FProc : TProc<TCaixa>;
    FIndex : Integer;
    FLista : TComponenteListaFechamentoCaixa;
    procedure Responsive;
    procedure RemoveItemLista(Sender : TObject);

  public
    { Public declarations }
    class function New(AOwner : TComponent) : TpageFechamentoCaixa;
    function Embed(Value : TWinControl) : TpageFechamentoCaixa;
    function Alinhamento(Value : TAlign) : TpageFechamentoCaixa;
    function Informacoes(Value : TProc<TCaixa>) : TpageFechamentoCaixa;
  end;



implementation

{$R *.dfm}

{ TForm1 }

function TpageFechamentoCaixa.Alinhamento(Value: TAlign): TpageFechamentoCaixa;
begin
  Result := Self;
  Self.Align := Value;
end;

procedure TpageFechamentoCaixa.btn1Click(Sender: TObject);
begin
  Inc(FIndex);
  FLista := TComponenteListaFechamentoCaixa.New(Self)
    .TipoPagamento(cmbTipoPagamentos.Text)
    .Valor(edt1.Text)
    .Embed(ListBox1)
    .Nome('Frame' + FIndex.ToString)
    .Click(RemoveItemLista)
    .Alinhamento(alTop);
end;

procedure TpageFechamentoCaixa.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TpageFechamentoCaixa.btnConfirmarClick(Sender: TObject);
var
  lCaixa : TCaixa;
  lTurno : TTurno;
  lData  : TDateTime;
begin
  lData := Now;
  lCaixa := TCaixa.New;

  try
    lCaixa.Aberto := False;
    lCaixa.DataHoraFechamento := lData;
    FProc(lCaixa);
  finally
    lCaixa.DisposeOf;
    Self.Close;
  end;
end;

function TpageFechamentoCaixa.Embed(Value: TWinControl): TpageFechamentoCaixa;
begin
  Result := Self;
  Self.Parent := Value;
end;

procedure TpageFechamentoCaixa.FormCreate(Sender: TObject);
var
  I : TTipoPagamento;
begin
  Responsive;

  cmbTipoPagamentos.Clear;

  for I := Low(TTipoPagamento) to High(TTipoPagamento) do
    cmbTipoPagamentos.Items.Add(I.ToString);


end;

procedure TpageFechamentoCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Self.Close;

end;

procedure TpageFechamentoCaixa.FormResize(Sender: TObject);
begin
  Responsive;
end;

procedure TpageFechamentoCaixa.FormShow(Sender: TObject);
begin
  Responsive;
end;

function TpageFechamentoCaixa.Informacoes(Value: TProc<TCaixa>): TpageFechamentoCaixa;
begin
	Result := Self;
  FProc := Value;
end;

class function TpageFechamentoCaixa.New(AOwner: TComponent): TpageFechamentoCaixa;
begin
  Result := Self.Create(AOwner);
end;

procedure TpageFechamentoCaixa.RemoveItemLista(Sender: TObject);
begin
  ListBox1.DeleteSelected;
  FLista.DisposeOf;
  Dec(FIndex);
end;

procedure TpageFechamentoCaixa.Responsive;
begin
  pnlContainer.Top := Round((Self.Height - pnlContainer.Height) / 2);
  pnlContainer.Left := Round((Self.Width - pnlContainer.Width) / 2);

end;

end.
