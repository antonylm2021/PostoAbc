unit UfrmAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,System.AnsiStrings, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,AbastecimentoController;

type
  TFrmAbastecimento = class(TForm)
    cbbomba: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    edtvalorl: TEdit;
    edtlitro: TEdit;
    Label3: TLabel;
    edttotal: TEdit;
    Label4: TLabel;
    etimposto: TEdit;
    Label5: TLabel;
    edttoticms: TEdit;
    Label6: TLabel;
    Panel1: TPanel;
    edttipo: TEdit;
    Label7: TLabel;
    edttotgeral: TEdit;
    Label8: TLabel;
    procedure cbbombaChange(Sender: TObject);
    procedure passarDados(Tipo,Valor:string);
    procedure Panel1Click(Sender: TObject);
    procedure preencheDados;
    procedure FormCreate(Sender: TObject);
    procedure edtlitroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    valor,icms,total,totalicms,litro,totgeral:Currency;
    function Validar():Boolean;
    function Salvar:Boolean;
  public
    { Public declarations }
  end;

var
  FrmAbastecimento: TFrmAbastecimento;

implementation

{$R *.dfm}

uses Abastecimento;

procedure TFrmAbastecimento.cbbombaChange(Sender: TObject);
begin
  preencheDados();
end;

procedure TFrmAbastecimento.edtlitroKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key=#13) then
    if Validar() then
      ShowMessage('Abastecimento Realizado Com sucesso')
    else
      ShowMessage('Erro ao abastecer');
end;

procedure TFrmAbastecimento.FormCreate(Sender: TObject);
begin
  preencheDados();
end;

procedure TFrmAbastecimento.FormShow(Sender: TObject);
begin
  edtlitro.SetFocus();
end;

procedure TFrmAbastecimento.Panel1Click(Sender: TObject);
begin
  if Validar() then
    ShowMessage('Abastecimento Realizado Com sucesso')
  else
    ShowMessage('Erro ao abastecer');

end;

procedure TFrmAbastecimento.passarDados(Tipo, Valor: string);
begin
  edttipo.Text:= Tipo;
  edtvalorl.Text:= Valor;
end;


procedure TFrmAbastecimento.preencheDados;
begin
  case cbbomba.ItemIndex of
    0: passarDados('GASOLINA','5,79');
    1: passarDados('GASOLINA','5,79');
    2: passarDados('DIESEL','3,79');
    3: passarDados('DIESEL','3,79');
  end;
end;

function TFrmAbastecimento.Salvar:boolean;
var
  Abast: TAbastecimento;
  Controller: TabastecimentoController;
begin
  Abast:= TAbastecimento.Create();
  Controller:= TabastecimentoController.create();
  Abast.valor:= valor;
  Abast.icms:=icms;
  Abast.IdBomba:= cbbomba.ItemIndex;
  Abast.TotalIcms:= totalicms;
  Abast.TotalGeral:= total;
  Abast.Dt:= Date;
  Abast.Litros:= litro;
  Result:= Controller.Salvar(Abast);
end;

function TFrmAbastecimento.Validar: Boolean;
begin
  if (edtlitro.Text <> '') or (edtlitro.Text <>'0') then
    begin
      litro:= StrToCurr(edtlitro.Text);
      valor:= StrToCurr(edtvalorl.Text);
      icms:= StrToCurr(etimposto.Text);
      total:= (valor * litro);
      totalicms :=((valor * litro)*icms/100);
      edttoticms.Text:= formatcurr('R$ ###,###,##0.00',
      (totalicms));
      edttotal.Text:=formatcurr('R$ ###,###,##0.00',
      (total));
      totgeral:= total + totalicms;
      edttotgeral.Text:=formatcurr('R$ ###,###,##0.00',
      (totgeral));

      Result:= Salvar();


    end
  else
    begin
      ShowMessage('Digite os litros para abastecer.');
      Result:= False;
    end;

end;

end.
