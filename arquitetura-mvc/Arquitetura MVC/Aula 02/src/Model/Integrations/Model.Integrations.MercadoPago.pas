unit Model.Integrations.MercadoPago;

interface

uses
  Model.Integrations.Interfaces;

type
  TModelIntegrationsMercadoPago = class(TInterfacedObject, iModelIntegrationsGeneric)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelIntegrationsGeneric;
  end;

implementation

{ TModelIntegrationsMercadoPago }

constructor TModelIntegrationsMercadoPago.Create;
begin

end;

destructor TModelIntegrationsMercadoPago.Destroy;
begin

  inherited;
end;

class function TModelIntegrationsMercadoPago.New: iModelIntegrationsGeneric;
begin
  Result := Self.Create;
end;

end.
