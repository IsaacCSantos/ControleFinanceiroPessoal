unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ZConnection1.Database := 'ControleFinanceiro';
  ZConnection1.HostName := '127.0.0.1';
  ZConnection1.User := 'postgres';
  ZConnection1.Password := 'masterkey';
  ZConnection1.Protocol := 'postgresql';
end;

end.
