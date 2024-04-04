unit FrmRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport,AbastecimentoController,
  Data.DB, Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Datasnap.Provider;

type
  TRelatorio = class(TForm)
    RLReport1: TRLReport;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    Label2: TLabel;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    Label8: TLabel;
    RLDBText7: TRLDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lli: TLabel;
    ltot: TLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1DATA: TSQLTimeStampField;
    ClientDataSet1TANQUE: TStringField;
    ClientDataSet1BOMBA: TStringField;
    ClientDataSet1VALOR: TFloatField;
    ClientDataSet1ICMS: TFloatField;
    ClientDataSet1TOTALGERAL: TFloatField;
    ClientDataSet1LITROS: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
    VAR
    Calc:Currency;
    Litros:Currency;
  end;

var
  Relatorio: TRelatorio;

implementation

{$R *.dfm}

end.
