object EkonResource1: TEkonResource1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 300
  Width = 600
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=192.168.198.130'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=/opt/interbase/examples/employee.gdb'
      'DriverID=IB')
    LoginPrompt = False
    Left = 38
    Top = 16
  end
  object qryEMPLOYEE: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from EMPLOYEE')
    Left = 130
    Top = 16
  end
  object dsrEMPLOYEE: TEMSDataSetResource
    AllowedActions = [List, Get, Post, Put, Delete]
    DataSet = qryEMPLOYEE
    PageSize = 5
    Left = 130
    Top = 72
  end
  object EmployeeConnectionWin: TFDConnection
    Params.Strings = (
      'ConnectionDef=EMPLOYEE')
    LoginPrompt = False
    Left = 69
    Top = 141
  end
end
