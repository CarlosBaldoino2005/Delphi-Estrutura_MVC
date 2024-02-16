unit Model.Integrations.SiteMercado;

interface

uses
  Model.Integrations.Interfaces;

type
  TModelIntegrationsSiteMercado = class(TInterfacedObject, iModelIntegrationsGeneric)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelIntegrationsGeneric;
  end;

implementation

{ TModelIntegrationsMercadoPago }

constructor TModelIntegrationsSiteMercado.Create;
begin

end;

destructor TModelIntegrationsSiteMercado.Destroy;
begin

  inherited;
end;

class function TModelIntegrationsSiteMercado.New: iModelIntegrationsGeneric;
begin
  Result := Self.Create;
end;

end.

