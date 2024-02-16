unit Controller.Interfaces;

interface

uses
  Model.Integrations.Interfaces,
  Model.Services.Interfaces;

type
  iController = interface
    ['{EDF827F4-5F4A-4416-88A5-E07A3B0EA74E}']
    function Integrations : iModelIntegrations;
    function Services : iModelServices;
  end;

implementation

end.
