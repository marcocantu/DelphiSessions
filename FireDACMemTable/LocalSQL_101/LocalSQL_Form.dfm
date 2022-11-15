object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Form13'
  ClientHeight = 410
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  StyleName = 'Windows'
  OnCreate = FormCreate
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 80
    Top = 40
    Width = 641
    Height = 161
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 80
    Top = 240
    Width = 320
    Height = 120
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object SQLIteConnection: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 440
    Top = 40
  end
  object EmployeeConnection: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'Port=3050'
      'ConnectionDef=EMPLOYEE')
    LoginPrompt = False
    Left = 62
    Top = 48
  end
  object EmployeeTable: TFDQuery
    AfterPost = EmployeeTableAfterPost
    Connection = EmployeeConnection
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE')
    Left = 62
    Top = 144
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = SQLIteConnection
    Active = True
    DataSets = <
      item
        DataSet = EmployeeTable
        Name = 'Empl'
      end>
    Left = 440
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = EmployeeTable
    Left = 72
    Top = 248
  end
  object FDQuery1: TFDQuery
    Connection = SQLIteConnection
    SQL.Strings = (
      'select Sum (phone_ext) from Empl ')
    Left = 600
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = FDQuery1
    Left = 632
    Top = 448
  end
end
