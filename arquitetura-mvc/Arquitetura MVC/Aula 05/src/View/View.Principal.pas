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
  Data.DB,
  Vcl.ExtCtrls,
  Vcl.DBCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Controller.Interfaces,
  Model.Connections.Interafaces,
  View.Form2,
  View.Form3;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  FController.Connection.SQL.Clear;
  FController.Connection.SQL.Add('SELECT * FROM USERS');
  FController.Connection.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  FController := TController.New;
  FController.Connection.DataSource(DataSource1);
end;

end.
