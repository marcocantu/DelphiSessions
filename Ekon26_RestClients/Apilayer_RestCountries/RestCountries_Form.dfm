object Form43: TForm43
  Left = 0
  Top = 0
  Caption = 'Form43'
  ClientHeight = 598
  ClientWidth = 1270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -22
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 192
  TextHeight = 27
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1270
    Height = 82
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1256
    DesignSize = (
      1270
      82)
    object Label1: TLabel
      Left = 656
      Top = 23
      Width = 36
      Height = 27
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Key'
    end
    object Label2: TLabel
      Left = 16
      Top = 23
      Width = 48
      Height = 27
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Filter'
    end
    object Edit1: TEdit
      Left = 98
      Top = 20
      Width = 479
      Height = 35
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'United'
    end
    object Button1: TButton
      Left = 1104
      Top = 13
      Width = 150
      Height = 50
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Open'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 704
      Top = 20
      Width = 388
      Height = 35
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 82
    Width = 1270
    Height = 516
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -22
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://api.countrylayer.com/v2'
    Params = <>
    SynchronizedEvents = False
    Left = 32
    Top = 240
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <
      item
        Name = 'access_key'
      end>
    Resource = 'name/united'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 96
    Top = 240
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 168
    Top = 240
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = JSONOnly
    Left = 232
    Top = 240
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 296
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 360
    Top = 240
  end
end
