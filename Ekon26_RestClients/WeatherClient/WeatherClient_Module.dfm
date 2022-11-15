object DataModule14: TDataModule14
  Height = 1920
  Width = 2560
  PixelsPerInch = 192
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://api.weatherstack.com'
    Params = <>
    SynchronizedEvents = False
    Left = 144
    Top = 88
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <
      item
        Name = 'access_key'
        Value = 'add your access key'
      end
      item
        Name = 'query'
        Value = 'Piacenza, Italy'
      end>
    Resource = 'current'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 336
    Top = 80
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    RootElement = 'current'
    Left = 560
    Top = 80
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = JSONOnly
    Left = 848
    Top = 80
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'observation_time'
        DataType = ftWideString
        Size = 8
      end
      item
        Name = 'temperature'
        DataType = ftFloat
      end
      item
        Name = 'weather_code'
        DataType = ftFloat
      end
      item
        Name = 'weather_icons'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'weather_descriptions'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'wind_speed'
        DataType = ftFloat
      end
      item
        Name = 'wind_degree'
        DataType = ftFloat
      end
      item
        Name = 'wind_dir'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'pressure'
        DataType = ftFloat
      end
      item
        Name = 'precip'
        DataType = ftFloat
      end
      item
        Name = 'humidity'
        DataType = ftFloat
      end
      item
        Name = 'cloudcover'
        DataType = ftFloat
      end
      item
        Name = 'feelslike'
        DataType = ftFloat
      end
      item
        Name = 'uv_index'
        DataType = ftFloat
      end
      item
        Name = 'visibility'
        DataType = ftFloat
      end
      item
        Name = 'is_day'
        DataType = ftWideString
        Size = 3
      end>
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
    Left = 1128
    Top = 80
  end
end
