unit UnitFormCategorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, CategoriaController,
  UnitDataModule, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, Utils;

type
  TFormCategorias = class(TForm)
    PanelBackGround: TPanel;
    PageControl: TPageControl;
    TabSheetPrincipal: TTabSheet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    ButtonEditar: TButton;
    ButtonAdicionar: TButton;
    TabSheetCadastro: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    ButtonExcluir: TButton;
    LabeledEdit1: TLabeledEdit;
    DataSourceCategorias: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ButtonAdicionarClick(Sender: TObject);
  private
    { Private declarations }
    FCategoriaController: TCategoriaController;
    procedure RefreshCategorias;
    procedure Adicionar;


  public
    { Public declarations }
  end;

var
  FormCategorias: TFormCategorias;

implementation

{$R *.dfm}

procedure TFormCategorias.ButtonAdicionarClick(Sender: TObject);
begin
        TUtils.MostrarAba(PageControl, TabSheetCadastro);
end;

procedure TFormCategorias.FormCreate(Sender: TObject);
begin
  FCategoriaController := TCategoriaController.Create(DataModuleConexao.Conexao);
  TUtils.MostrarAba(PageControl, TabSheetPrincipal);
  RefreshCategorias;
end;

procedure TFormCategorias.RefreshCategorias;
begin
  DataSourceCategorias.DataSet := FCategoriaController.GetCategorias;
end;

end.
