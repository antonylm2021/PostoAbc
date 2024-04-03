program PostoABC;

uses
  Vcl.Forms,
  AbastecimentoModel in 'MVC\Model\AbastecimentoModel.pas',
  Abastecimento in 'MVC\Classes\Abastecimento.pas',
  Bomba in 'MVC\Classes\Bomba.pas',
  Tanque in 'MVC\Classes\Tanque.pas',
  UfrmAbastecimento in 'MVC\View\UfrmAbastecimento.pas' {FrmAbastecimento},
  UfrmPrincipal in 'MVC\View\UfrmPrincipal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
