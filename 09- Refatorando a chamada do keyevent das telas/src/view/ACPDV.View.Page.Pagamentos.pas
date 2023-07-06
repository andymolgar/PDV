unit ACPDV.View.Page.Pagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, ACPDV.View.Page.Pix, ACPDV.View.Page.Dinheiro,
  ACPDV.View.Page.Cartao;

type
  TpagePagamentos = class(TForm)
    pnlContainer: TPanel;
    pnlInformacoes: TPanel;
    pnlformasPagamento: TPanel;
    pnlInformarCpf: TPanel;
    pnlInfoVenda: TPanel;
    pnlCancelarRetornar: TPanel;
    pnlEdit: TPanel;
    imgEdit: TImage;
    lblEdit: TLabel;
    pnlTotalVenda: TPanel;
    lblTitleTotalVenda: TLabel;
    lblTotalVenda: TLabel;
    pnlDesconto: TPanel;
    lblTitleDesconto: TLabel;
    edtDesconto: TEdit;
    pnlAcrescimo: TPanel;
    lblTitleAcrescimo: TLabel;
    edtAcrescimo: TEdit;
    pnlTotalReceber: TPanel;
    lblTitleTotalReceber: TLabel;
    lblTotalReceber: TLabel;
    shpLineSeparator: TShape;
    pnlTotalRecebido: TPanel;
    lblTitleTotalRecebido: TLabel;
    edtRecebido: TEdit;
    pnlSaldoRestante: TPanel;
    lblTitleSaldoRestante: TLabel;
    lblSaldoRestante: TLabel;
    pnlTroco: TPanel;
    lblTitleTroco: TLabel;
    lblTroco: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    shp1: TShape;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    pnlListaPagamentos: TPanel;
    pnlCartao: TPanel;
    shapeCartao: TShape;
    pnlContainerCartao: TPanel;
    pnlTitleCartao: TPanel;
    pnlImgCartao: TPanel;
    imgCartao: TImage;
    pnlPix: TPanel;
    shpPix: TShape;
    pnlContainerPix: TPanel;
    pnlTitlePix: TPanel;
    pnl8: TPanel;
    imgPix: TImage;
    pnlDinheiro: TPanel;
    shpDinheiro: TShape;
    pnlContainerDinheiro: TPanel;
    pnlTitleDinheiro: TPanel;
    pnl9: TPanel;
    imgDinheiro: TImage;
    pnlContainerPg: TPanel;
    Panel1: TPanel;
    Shape1: TShape;
    procedure pnlTitleCartaoClick(Sender: TObject);
    procedure imgPixClick(Sender: TObject);
    procedure imgDinheiroClick(Sender: TObject);
  private
    procedure SetClick(Shape : TShape; Panel : TPanel);
  public
    { Public declarations }
  end;

var
  pagePagamentos: TpagePagamentos;

implementation

{$R *.dfm}

procedure TpagePagamentos.imgDinheiroClick(Sender: TObject);
var
  lFrame : TFrameDinheiro;
begin
  lFrame := TframeDinheiro.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnlContainerPg;
  lFrame.edtValorRecebido.SetFocus;

  SetClick(shpDinheiro, pnlListaPagamentos);
end;

procedure TpagePagamentos.imgPixClick(Sender: TObject);
var
  lFrame : TframePix;
begin
  lFrame := TframePix.Create(nil);
  lFrame.Align := alClient;
  lFrame.Parent := pnlContainerPg;

  SetClick(shpPix, pnlListaPagamentos);
end;

procedure TpagePagamentos.pnlTitleCartaoClick(Sender: TObject);
begin
  TframeCartao.New(Self)
    .Alinhamento(alClient)
    .Embed(pnlContainerPg);

  SetClick(shapeCartao, pnlListaPagamentos);
end;

procedure TpagePagamentos.SetClick(Shape: TShape; Panel: TPanel);
begin
  shapeCartao.Pen.Style := psClear;
  shpPix.Pen.Style      := psClear;
  shpDinheiro.Pen.Style := psClear;
  shapeCartao.Pen.Color := clWhite;
  shpPix.Pen.Color := clWhite;
  shpDinheiro.Pen.Color := clWhite;

  Shape.Pen.Style := psSolid;
  Shape.Pen.Color := $0014B4E1;

  Panel.Visible := False;
  Panel.Visible := True;
end;

end.
