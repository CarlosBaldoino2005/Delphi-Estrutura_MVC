unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Controller;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TController.New.Services.Boletos;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TController.New.Integrations.MercadoLivre;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  TController.New.Services.NFe;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  TController.New.Integrations.SiteMercado;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  TController.New.Integrations.MercadoPago;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  TController.New.Integrations.SkyTef;
end;

end.