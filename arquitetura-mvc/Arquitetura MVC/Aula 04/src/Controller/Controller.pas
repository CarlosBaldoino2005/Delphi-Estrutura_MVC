unit Controller;

interface

uses
  Controller.Interfaces,
  Model.Connections.Interafaces;

type
  TController = class(TInterfacedObject, iController)
    private
      FConnection : iModelConnectionGeneric;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Connection : iModelConnectionGeneric;
  end;

var
  vController : iController;

implementation

uses
  Model;

{ TController }

function TController.Connection: iModelConnectionGeneric;
begin
  if not Assigned(FConnection) then
    FConnection := TModel.New.Connections.Firedac;

  Result := FConnection;
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
  if not Assigned(vController) then
    vController := Self.Create;

  Result := vController;
end;

end.
