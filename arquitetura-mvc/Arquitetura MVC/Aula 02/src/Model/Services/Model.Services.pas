unit Model.Services;

interface

uses
  Model.Services.Interfaces, Model.Services.Boletos, Model.Services.Nfe,
  Model.Services.Nfse, Model.Services.CTe;

type
  TModelServices = class(TInterfacedObject, iModelServices)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelServices;
      function Boletos : iModelServicesGeneric;
      function NFe : iModelServicesGeneric;
      function NFSe : iModelServicesGeneric;
      function CTe : iModelServicesGeneric;
  end;

implementation

{ TModelServices }

function TModelServices.Boletos: iModelServicesGeneric;
begin
  Result := TModelServicesBoletos.New;
end;

constructor TModelServices.Create;
begin

end;

function TModelServices.CTe: iModelServicesGeneric;
begin
  Result := TModelServicesCTe.New;
end;

destructor TModelServices.Destroy;
begin

  inherited;
end;

class function TModelServices.New: iModelServices;
begin
  Result := Self.Create;
end;

function TModelServices.NFe: iModelServicesGeneric;
begin
  Result := TModelServicesNfe.New;
end;

function TModelServices.NFSe: iModelServicesGeneric;
begin
  Result := TModelServicesNfse.New;
end;

end.
