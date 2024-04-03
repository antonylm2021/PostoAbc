unit AbastecimentoModel;

interface

uses Abastecimento,DBXCommon, DBXFirebird, SqlExpr,Data.DB, Datasnap.DBClient;

type TAbastecimentoModel = class(TAbastecimento)

public
ClientDataSet1: TClientDataSet;
function Salvar(Abastecimento:Tabastecimento):Boolean;
function Listar(Abastecimento:Tabastecimento):TclientDataset;

end;



implementation

{ TAbastecimentoModel }

function TAbastecimentoModel.Listar(Abastecimento:Tabastecimento): TclientDataset;
var
  dbxconn: tdbxconnection;
  dbxcmd: tdbxcommand;
  dbxreader: tdbxreader;

begin
  try
    dbxconn := tdbxconnectionfactory.GetConnectionFactory.GetConnection('ABC',
      'SYSDBA', 'masterkey');
    dbxcmd := dbxconn.CreateCommand;

      dbxcmd.Text :='SELECT * FROM ABASTECIMENTO';


    dbxreader := dbxcmd.ExecuteQuery;


  finally
    dbxconn.Free;
    dbxcmd.Free;
    dbxreader.Free;
  end;



end;

function TAbastecimentoModel.Salvar(Abastecimento:Tabastecimento): Boolean;
var
  dbxconn: tdbxconnection;
  dbxcmd: tdbxcommand;
  dbxreader: tdbxreader;

begin
  try
    dbxconn := tdbxconnectionfactory.GetConnectionFactory.GetConnection('ABC',
      'SYSDBA', 'masterkey');
    dbxcmd := dbxconn.CreateCommand;

      dbxcmd.Text :='INSERT INTO ABASTECIMENTO (ID_BOMBA,VALOR,ICMS,LITROS,DATA)'+
      'VALUES(:P)';

    dbxreader := dbxcmd.ExecuteQuery;


  finally
    dbxconn.Free;
    dbxcmd.Free;
    dbxreader.Free;
  end;


end;
end.
