unit Model.Connections.Zeos;

interface

uses
  ZAbstractRODataset,
  ZAbstractDataset,
  ZDataset,
  ZAbstractConnection,
  ZConnection,
  Model.Connections.Interafaces,
  System.Classes,
  Data.DB;

type
  TModelConnectionsZeos = class(TInterfacedObject, iModelConnectionQuery)
    private
      ZConnection1: TZConnection;
      ZQuery1: TZQuery;
      procedure ConnectionConfig;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConnectionQuery;
      function SQL : TStrings;
      function Open : iModelConnectionQuery;
      function DataSource ( aValue : TDataSource ) : iModelConnectionQuery;
      function ExecSQL : iModelConnectionQuery;
  end;

implementation

{ TModelConnectionsZeos }

procedure TModelConnectionsZeos.ConnectionConfig;
begin
  ZConnection1.Database := 'D:\Projetos\Cursos\DelphiToHero\ServerHorse\trunk\database\SimpleProject.db3';
  ZConnection1.HostName := 'localhost';
  ZConnection1.Protocol := 'sqlite';
end;

constructor TModelConnectionsZeos.Create;
begin
  ZConnection1 := TZConnection.Create(nil);
  ZQuery1 := TZQuery.Create(nil);
  ZQuery1.Connection := ZConnection1;
  ConnectionConfig;
end;

function TModelConnectionsZeos.DataSource(
  aValue: TDataSource): iModelConnectionQuery;
begin
  Result := Self;
  aValue.DataSet := ZQuery1;
end;

destructor TModelConnectionsZeos.Destroy;
begin
  ZQuery1.Free;
  ZConnection1.Free;
  inherited;
end;

function TModelConnectionsZeos.ExecSQL: iModelConnectionQuery;
begin
  Result := Self;
  ZQuery1.ExecSQL;
end;

class function TModelConnectionsZeos.New: iModelConnectionQuery;
begin
  Result := Self.Create;
end;

function TModelConnectionsZeos.Open: iModelConnectionQuery;
begin
  Result := Self;
  ZQuery1.Open;
end;

function TModelConnectionsZeos.SQL: TStrings;
begin
  Result := ZQuery1.SQL;
end;

end.