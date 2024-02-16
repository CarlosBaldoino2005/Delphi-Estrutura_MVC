unit Model.Services.Boletos;

interface

uses
  Model.Services.Interfaces;

type
  TModelServicesBoletos = class(TInterfacedObject, iModelServicesGeneric)
    constructor Create;
    destructor Destroy; override;
    class function New : iModelServicesGeneric;
  end;

implementation

{ TModelServicesBoletos }

constructor TModelServicesBoletos.Create;
begin

end;

destructor TModelServicesBoletos.Destroy;
begin

  inherited;
end;

class function TModelServicesBoletos.New: iModelServicesGeneric;
begin
  Result := Self.Create;
end;

end.
