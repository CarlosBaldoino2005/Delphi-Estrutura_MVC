unit Model.Services.Nfse;

interface

uses
  Model.Services.Interfaces;

type
  TModelServicesNfse = class(TInterfacedObject, iModelServicesGeneric)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelServicesGeneric;
  end;

implementation

{ TModelServicesBoletos }

constructor TModelServicesNfse.Create;
begin

end;

destructor TModelServicesNfse.Destroy;
begin

  inherited;
end;

class function TModelServicesNfse.New: iModelServicesGeneric;
begin
  Result := Self.Create;
end;

end.

