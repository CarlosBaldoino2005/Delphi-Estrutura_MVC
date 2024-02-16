unit Model.Connections;

interface

uses Model.Connections.Interafaces, Model.Connections.Zeos;

type
  TModelConnections = class(TInterfacedObject, iModelConnections)
    private
      FZeos : iModelConnectionGeneric;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConnections;
      function Zeos : iModelConnectionGeneric;
  end;

implementation

{ TModelConnections }

constructor TModelConnections.Create;
begin

end;

destructor TModelConnections.Destroy;
begin

  inherited;
end;

class function TModelConnections.New: iModelConnections;
begin
  Result := Self.Create;
end;

function TModelConnections.Zeos: iModelConnectionGeneric;
begin
  if not Assigned(FZeos) then
    FZeos := TModelConnectionsZeos.New;

  Result := FZeos;
end;

end.
