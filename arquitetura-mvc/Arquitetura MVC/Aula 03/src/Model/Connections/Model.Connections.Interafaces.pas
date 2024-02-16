unit Model.Connections.Interafaces;

interface

uses
  System.Classes,
  Data.DB;

type
  iModelConnectionGeneric = interface
    ['{2B140172-68DC-4D98-888A-3BB021FB7173}']
    function SQL : TStrings;
    function Open : iModelConnectionGeneric;
    function DataSource ( aValue : TDataSource ) : iModelConnectionGeneric;
    function ExecSQL : iModelConnectionGeneric;
  end;

  iModelConnections = interface
    ['{FFE52646-5424-4216-9273-53DB7DB08533}']
    function Zeos : iModelConnectionGeneric;
  end;

implementation

end.