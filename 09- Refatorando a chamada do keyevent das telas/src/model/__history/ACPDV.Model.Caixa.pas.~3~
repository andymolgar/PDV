unit ACPDV.Model.Caixa;

interface

uses
	System.SysUtils,
  System.TypInfo;

type
  TTurno = (MANHA, TARDE, NOITE);

	TTurnoHelper = record helper for TTurno
		function ToString : string;
    function TEnum(Value : string) : TTurno;
    function RetornaTurno(Value : TDateTime) : TTurno;
  end;



	TCaixa = class
    private
    FId: Integer;
    FCaixa: Integer;
    FTurno: TTurno;
    FOperador: string;
    FSupervisor: string;
    FAberto: Boolean;
    FDataHoraAbertura: TDateTime;
    FSaldoInicial: Currency;
    public
    	property Id: Integer read FId write FId;
      property Caixa: Integer read FCaixa write FCaixa;
      property Turno: TTurno read FTurno write FTurno;
      property Operador: string read FOperador write FOperador;
      property Supervisor: string read FSupervisor write FSupervisor;
      property Aberto: Boolean read FAberto write FAberto;
      property DataHoraAbertura: TDateTime read FDataHoraAbertura write FDataHoraAbertura;
      property SaldoInicial: Currency read FSaldoInicial write FSaldoInicial;

      class function New : TCaixa;
  end;

implementation

{ TCaixa }

class function TCaixa.New: TCaixa;
begin
	Result := Self.Create;
end;

{ TTurnoHelper }

function TTurnoHelper.RetornaTurno(Value: TDateTime): TTurno;
begin
	if (Value >= StrToTime('06:00:00')) and
     (Value <= StrToTime('11:59:59')) then
     	Result := MANHA;

	if (Value >= StrToTime('12:00:00')) and
     (Value <= StrToTime('17:59:59')) then
     	Result := TARDE;

  if (Value >= StrToTime('18:00:00')) and
     (Value <= StrToTime('13:59:59')) then
     	Result := NOITE;

end;

function TTurnoHelper.TEnum(Value: string): TTurno;
begin
	Result := TTurno(GetEnumValue(TypeInfo(TTurno), Value));
end;

function TTurnoHelper.ToString: string;
begin
	Result := GetEnumName(TypeInfo(TTurno), Integer(Self));
end;

end.
