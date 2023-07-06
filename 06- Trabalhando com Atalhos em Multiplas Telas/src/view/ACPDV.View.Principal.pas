unit ACPDV.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  ACPDV.View.Page.Login, ACPDV.Model.Dados, Vcl.WinXCtrls, ACPDV.View.Page.Identificar.Cliente, ACPDV.View.Page.Importar.Cliente, ACPDV.View.Page.Abrir.Caixa;

type
  TpagePrincipal = class(TForm)
    pnlContainer: TPanel;
    pnlTitle: TPanel;
    pnlButton: TPanel;
    pnlMain: TPanel;
    pnlOperacoes: TPanel;
    pnlGrid: TPanel;
    pnlCancelarOperacao: TPanel;
    shpCancelarOperacao: TShape;
    btnCancelarOperacao: TSpeedButton;
    pnlConsultarPreco: TPanel;
    shpConsultarPreco: TShape;
    btnConsultarPreco: TSpeedButton;
    pnlAbrirCaixa: TPanel;
    shpAbrirCaixa: TShape;
    btnAbrirCaixa: TSpeedButton;
    pnlCancelarVenda: TPanel;
    shpCancelarVenda: TShape;
    btnCancelarVenda: TSpeedButton;
    pnlCancelarItem: TPanel;
    shpCancelarItem: TShape;
    btnCancelarItem: TSpeedButton;
    pnlMaisFuncoes: TPanel;
    shpMaisFuncoes: TShape;
    btnMaisFuncoes: TSpeedButton;
    gridProdutos: TDBGrid;
    pnlTotalCompra: TPanel;
    lblTitleTotalCompra: TLabel;
    shpTotalCompra: TShape;
    pnlEdtTotalCompra: TPanel;
    lblTotalCompra: TLabel;
    pnlSubTotal: TPanel;
    lblTitleSubTotal: TLabel;
    pnlEdtSubTotal: TPanel;
    shpSubTotal: TShape;
    lblSubTotal: TLabel;
    pnlQuantidade: TPanel;
    lblTitleQuantidade: TLabel;
    pnlEdtQuantidade: TPanel;
    shpQuantidade: TShape;
    edtQuantidade: TEdit;
    pnlPreco: TPanel;
    lblTitlePreco: TLabel;
    pnlEdtPreco: TPanel;
    shpPreco: TShape;
    lblPreco: TLabel;
    pnlProduto: TPanel;
    lblTitleProduto: TLabel;
    pnlEdtProduto: TPanel;
    shpProduto: TShape;
    edtProduto: TEdit;
    pnlImageProduct: TPanel;
    imgProduto: TImage;
    pnlMaster: TPanel;
    dsItens: TDataSource;
    splitViewFuncoes: TSplitView;
    pnl1: TPanel;
    pnlInformarCpf: TPanel;
    shpLineInformarCpf: TShape;
    pnlNovaVenda: TPanel;
    shpLineNovaVenda: TShape;
    pnlFecharVenda: TPanel;
    shpLineFecharVenda: TShape;
    pnlMultiplicar: TPanel;
    shpLineMultiplicar: TShape;
    pnlDescontoItem: TPanel;
    shpLineDescontoItem: TShape;
    pnlSuprimentoSangria: TPanel;
    shpLineSuprimentoSangria: TShape;
    splitViewPagamentos: TSplitView;
    pnlPag: TPanel;
    pnlImportarCliente: TPanel;
    shpLineInformarCliente: TShape;
    pnlIdentificaCliente: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelarOperacaoClick(Sender: TObject);
    procedure btnConsultarPrecoClick(Sender: TObject);
    procedure btnAbrirCaixaClick(Sender: TObject);
    procedure btnCancelarVendaClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure btnMaisFuncoesClick(Sender: TObject);
  private
    FLogin : TPageLogin;
    FF6 : Integer;
    procedure PreencherCaptionBotoes;
    procedure FixarForm;
    procedure SplitViewAction(Value : TSplitView);

  public
    { Public declarations }
  end;

var
  pagePrincipal: TpagePrincipal;

implementation

uses
  ACPDV.View.Page.Pagamentos;

{$R *.dfm}

procedure TpagePrincipal.btnAbrirCaixaClick(Sender: TObject);
begin
  ShowMessage('Abrir Caixa');
end;

procedure TpagePrincipal.btnCancelarItemClick(Sender: TObject);
begin
  ShowMessage('Cancelar Item');
end;

procedure TpagePrincipal.btnCancelarOperacaoClick(Sender: TObject);
begin
  ShowMessage('Cancelar Opera��o');
end;

procedure TpagePrincipal.btnCancelarVendaClick(Sender: TObject);
begin
  ShowMessage('Cancelar Venda');
end;

procedure TpagePrincipal.btnConsultarPrecoClick(Sender: TObject);
begin
  ShowMessage('Consultar Pre�o');
end;

procedure TpagePrincipal.btnMaisFuncoesClick(Sender: TObject);
begin
  SplitViewAction(splitViewFuncoes);
end;

procedure TpagePrincipal.FixarForm;
begin
  Self.WindowState := wsNormal;
  Self.Position    := poScreenCenter;
  Self.Constraints.MaxHeight := Self.ClientHeight;
  Self.Constraints.MinHeight := Self.ClientHeight;
  Self.Constraints.MaxWidth  := Self.ClientWidth;
  Self.Constraints.MinWidth  := Self.ClientWidth;
end;

procedure TpagePrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FLogin.Free;
end;

procedure TpagePrincipal.FormCreate(Sender: TObject);
begin
  FixarForm;
  PreencherCaptionBotoes;
end;

procedure TpagePrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  lPagamentos : TpagePagamentos;
  lKeyEvent   : TKeyEvent;
  I: Integer;
begin

  for I := Pred(pnlMaster.ControlCount) downto 0 do
  begin
    if (pnlMaster.Controls[i] is TForm) then
    begin
      if not (Shift = [ssCtrl]) then
      begin
        if TForm(pnlMaster.Controls[i]).KeyPreview then
          lKeyEvent := TForm(pnlMaster.Controls[i]).OnKeyDown;


        if Assigned(lKeyEvent) then
          lKeyEvent(Sender, Key, Shift);

        Exit;
      end;

    end;
  end;


  case Key of
    VK_ESCAPE : Self.Close;

    VK_F2:
    begin
      TpageAbrirCaixa.New(Self)
        .Embed(pnlMaster)
        .Show;
    end;

    VK_F4     : ShowMessage('Consultar Pre�o');
    VK_F5     : ShowMessage('Cancelar Item');
    VK_F6     : ShowMessage('Cancelar Venda');



    VK_F7:
    begin
      lPagamentos := TpagePagamentos.Create(nil);

      lPagamentos.Parent := pnlPag;
      lPagamentos.Show;

      SplitViewAction(splitViewPagamentos);

    end;


    VK_F9:
    begin
      TpageIdentificarCliente.New(Self)
        .IdentificarCPF
        .Embed(pnlMaster)
        .IdentificaCliente ( procedure ( aCPF, aCliente : string )
        begin
          if not aCliente.IsEmpty then
            aCliente := 'Cliente: ' + aCliente;

          if not aCPF.IsEmpty then
            aCPF := 'CPF: ' + aCPF;

          if ( (not aCliente.IsEmpty) or (not aCPF.IsEmpty) ) then
          begin
            pnlIdentificaCliente.Visible := True;
            pnlIdentificaCliente.Caption := aCliente + ' ' + aCPF;

          end;

        end )
        .Show;
    end;


    VK_F12    : btnMaisFuncoesClick(Sender);


    VK_F1:
    begin
      TpageImportarCliente.New(Self)
        .Embed(pnlMaster)
        .Alinhamento(alClient)
        .Show;
        

    end;

  end;
end;

procedure TpagePrincipal.FormShow(Sender: TObject);
begin

  FLogin := TpageLogin.Create(nil);

  FLogin.Parent := pnlMaster;
  FLogin.Align  := alClient;
  FLogin.Show;



end;

procedure TpagePrincipal.PreencherCaptionBotoes;
begin
  btnCancelarOperacao.Caption := 'Cancelar Opera��o' + sLineBreak + '(F10)';
  btnConsultarPreco.Caption   := 'Consultar Pre�o' + sLineBreak + '(F4)';
  btnAbrirCaixa.Caption       := 'Abrir Caixa' + sLineBreak + '(F2)';
  btnCancelarVenda.Caption    := 'Cancelar Venda' + sLineBreak + '(F6)';
  btnCancelarItem.Caption     := 'Cancelar Item' + sLineBreak + '(F5)';
  btnMaisFuncoes.Caption      := 'Mais Fun��es' + sLineBreak + '(F12)';
end;

procedure TpagePrincipal.SplitViewAction(Value: TSplitView);
begin
  Value.Opened := not Value.Opened;
end;

end.
