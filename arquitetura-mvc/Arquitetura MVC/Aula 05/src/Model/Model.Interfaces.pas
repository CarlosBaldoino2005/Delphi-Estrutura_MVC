unit Model.Interfaces;

interface

uses
  Model.Connections.Interafaces;

type

  iModel = interface
    ['{D0A9E649-44DF-4BE6-A5A2-03A7CDCA65E9}']
    function Connections : iModelConnections;
  end;

implementation

end.
