unit Model.CEP;

interface

uses
  Model.CEP.Interfaces;

type
  TModelCEP = class(TInterfacedObject, iModelCEP)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelCEP;
      function Consultar : iModelCEP;
  end;

implementation

{ TModelCEP }

function TModelCEP.Consultar: iModelCEP;
begin
  Result := Self;
end;

constructor TModelCEP.Create;
begin

end;

destructor TModelCEP.Destroy;
begin

  inherited;
end;

class function TModelCEP.New: iModelCEP;
begin
  Result := Self.Create;
end;

end.
