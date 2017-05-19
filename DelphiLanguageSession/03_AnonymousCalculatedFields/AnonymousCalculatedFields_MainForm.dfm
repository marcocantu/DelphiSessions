object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'AnonymousCalculatedFields'
  ClientHeight = 529
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 120
    Top = 32
    Width = 673
    Height = 441
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnPlain: TButton
    Left = 16
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Plain'
    TabOrder = 1
    OnClick = btnPlainClick
  end
  object btnCalc: TButton
    Left = 16
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Calc'
    TabOrder = 2
    OnClick = btnCalcClick
  end
  object btnTrueCalc: TButton
    Left = 16
    Top = 96
    Width = 75
    Height = 25
    Caption = 'TrueCalc'
    TabOrder = 3
    OnClick = btnTrueCalcClick
  end
  object FBCONNECTION: TSQLConnection
    ConnectionName = 'FBCONNECTION'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      ';DelegateConnection=DBXTraceConnection'
      'drivername=Firebird'
      'database=C:\code\sessions\datasnapclass_nov11\data\EMPLOYEE.FDB'
      'rolename=RoleName'
      'user_name=sysdba'
      'password=masterkey'
      'sqldialect=3'
      'localecode=0000'
      'blobsize=-1'
      'commitretain=False'
      'waitonlocks=True'
      'isolationlevel=ReadCommitted'
      'trim char=False'
      'ServerCharSet='
      'ErrorResourceFile=')
    VendorLib = 'fbclient.dll'
    Left = 42
    Top = 146
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 40
    Top = 320
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from Employee'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FBCONNECTION
    Left = 40
    Top = 200
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 40
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 40
    Top = 376
  end
end
