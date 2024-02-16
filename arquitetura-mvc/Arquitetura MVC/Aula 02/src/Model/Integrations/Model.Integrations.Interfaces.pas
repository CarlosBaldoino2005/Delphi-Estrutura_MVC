unit Model.Integrations.Interfaces;

interface

type
  iModelIntegrationsGeneric = interface
    ['{1FA0323E-8E4B-447E-9841-9BFEF31A7DEB}']
  end;

  iModelIntegrations = interface
    ['{262098C8-397F-48A5-ABD8-DE82255AD902}']
    function MercadoLivre : iModelIntegrationsGeneric;
    function MercadoPago : iModelIntegrationsGeneric;
    function SiteMercado : iModelIntegrationsGeneric;
    function SkyTef : iModelIntegrationsGeneric;
  end;

implementation

end.
