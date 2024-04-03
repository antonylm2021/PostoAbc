unit AbastecimentoModel;

interface

uses Abastecimento,DBXCommon, DBXFirebird, SqlExpr;

type TAbastecimentoModel = class(TAbastecimento)

public
function Salvar:Boolean;

end;



implementation

{ TAbastecimentoModel }

function TAbastecimentoModel.Salvar: Boolean;
var
  dbxconn: tdbxconnection;
  dbxcmd: tdbxcommand;
  dbxreader: tdbxreader;

begin
  try
    dbxconn := tdbxconnectionfactory.GetConnectionFactory.GetConnection('ABC',
      'SYSDBA', 'masterkey');
    dbxcmd := dbxconn.CreateCommand;

      dbxcmd.Text :=
        'select CODIGO_PRODUTO,ID_PRODUTO,NOME_PRODUTO,PRECO_PRODUTO,CUSTO_PRODUTO,QUANTIDADE,ICMS_PRODUTO,UNIDADE,'
        + 'NCM,PIS,COFINS,SECAO,SITUACAO,BASECALCULO,CST,CFOP,CODIPI,BASESTMVA,ICMSST,ORIGEM,TOTALTRIBUTOS,VINCULO,STATUSVINCULO,CEST,PESO,PREC,TAMANHO,COR,preco_produto2,preco_produto3'
        + ',preco_produto4,tipo,descp,fcp,reducao,conversao,codigofornecedor,servico,cbenef FROM PRODUTO where codigo_produto =' ;


    dbxreader := dbxcmd.ExecuteQuery;


  finally
    dbxconn.Free;
    dbxcmd.Free;
    dbxreader.Free;
  end;


end;
end.
