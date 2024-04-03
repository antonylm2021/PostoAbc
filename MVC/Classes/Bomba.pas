unit Bomba;

interface
uses Tanque;

type TBomba = class(TTanque)

private

LIdTanque:Integer;

public
property IdTanque:Integer read LIdTanque write LIdTanque;

function GetIdTanque:Integer;
procedure SetIdTanque(value:integer);
end;

implementation

{ TBomba }

function TBomba.GetIdTanque: Integer;
begin
  Result:= IdTanque;
end;

procedure TBomba.SetIdTanque(value: integer);
begin
  LIdTanque:= value;
end;

end.
