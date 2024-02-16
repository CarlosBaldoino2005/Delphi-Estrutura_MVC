unit Model.Integrations;

interface

uses
  Model.Integrations.Interfaces,
  Model.Integrations.MercadoLivre,
  Model.Integrations.MercadoPago,
  Model.Integrations.SiteMercado, Model.Integrations.SkyTef;

type
  TModelIntegrations = class(TInterfacedObject, iModelIntegrations)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelIntegrations;
      function MercadoLivre : iModelIntegrationsGeneric;
      function MercadoPago : iModelIntegrationsGeneric;
      function SiteMercado : iModelIntegrationsGeneric;
      function SkyTef : iModelIntegrationsGeneric;
  end;

implementation

{ TModelIntegrations }

constructor TModelIntegrations.Create;
begin

end;

destructor TModelIntegrations.Destroy;
begin

  inherited;
end;

function TModelIntegrations.MercadoLivre: iModelIntegrationsGeneric;
begin
  Result := TModelIntegrationsMercadoLivre.New;
end;

function TModelIntegrations.MercadoPago: iModelIntegrationsGeneric;
begin
  Result := TModelIntegrationsMercadoPago.New;
end;

class function TModelIntegrations.New: iModelIntegrations;
begin
  Result := Self.Create;
end;

function TModelIntegrations.SiteMercado: iModelIntegrationsGeneric;
begin
  Result := TModelIntegrationsSiteMercado.New;
end;

function TModelIntegrations.SkyTef: iModelIntegrationsGeneric;
begin
  Result := TModelIntegrationsSkyTef.New;
end;

end.
