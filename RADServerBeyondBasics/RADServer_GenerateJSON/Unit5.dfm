object EmployeeResource1: TEmployeeResource1
  OldCreateOrder = False
  Height = 319
  Width = 509
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
  object FDBatchMoveJSONWriter1: TFDBatchMoveJSONWriter
    DataDef.Fields = <>
    Left = 276
    Top = 152
  end
  object FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader
    DataSet = EmployeeTable
    Left = 160
    Top = 152
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveDataSetReader1
    Writer = FDBatchMoveJSONWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 224
    Top = 88
  end
end
