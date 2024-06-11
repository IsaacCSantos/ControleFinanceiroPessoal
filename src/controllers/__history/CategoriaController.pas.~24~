unit CategoriaController;

interface

uses
  Categoria, Data.DB, System.SysUtils, Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCategoriaController = class
  private
    FFDConnection: TFDConnection;
  public
    constructor Create(AConnection: TFDConnection);
    function AddCategoria(ACategoria: TCategoria): Boolean;
    function EditCategoria(ACategoria: TCategoria): Boolean;
    function DeleteCategoria(AId: Integer): Boolean;
    function GetCategorias: TFDMemTable;
  end;

implementation

{ TCategoriaController }

constructor TCategoriaController.Create(AConnection: TFDConnection);
begin
  FFDConnection := AConnection;
end;

function TCategoriaController.AddCategoria(ACategoria: TCategoria): Boolean;
var
  Query: TFDQuery;
begin
  Result := False;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FFDConnection;
    Query.SQL.Text :=
      'INSERT INTO Categorias (Nome, Tipo) VALUES (:Nome, :Tipo)';
    Query.ParamByName('Nome').AsString := ACategoria.Nome;
    Query.ParamByName('Tipo').AsString := ACategoria.Tipo;
    Query.ExecSQL;
    Result := True;
  except
    on E: Exception do
      ShowMessage('Erro ao adicionar categoria: ' + E.Message);
  end;
  Query.Free;
end;

function TCategoriaController.EditCategoria(ACategoria: TCategoria): Boolean;
var
  Query: TFDQuery;
begin
  Result := False;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FFDConnection;
    Query.SQL.Text :=
      'UPDATE Categorias SET Nome = :Nome, Tipo = :Tipo WHERE Id = :Id';
    Query.ParamByName('Id').AsInteger := ACategoria.Id;
    Query.ParamByName('Nome').AsString := ACategoria.Nome;
    Query.ParamByName('Tipo').AsString := ACategoria.Tipo;
    Query.ExecSQL;
    Result := True;
  except
    on E: Exception do
      ShowMessage('Erro ao editar categoria: ' + E.Message);
  end;
  Query.Free;
end;

function TCategoriaController.DeleteCategoria(AId: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Result := False;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FFDConnection;
    Query.SQL.Text := 'DELETE FROM Categorias WHERE Id = :Id';
    Query.ParamByName('Id').AsInteger := AId;
    Query.ExecSQL;
    Result := True;
  except
    on E: Exception do
      ShowMessage('Erro ao excluir categoria: ' + E.Message);
  end;
  Query.Free;
end;

function TCategoriaController.GetCategorias: TFDMemTable;
var
  LQuery: TFDQuery;
  LTable: TFDMemTable;
begin
  LQuery := TFDQuery.Create(nil);
  LTable := TFDMemTable.Create(nil);
  try
    LQuery.Connection := FFDConnection;
    LQuery.SQL.Text := 'SELECT * FROM Categorias';
    LQuery.Open;

    LTable.CloneCursor(LQuery);
    Result := LTable;
  finally
    LQuery.Free;
  end;
end;

end.
