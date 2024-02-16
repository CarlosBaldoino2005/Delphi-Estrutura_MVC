unit Model.NFe;

interface

uses
  Model.NFe.Interfaces;

type
  TModelNFe = class(TInterfacedObject, iModelNFe)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelNFe;
      function Emitir : iModelNFe;
  end;

implementation

{ TModelNFe }

constructor TModelNFe.Create;
begin

end;

destructor TModelNFe.Destroy;
begin

  inherited;
end;

function TModelNFe.Emitir: iModelNFe;
begin
  Result := Self;
end;

class function TModelNFe.New: iModelNFe;
begin
  Result := Self.Create;
end;

end.
