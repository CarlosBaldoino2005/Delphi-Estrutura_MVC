unit Controller;

interface

uses
  Controller.Interfaces,
  Model.Integrations.Interfaces,
  Model.Services.Interfaces, Model;

type
  TController = class(TInterfacedObject, iController)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Integrations : iModelIntegrations;
      function Services : iModelServices;
  end;

implementation

{ TController }

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.Integrations: iModelIntegrations;
begin
  Result := TModel.New.Integrations;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.Services: iModelServices;
begin
  Result := TModel.New.Services;
end;

end.
