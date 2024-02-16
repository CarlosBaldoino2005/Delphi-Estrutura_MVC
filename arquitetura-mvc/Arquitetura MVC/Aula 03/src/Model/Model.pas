unit Model;

interface

uses
  Model.Connections.Interafaces, Model.Interfaces, Model.Connections;

type
  TModel = class(TInterfacedObject, iModel)
    private
      FConnections : iModelConnections;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModel;
      function Connections : iModelConnections;
  end;

implementation

{ TModel }

function TModel.Connections: iModelConnections;
begin
  if not Assigned(FConnections) then
    FConnections := TModelConnections.New;

  Result := FConnections;
end;

constructor TModel.Create;
begin

end;

destructor TModel.Destroy;
begin

  inherited;
end;

class function TModel.New: iModel;
begin
  Result := Self.Create;
end;

end.
