unit ACPDV.Model.Dados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmDados = class(TDataModule)
    cdsItens: TClientDataSet;
    cdsItenscodigo: TStringField;
    cdsItensdescricao: TStringField;
    cdsItensvalorunitario: TCurrencyField;
    cdsItensid: TIntegerField;
    cdsItensunidade: TStringField;
    cdsItensestoque: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
  cdsItens.Append;
  cdsItensid.AsInteger  := 1;
  cdsItenscodigo.AsString := '0006';
  cdsItensdescricao.AsString := 'COXA E SOBRE COXA SADIA BIO BD 1KG';
  cdsItensvalorunitario.AsCurrency := 16.50;
  cdsItensunidade.AsString := 'KG';
  cdsItensestoque.AsFloat := 5;
  cdsItens.Post;

  cdsItens.Append;
  cdsItensid.AsInteger  := 2;
  cdsItenscodigo.AsString := '0008';
  cdsItensdescricao.AsString := 'HOT POCKET SADIA X BURGUER MAIONESE GRILL 145G';
  cdsItensvalorunitario.AsCurrency := 5.60;
  cdsItensunidade.AsString := 'KG';
  cdsItensestoque.AsFloat := 5;
  cdsItens.Post;

  cdsItens.Append;
  cdsItensid.AsInteger := 3;
  cdsItenscodigo.AsString := '0003';
  cdsItensdescricao.AsString := 'STEAK DE FRANGO SADIA 100G';
  cdsItensvalorunitario.AsCurrency := 2.50;
  cdsItensunidade.AsString := 'KG';
  cdsItensestoque.AsFloat := 5;
  cdsItens.Post;


  cdsItens.Open;
end;

end.
