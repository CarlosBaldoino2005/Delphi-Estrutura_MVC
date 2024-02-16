unit Controller;

interface

uses
  Controller.Interfaces,
  Model.Connections.Interafaces;

type
  TController = class(TInterfacedObject, iController)
    private
      FConnection : iModelConnectionQuery;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function Connection : iModelConnectionQuery;
  end;

var
  vController : iController;

implementation

uses
  Model;

{ TController }

function TController.Connection: iModelConnectionQuery;
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
  //if not Assigned(vController) then
    //vController := Self.Create;

  Result := Self.Create;
end;

end.
