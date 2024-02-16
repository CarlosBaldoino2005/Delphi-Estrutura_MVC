unit View.Form2;

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
  Vcl.DBGrids,
  Controller.Interfaces;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FController : iController;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Controller;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  FController.Connection.SQL.Clear;
  FController.Connection.SQL.Add('SELECT * FROM COUNTRIES');
  FController.Connection.Open;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  FController.Connection.DataSource(DataSource1);
end;

end.
