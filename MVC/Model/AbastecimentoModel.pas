unit AbastecimentoModel;

interface

uses Abastecimento,DBXCommon, DBXFirebird, SqlExpr,Data.DB, Datasnap.DBClient,  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,System.SysUtils,Conexao;

type TAbastecimentoModel = class(TAbastecimento)

public
function Salvar(Abastecimento:Tabastecimento):Boolean;
function Listar(Abastecimento:Tabastecimento): TFDTable;
constructor create();
private
FDTB: TFDTable;
var
Conexao:Tconexao;
end;



implementation

{ TAbastecimentoModel }

constructor TAbastecimentoModel.create;
begin
  Conexao:= Tconexao.create();
  FDTB:= TFDTable.Create(nil);
  FDTB.Connection:= Conexao.FDConexao;

end;

function TAbastecimentoModel.Listar(Abastecimento:Tabastecimento):  TFDTable;
begin
 try
    FDTB.SQL.Add('SELECT A."DATA",T.DESCRICAO AS TANQUE ,B.DESCRICAO AS BOMBA,SUM(A.VALOR) AS VALOR,SUM(A.TOTALICMS) AS ICMS,SUM(A.TOTALGERAL) AS TOTALGERAL ');
    FDTB.SQL.Add('FROM ABASTECIMENTO AS A INNER JOIN BOMBA b ON B.ID = A.ID_BOMBA INNER JOIN TANQUE t ON T.ID = B.ID_TANQUE GROUP BYA."DATA",TANQUE ,BOMBA');
    FDTB.Open();
  Except
    on E: Exception do
      raise Exception.Create('Error ao Listar Dados.');

  end;
end;

function TAbastecimentoModel.Salvar(Abastecimento:Tabastecimento): Boolean;
begin
  try
    FDTB.SQL.Add('INSERT INTO ABASTECIMENTO (DATA,VALOR,LITROS,ICMS,ID_BOMBA,TOTALICMS,TOTALGERAL) ');
    FDTB.SQL.Add('VALUES(:DATA,:VALOR,:LITROS,:ICMS,:ID_BOMBA,:TOTALICMS,:TOTALGERAL)');
    FDTB.Params.ParamByName('DATA').AsDate:= Abastecimento.Dt;
    FDTB.Params.ParamByName('VALOR').AsCurrency:= Abastecimento.Valor;
    FDTB.Params.ParamByName('LITROS').AsCurrency:= Abastecimento.Litros;
    FDTB.Params.ParamByName('ICMS').AsCurrency:= Abastecimento.Icms;
    FDTB.Params.ParamByName('ID_BOMBA').AsInteger:= Abastecimento.IdBomba;
    FDTB.Params.ParamByName('TOTALICMS').AsCurrency:= Abastecimento.TotalIcms;
    FDTB.Params.ParamByName('TOTALGERAL').AsCurrency:= Abastecimento.TotalGeral;
    FDTB.ExecSQL;
    Result:= True;

  Except
    on E: Exception do
      raise Exception.Create('Error ao Salvar');

  end;
end;
end.
