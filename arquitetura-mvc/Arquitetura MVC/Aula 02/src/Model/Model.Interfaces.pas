unit Model.Interfaces;

interface

uses
  Model.Integrations.Interfaces,
  Model.Services.Interfaces;

type
  iModel = interface
    ['{EDE76ACB-FD7E-4767-ACAB-409A2D5D9EF6}']
    function Integrations : iModelIntegrations;
    function Services : iModelServices;
  end;

implementation

end.
