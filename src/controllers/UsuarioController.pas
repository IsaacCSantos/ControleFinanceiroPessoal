unit UsuarioController;

interface

uses
  Usuario, Data.DB, FireDAC.Comp.Client, System.SysUtils, Dialogs;

type
  TUsuarioController = class
  private
    FFDConnection: TFDConnection;
  public
    constructor Create(AConnection: TFDConnection);
    function Adicionar(AUsuario: TUsuario): Boolean;
    function Editar(AUsuario: TUsuario): Boolean;
    function Deletar(AId: Integer): Boolean;
    function Get: TFDMemTable;
    function GetUsuarioByEmail(const AEmail: string): TUsuario;
  end;

implementation

{ TUsuarioController }

function TUsuarioController.Adicionar(AUsuario: TUsuario): Boolean;
var
  Query: TFDQuery;
begin
  Result := False;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FFDConnection;
    Query.SQL.Text := 'INSERT INTO Usuarios (Nome, Email, Senha) VALUES (:Nome, :Email, :Senha)';
    Query.ParamByName('Nome').AsString := AUsuario.Nome;
    Query.ParamByName('Email').AsString := AUsuario.Email;
    Query.ParamByName('Senha').AsString := AUsuario.Senha;
    Query.ExecSQL;
    Result := True;
  except
    on E: Exception do
      ShowMessage('Erro ao adicionar categoria: ' + E.Message);
  end;
  Query.Free;
end;


constructor TUsuarioController.Create(AConnection: TFDConnection);
begin
  FFDConnection := AConnection;
end;


function TUsuarioController.Deletar(AId: Integer): Boolean;
var
  Query: TFDQuery;
begin
  Result := False;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FFDConnection;
    Query.SQL.Text := 'DELETE FROM Usuarios WHERE Id = :Id';
    Query.ParamByName('Id').AsInteger := AId;
    Query.ExecSQL;
    Result := True;
  except
    on E: Exception do
      ShowMessage('Erro ao excluir categoria: ' + E.Message);
  end;
  Query.Free;
end;

function TUsuarioController.Editar(AUsuario: TUsuario): Boolean;
var
  Query: TFDQuery;
begin
  Result := False;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FFDConnection;
    Query.SQL.Text := 'UPDATE Usuarios SET Nome = :Nome, Email = :Email, Senha = :Senha WHERE Id = :Id';
    Query.ParamByName('Id').AsInteger := AUsuario.Id;
    Query.ParamByName('Nome').AsString := AUsuario.Nome;
    Query.ParamByName('Email').AsString := AUsuario.Email;
    Query.ParamByName('Senha').AsString := AUsuario.Senha;
    Query.ExecSQL;
    Result := True;
  except
    on E: Exception do
      ShowMessage('Erro ao editar categoria: ' + E.Message);
  end;
  Query.Free;
end;

function TUsuarioController.Get: TFDMemTable;
var
  LQuery: TFDQuery;
  LTable: TFDMemTable;
begin
  LQuery := TFDQuery.Create(nil);
  LTable := TFDMemTable.Create(nil);
  try
    LQuery.Connection := FFDConnection;
    LQuery.SQL.Text := 'SELECT * FROM Usuarios';
    LQuery.Open;
    LTable.CloneCursor(LQuery);
    Result := LTable;
  finally
    LQuery.Free;
  end;
end;

function TUsuarioController.GetUsuarioByEmail(const AEmail: string): TUsuario;
var
  Query: TFDQuery;
  Usuario: TUsuario;
begin
  Usuario := nil;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FFDConnection;
    Query.SQL.Text := 'SELECT * FROM Usuarios WHERE Email = :Email';
    Query.ParamByName('Email').AsString := AEmail;
    Query.Open;
    if not Query.IsEmpty then
    begin
      Usuario := TUsuario.Create;
      Usuario.Id := Query.FieldByName('Id').AsInteger;
      Usuario.Nome := Query.FieldByName('Nome').AsString;
      Usuario.Email := Query.FieldByName('Email').AsString;
      Usuario.Senha := Query.FieldByName('Senha').AsString;
    end;
  except
    on E: Exception do
      ShowMessage('Erro ao buscar usuário: ' + E.Message);
  end;
  Query.Free;
  Result := Usuario;
end;

end.

