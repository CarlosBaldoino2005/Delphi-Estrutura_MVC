unit Model.Connections.Firedac.Query;

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
  TModelConnectionsFiredacQuery = class(TInterfacedObject, iModelConnectionQuery)
    private
      FDQuery1: TFDQuery;
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

uses
  Model.Connections.Firedac;

{ TModelConnectionsFiredac }

constructor TModelConnectionsFiredacQuery.Create;
begin
  FDQuery1 := TFDQuery.Create(nil);
  FDQuery1.Connection := TFDConnection(TModelConnectionsFiredac.New.Component);
end;

function TModelConnectionsFiredacQuery.DataSource(
  aValue: TDataSource): iModelConnectionQuery;
begin
  Result := Self;
  aValue.DataSet := FDQuery1;
end;

destructor TModelConnectionsFiredacQuery.Destroy;
begin
  FDQuery1.Free;
  inherited;
end;

function TModelConnectionsFiredacQuery.ExecSQL: iModelConnectionQuery;
begin
  Result := Self;
  FDQuery1.ExecSQL;
end;

class function TModelConnectionsFiredacQuery.New: iModelConnectionQuery;
begin
  Result := Self.Create;
end;

function TModelConnectionsFiredacQuery.Open: iModelConnectionQuery;
begin
  Result := Self;
  FDQuery1.Open;
end;

function TModelConnectionsFiredacQuery.SQL: TStrings;
begin
  Result := FDQuery1.SQL;
end;

end.
