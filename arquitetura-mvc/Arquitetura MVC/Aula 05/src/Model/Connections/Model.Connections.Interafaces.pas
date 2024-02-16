unit Model.Connections.Interafaces;

interface

uses
  System.Classes,
  Data.DB;

type
  iModelConnectionQuery = interface
    ['{2B140172-68DC-4D98-888A-3BB021FB7173}']
    function SQL : TStrings;
    function Open : iModelConnectionQuery;
    function DataSource ( aValue : TDataSource ) : iModelConnectionQuery;
    function ExecSQL : iModelConnectionQuery;
  end;

  iModelConnectionGeneric = interface
    ['{0E663B6D-3B24-454A-913B-4433906128C0}']
    function Component : TComponent;
  end;

  iModelConnections = interface
    ['{FFE52646-5424-4216-9273-53DB7DB08533}']
    function Zeos : iModelConnectionQuery;
    function Firedac : iModelConnectionQuery;
  end;

implementation

end.
