program PostoABC;

uses
  Vcl.Forms,
  UfrmPrincipal in 'MVC\View\UfrmPrincipal.pas' {FrmPrincipal},
  TTanque in 'MVC\Classes\TTanque.pas',
  UBomba in 'MVC\Classes\UBomba.pas',
  AbastecimentoModel in 'MVC\Model\AbastecimentoModel.pas',
  Abastecimento in 'MVC\Classes\Abastecimento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
