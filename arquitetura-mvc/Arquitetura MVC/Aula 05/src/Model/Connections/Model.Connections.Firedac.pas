unit Model.Connections.Firedac;

interface

uses
  Model.Connections.Interafaces,
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
  FireDAC.Comp.Client, System.Classes;

type
  TModelConnectionsFiredac = class(TInterfacedObject, iModelConnectionGeneric)
    private
      FDConnection1: TFDConnection;
      procedure ConnectionConfig;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConnectionGeneric;
      function Component : TComponent;
  end;

var
  vConnectionFiredac : iModelConnectionGeneric;

implementation

{ TModelConnectionsFiredac }

function TModelConnectionsFiredac.Component: TComponent;
begin
  Result := FDConnection1;
end;

procedure TModelConnectionsFiredac.ConnectionConfig;
begin
  FDConnection1.Params.DriverID := 'SQLite';
  FDConnection1.Params.Database := 'D:\Projetos\Cursos\DelphiToHero\ServerHorse\trunk\database\SimpleProject.db3';
end;

constructor TModelConnectionsFiredac.Create;
begin
  FDConnection1 := TFDConnection.Create(nil);
  ConnectionConfig;
end;

destructor TModelConnectionsFiredac.Destroy;
begin
  FDConnection1.Free;
  inherited;
end;

class function TModelConnectionsFiredac.New: iModelConnectionGeneric;
begin
  if not assigned(vConnectionFiredac) then
    vConnectionFiredac := Self.Create;

  Result := vConnectionFiredac;
end;

end.
