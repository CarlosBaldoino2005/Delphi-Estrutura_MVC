unit Model.Services.Interfaces;

interface

type
  iModelServicesGeneric = interface
    ['{2F515F62-EC8F-4084-8DEB-42AD50240B52}']
  end;

  iModelServices = interface
    ['{00F8A171-E4F1-45CB-85BE-0664BA75D855}']
    function Boletos : iModelServicesGeneric;
    function NFe : iModelServicesGeneric;
    function NFSe : iModelServicesGeneric;
    function CTe : iModelServicesGeneric;
  end;

implementation

end.
