unit Conexao;


interface

 uses   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type tconexao = class
FDConexao: TFDConnection;
constructor  create();
end;

implementation

{ tconexao }

constructor tconexao.create;
begin
  FDConexao:=TFDConnection.Create(nil);
  FDConexao.Params.DriverID:= 'FB';
  FDConexao.Params.Database:='C:\ABC.FDB';
  FDConexao.Params.UserName:='SYSDBA';
  FDConexao.Params.Password:='masterkey';
  FDConexao.LoginPrompt:= false;
  FDConexao.Connected:= True;
end;

end.
