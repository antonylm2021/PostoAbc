unit Abastecimento;


interface

uses Bomba;

type TAbastecimento = class(TBomba)

private

LValor:Currency;
LIcms:Currency;
LIdBomba:Integer;

public

property Valor:Currency read LValor write LValor;
property Icms:Currency read LIcms write LIcms;
property IdBomba:Integer read LIdBomba write LIdbomba;

function GetValor:Currency;
function GetIcms:Currency;
function GetIdBomba:Integer;
procedure SetValor(value:Currency);
procedure SetIcms(value:Currency);
procedure SetIdbomba(value:Integer);

end;

implementation

{ TAbastecimento }

function TAbastecimento.GetIcms: Currency;
begin
  Result:= LIcms;
end;

function TAbastecimento.GetIdBomba: Integer;
begin
  Result:= LIdBomba;
end;

function TAbastecimento.GetValor: Currency;
begin
  Result:= LValor;
end;

procedure TAbastecimento.SetIcms(value: Currency);
begin
  LValor:= value;
end;

procedure TAbastecimento.SetIdbomba(value: Integer);
begin
  LIdbomba:= Value;
end;

procedure TAbastecimento.SetValor(value: Currency);
begin
  LValor:= value;
end;

end.
