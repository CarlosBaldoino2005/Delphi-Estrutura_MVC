unit Model.Connections.Firedac;

interface

uses
  Model.Connections.Interafaces,
  System.Classes,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TModelConnectionsFiredac = class(TInterfacedObject, iModelConnectionGeneric)
    private
      FDConnection1: TFDConnection;
      FDQuery1: TFDQuery;
      procedure ConnectionConfig;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConnectionGeneric;
      function SQL : TStrings;
      function Open : iModelConnectionGeneric;
      function DataSource ( aValue : TDataSource ) : iModelConnectionGeneric;
      function ExecSQL : iModelConnectionGeneric;
  end;

implementation

{ TModelConnectionsFiredac }

procedure TModelConnectionsFiredac.ConnectionConfig;
begin
  FDConnection1.Params.DriverID := 'SQLite';
  FDConnection1.Params.Database := 'D:\Projetos\Cursos\DelphiToHero\ServerHorse\trunk\database\SimpleProject.db3';

end;

constructor TModelConnectionsFiredac.Create;
begin
  FDConnection1 := TFDConnection.Create(nil);
  FDQuery1 := TFDQuery.Create(nil);
  FDQuery1.Connection := FDConnection1;
  ConnectionConfig;
end;

function TModelConnectionsFiredac.DataSource(
  aValue: TDataSource): iModelConnectionGeneric;
begin
  Result := Self;
  aValue.DataSet := FDQuery1;
end;

destructor TModelConnectionsFiredac.Destroy;
begin
  FDQuery1.Free;
  FDConnection1.Free;
  inherited;
end;

function TModelConnectionsFiredac.ExecSQL: iModelConnectionGeneric;
begin
  Result := Self;
  FDQuery1.ExecSQL;
end;

class function TModelConnectionsFiredac.New: iModelConnectionGeneric;
begin
  Result := Self.Create;
end;

function TModelConnectionsFiredac.Open: iModelConnectionGeneric;
begin
  Result := Self;
  FDQuery1.Open;
end;

function TModelConnectionsFiredac.SQL: TStrings;
begin
  Result := FDQuery1.SQL;
end;

end.
