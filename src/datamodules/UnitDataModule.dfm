object DataModuleConexao: TDataModuleConexao
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=ControleFinanceiro'
      'User_Name=postgres'
      'Password=masterkey'
      'Server=127.0.0.1'
      'DriverID=PG')
    Left = 32
    Top = 24
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\9.5\bin\libpq.dll'
    Left = 32
    Top = 104
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 176
  end
end
