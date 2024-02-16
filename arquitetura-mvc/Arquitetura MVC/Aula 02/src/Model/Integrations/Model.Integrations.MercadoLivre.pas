unit Model.Integrations.MercadoLivre;

interface

uses
  Model.Integrations.Interfaces;

type
  TModelIntegrationsMercadoLivre = class(TInterfacedObject, iModelIntegrationsGeneric)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelIntegrationsGeneric;
  end;

implementation

{ TModelIntegrationsMercadoPago }

constructor TModelIntegrationsMercadoLivre.Create;
begin

end;

destructor TModelIntegrationsMercadoLivre.Destroy;
begin

  inherited;
end;

class function TModelIntegrationsMercadoLivre.New: iModelIntegrationsGeneric;
begin
  Result := Self.Create;
end;

end.

