program Project1;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {Form1},
  Controller.Interfaces in 'src\Controller\Controller.Interfaces.pas',
  Controller in 'src\Controller\Controller.pas',
  Model.NFe.Interfaces in 'src\Model\Nfe\Model.NFe.Interfaces.pas',
  Model.NFe in 'src\Model\Nfe\Model.NFe.pas',
  Model.CEP.Interfaces in 'src\Model\CEP\Model.CEP.Interfaces.pas',
  Model.CEP in 'src\Model\CEP\Model.CEP.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
