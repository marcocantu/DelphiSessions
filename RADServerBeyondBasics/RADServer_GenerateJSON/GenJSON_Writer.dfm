object EmployeeResource1: TEmployeeResource1
  OldCreateOrder = False
  Height = 286
  Width = 491
  object EmployeeConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    LoginPrompt = False
    Left = 67
    Top = 26
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
    Left = 316
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
    Left = 240
    Top = 80
  end
end
