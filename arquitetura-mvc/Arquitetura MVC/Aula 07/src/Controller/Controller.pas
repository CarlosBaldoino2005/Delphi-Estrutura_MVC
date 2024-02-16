unit Controller;

interface

uses
  Controller.Interfaces,
  Model.NFe.Interfaces, Model.NFe, Model.CEP.Interfaces;

type
  TController = class(TInterfacedObject, iController)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function NFe : iModelNFe;
      function CEP : iModelCEP;
  end;

implementation

uses
  Model.CEP;

{ TController }

function TController.CEP: iModelCEP;
begin
  Result := TModelCEP.New;
end;

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.NFe: iModelNFe;
begin
  Result := TModelNFe.New;
end;

end.
