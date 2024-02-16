unit Controller.Interfaces;

interface

uses
  Model.NFe.Interfaces,
  Model.CEP.Interfaces;

type

  iController = interface
    ['{DD4274EE-5710-4E38-B34C-8D27E9CC762F}']
    function NFe : iModelNFe;
    function CEP : iModelCEP;
  end;

implementation

end.
