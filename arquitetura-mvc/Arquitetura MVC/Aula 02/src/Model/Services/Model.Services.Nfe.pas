unit Model.Services.Nfe;

interface

uses
  Model.Services.Interfaces;

type
  TModelServicesNfe = class(TInterfacedObject, iModelServicesGeneric)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelServicesGeneric;
  end;

implementation

{ TModelServicesBoletos }

constructor TModelServicesNfe.Create;
begin

end;

destructor TModelServicesNfe.Destroy;
begin

  inherited;
end;

class function TModelServicesNfe.New: iModelServicesGeneric;
begin
  Result := Self.Create;
end;

end.

