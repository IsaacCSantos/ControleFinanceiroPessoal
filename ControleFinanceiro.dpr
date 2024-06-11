program ControleFinanceiro;

uses
  Vcl.Forms,
  Categoria in 'src\models\Categoria.pas',
  CategoriaController in 'src\controllers\CategoriaController.pas',
  UnitFormCategorias in 'src\views\Categorias\UnitFormCategorias.pas' {FormCategorias},
  UnitDataModule in 'src\datamodules\UnitDataModule.pas' {DataModuleConexao: TDataModule},
  UnitFormMain in 'src\views\Main\UnitFormMain.pas' {FormMain},
  Utils in 'src\utils\Utils.pas',
  UnitFormLogin in 'src\views\Login\UnitFormLogin.pas' {FormLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleConexao, DataModuleConexao);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.Run;
end.
