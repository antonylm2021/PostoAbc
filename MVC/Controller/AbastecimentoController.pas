unit AbastecimentoController;

interface

uses Abastecimento,AbastecimentoModel;

type TabastecimentoController = class

public
function Salvar(Abastecimento:TAbastecimento):Boolean;
constructor create();
var
Model:TAbastecimentoModel;


end;

implementation

{ TabastecimentoController }



{ TabastecimentoController }

constructor TabastecimentoController.create;
begin
  Model:= TAbastecimentoModel.create();
end;

function TabastecimentoController.Salvar(
  Abastecimento: TAbastecimento): Boolean;
begin
   case Abastecimento.IdBomba of
    0: Abastecimento.IdBomba:= 1;
    1: Abastecimento.IdBomba:= 2;
    2: Abastecimento.IdBomba:= 3;
    3: Abastecimento.IdBomba:= 4;
  end;
     Result:= (Model.Salvar(Abastecimento));
end;

{ TabastecimentoController }


end.
