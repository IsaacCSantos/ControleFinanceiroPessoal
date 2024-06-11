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
  Datasnap.DBClient, Utils, Categoria;

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
    LabeledEditNome: TLabeledEdit;
    DataSourceCategorias: TDataSource;
    Panel4: TPanel;
    Button1: TButton;
    Label1: TLabel;
    ComboBoxTipo: TComboBox;
    Label2: TLabel;
    ButtonGravar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonEditarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ButtonGravarClick(Sender: TObject);
  private
    { Private declarations }
    FCategoriaController: TCategoriaController;
    FCategoriaID: Integer;
    procedure RefreshCategorias;
    procedure Adicionar;
    procedure Editar;
    procedure Gravar;
    procedure Voltar;

    function Validacao:Boolean;
  public
    { Public declarations }
  end;

var
  FormCategorias: TFormCategorias;

implementation

{$R *.dfm}

procedure TFormCategorias.Adicionar;
begin
  FCategoriaID := 0;
  LabeledEditNome.Text := '';
  ComboBoxTipo.ItemIndex := 0;
  TUtils.MostrarAba(PageControl, TabSheetCadastro);
end;

procedure TFormCategorias.Button1Click(Sender: TObject);
begin
  Voltar;
end;

procedure TFormCategorias.ButtonAdicionarClick(Sender: TObject);
begin
  Adicionar;
end;

procedure TFormCategorias.ButtonEditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TFormCategorias.ButtonGravarClick(Sender: TObject);
begin
  if (Validacao) then
    Gravar;
end;

procedure TFormCategorias.Editar;
begin
  FCategoriaID := DataSourceCategorias.DataSet.FieldByName('id').AsInteger;
  LabeledEditNome.Text := DataSourceCategorias.DataSet.FieldByName('nome').AsString;
  ComboBoxTipo.ItemIndex := ComboBoxTipo.Items.IndexOf(DataSourceCategorias.DataSet.FieldByName('tipo').AsString);
  TUtils.MostrarAba(PageControl, TabSheetCadastro);
end;

procedure TFormCategorias.FormCreate(Sender: TObject);
begin
  FCategoriaController := TCategoriaController.Create(DataModuleConexao.Conexao);
  RefreshCategorias;
end;

procedure TFormCategorias.Gravar;
var
  Categoria: TCategoria;
begin
  Categoria := TCategoria.Create;
  try
    Categoria.nome := LabeledEditNome.Text;
    Categoria.Tipo := ComboBoxTipo.Text;
    if (FCategoriaID = 0) then
    begin
      FCategoriaController.Adicionar(Categoria);
    end
    else
    begin
      Categoria.Id := FCategoriaID;
      FCategoriaController.Editar(Categoria);
    end;
    RefreshCategorias;
  finally
    FreeAndNil(Categoria);
  end;
end;

procedure TFormCategorias.RefreshCategorias;
begin
  TUtils.MostrarAba(PageControl, TabSheetPrincipal);
  DataSourceCategorias.DataSet := FCategoriaController.Get;
end;

function TFormCategorias.Validacao: Boolean;
begin
  Result := True;
  if (LabeledEditNome.Text = '') or (ComboBoxTipo.Text = '') then
  begin
    Result := False;
    ShowMessage('Por favor, preencha todos os campos.');
  end;
end;

procedure TFormCategorias.Voltar;
begin
  RefreshCategorias;
end;

end.
