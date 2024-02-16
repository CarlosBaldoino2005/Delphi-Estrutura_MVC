program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Model.Services.Boletos in 'src\Model\Services\Model.Services.Boletos.pas',
  Model.Services.Interfaces in 'src\Model\Services\Model.Services.Interfaces.pas',
  Model.Services.Nfe in 'src\Model\Services\Model.Services.Nfe.pas',
  Model.Services.Nfse in 'src\Model\Services\Model.Services.Nfse.pas',
  Model.Integrations.Interfaces in 'src\Model\Integrations\Model.Integrations.Interfaces.pas',
  Model.Integrations.MercadoPago in 'src\Model\Integrations\Model.Integrations.MercadoPago.pas',
  Model.Integrations.MercadoLivre in 'src\Model\Integrations\Model.Integrations.MercadoLivre.pas',
  Model.Integrations.SiteMercado in 'src\Model\Integrations\Model.Integrations.SiteMercado.pas',
  Model.Services in 'src\Model\Services\Model.Services.pas',
  Model.Integrations in 'src\Model\Integrations\Model.Integrations.pas',
  Model.Interfaces in 'src\Model\Model.Interfaces.pas',
  Model in 'src\Model\Model.pas',
  Controller.Interfaces in 'src\Controller\Controller.Interfaces.pas',
  Controller in 'src\Controller\Controller.pas',
  Model.Integrations.SkyTef in 'src\Model\Integrations\Model.Integrations.SkyTef.pas',
  Unit2 in 'Unit2.pas' {Form2},
  Model.Services.CTe in 'src\Model\Services\Model.Services.CTe.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
