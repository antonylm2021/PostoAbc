program PostoABC;

uses
  Vcl.Forms,
  UfrmPrincipal in 'MVC\View\UfrmPrincipal.pas' {FrmPrincipal},
  TTanque in 'MVC\Classes\TTanque.pas',
  UBomba in 'MVC\Classes\UBomba.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
