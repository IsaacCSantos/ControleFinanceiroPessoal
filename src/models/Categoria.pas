unit Categoria;

interface

type
  TCategoria = class
  private
    FId: Integer;
    FNome: string;
    FTipo: string;
  public
    property Id: Integer read FId write FId;
    property Nome: string read FNome write FNome;
    property Tipo: string read FTipo write FTipo;
  end;

implementation

end.

