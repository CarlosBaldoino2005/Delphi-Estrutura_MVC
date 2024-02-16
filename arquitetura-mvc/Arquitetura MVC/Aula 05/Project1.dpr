program Project1;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {Form1},
  Model.Connections.Zeos in 'src\Model\Connections\Model.Connections.Zeos.pas',
  Model.Connections.Interafaces in 'src\Model\Connections\Model.Connections.Interafaces.pas',
  Model.Connections in 'src\Model\Connections\Model.Connections.pas',
  Model.Interfaces in 'src\Model\Model.Interfaces.pas',
  Model in 'src\Model\Model.pas',
  Controller.Interfaces in 'src\Controller\Controller.Interfaces.pas',
  Controller in 'src\Controller\Controller.pas',
  View.Form2 in 'src\View\View.Form2.pas' {Form2},
  View.Form3 in 'src\View\View.Form3.pas' {Form3},
  Model.Connections.Firedac.Query in 'src\Model\Connections\Model.Connections.Firedac.Query.pas',
  Model.Connections.Firedac in 'src\Model\Connections\Model.Connections.Firedac.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
