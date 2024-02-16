unit View.Principal;

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
  Controller.Interfaces,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FController : iController;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Controller;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FController.NFe.Emitir;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FController.CEP.Consultar;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FController := TController.New;
end;

end.
