object EmpfiredacResource1: TEmpfiredacResource1
  OldCreateOrder = False
  Height = 297
  Width = 425
  object EmployeeConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    LoginPrompt = False
    Left = 59
    Top = 42
  end
  object EmployeeTable: TFDQuery
    Connection = EmployeeConnection
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE')
    Left = 67
    Top = 98
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 224
    Top = 96
  end
end
