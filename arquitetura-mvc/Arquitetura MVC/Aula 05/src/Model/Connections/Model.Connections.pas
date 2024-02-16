unit Model.Connections;

interface

uses Model.Connections.Interafaces, Model.Connections.Zeos,
  Model.Connections.Firedac.Query;

type
  TModelConnections = class(TInterfacedObject, iModelConnections)
    private
      FZeos : iModelConnectionQuery;
      FFiredac : iModelConnectionQuery;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConnections;
      function Zeos : iModelConnectionQuery;
      function Firedac : iModelConnectionQuery;
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

function TModelConnections.Firedac: iModelConnectionQuery;
begin
  if not Assigned(FFiredac) then
    FFiredac := TModelConnectionsFiredacQuery.New;

  Result := FFiredac;
end;

class function TModelConnections.New: iModelConnections;
begin
  Result := Self.Create;
end;

function TModelConnections.Zeos: iModelConnectionQuery;
begin
  if not Assigned(FZeos) then
    FZeos := TModelConnectionsZeos.New;

  Result := FZeos;
end;

end.
