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

implementation

uses
  Model;

{ TController }

function TController.Connection: iModelConnectionGeneric;
begin
  if not Assigned(FConnection) then
    FConnection := TModel.New.Connections.Zeos;

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
  Result := Self.Create;
end;

end.
