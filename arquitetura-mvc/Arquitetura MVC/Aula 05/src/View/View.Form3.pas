unit View.Form3;

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
  Data.DB,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids, Controller.Interfaces;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FController : iController;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Controller;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  FController.Connection.SQL.Clear;
  FController.Connection.SQL.Add('SELECT * FROM USERS');
  FController.Connection.Open;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  FController.Connection.DataSource(DataSource1);
end;

end.
