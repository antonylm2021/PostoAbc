unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,FrmRelatorio, Vcl.Menus, Data.DB,UfrmAbastecimento, Datasnap.DBClient;

type
  TFrmPrincipal = class(TForm)
    menu: TMainMenu;
    Abastecimento1: TMenuItem;
    abastecimento2: TMenuItem;
    procedure abastecimento2Click(Sender: TObject);
    procedure Abastecimento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Abastecimento1Click(Sender: TObject);
begin
  try
    Relatorio:=  TRelatorio .Create(Self);
    Relatorio.FDConnection1.Connected:=True;
    Relatorio.FDQuery1.Active:=True;
    Relatorio.RLReport1.Preview();
  finally
    Relatorio.free;
  end;
end;

procedure TFrmPrincipal.abastecimento2Click(Sender: TObject);
begin
try
  frmAbastecimento:=  Tfrmabastecimento.Create(self);
  FrmAbastecimento.ShowModal;
finally
   frmAbastecimento.free;
end;

end;

end.
