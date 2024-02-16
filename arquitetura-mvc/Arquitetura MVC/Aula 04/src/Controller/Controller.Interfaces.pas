unit Controller.Interfaces;

interface

uses
  Model.Connections.Interafaces;

type

  iController = interface
    ['{B099DA23-AD44-446C-8418-D1708D665AF5}']
    function Connection : iModelConnectionGeneric;
  end;

implementation

end.
