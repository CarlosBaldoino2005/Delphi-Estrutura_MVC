unit Model.Integrations.SkyTef;

interface

uses
  Model.Integrations.Interfaces;

type
  TModelIntegrationsSkyTef = class(TInterfacedObject, iModelIntegrationsGeneric)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelIntegrationsGeneric;
  end;

implementation

{ TModelIntegrationsSkyTef }

constructor TModelIntegrationsSkyTef.Create;
begin

end;

destructor TModelIntegrationsSkyTef.Destroy;
begin

  inherited;
end;

class function TModelIntegrationsSkyTef.New: iModelIntegrationsGeneric;
begin
  Result := Self.Create;
end;

end.
