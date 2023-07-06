unit ACPDV.Model.Enum;

interface

uses
  System.SysUtils,
  System.TypInfo;

type
  TTipoPagamento = (DINHEIRO, CARTAO_DEBITO, CARTAO_CREDITO, PIX);

  TTipoPagamentoHelper = record Helper for TTipoPagamento
    function ToString : string;
    function ToEnum(Value : string) : TTipoPagamento;
  end;

implementation

{ TTipoPagamentoHelper }

function TTipoPagamentoHelper.ToEnum(Value: string): TTipoPagamento;
begin
  Result := TTipoPagamento(GetEnumValue(TypeInfo(TTipoPagamento), StringReplace(Value, ' ', '_', [rfReplaceAll, rfIgnoreCase])));
end;

function TTipoPagamentoHelper.ToString: string;
begin
  Result := StringReplace(GetEnumName(TypeInfo(TTipoPagamento), Integer(Self)), '_', ' ', [rfReplaceAll, rfIgnoreCase]);
end;

end.
