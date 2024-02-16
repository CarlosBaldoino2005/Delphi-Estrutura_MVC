unit Model.Connections;

interface

uses Model.Connections.Interafaces, Model.Connections.Zeos,
  Model.Connections.Firedac;

type
  TModelConnections = class(TInterfacedObject, iModelConnections)
    private
      FZeos : iModelConnectionGeneric;
      FFiredac : iModelConnectionGeneric;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConnections;
      function Zeos : iModelConnectionGeneric;
      function Firedac : iModelConnectionGeneric;
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

function TModelConnections.Firedac: iModelConnectionGeneric;
begin
  if not Assigned(FFiredac) then
    FFiredac := TModelConnectionsFiredac.New;

  Result := FFiredac;
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
