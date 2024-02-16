unit Model.Services.CTe;

interface

uses
  Model.Services.Interfaces;

type
  TModelServicesCTe = class(TInterfacedObject, iModelServicesGeneric)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelServicesGeneric;
  end;

implementation

{ TModelServicesBoletos }

constructor TModelServicesCTe.Create;
begin

end;

destructor TModelServicesCTe.Destroy;
begin

  inherited;
end;

class function TModelServicesCTe.New: iModelServicesGeneric;
begin
  Result := Self.Create;
end;

end.

