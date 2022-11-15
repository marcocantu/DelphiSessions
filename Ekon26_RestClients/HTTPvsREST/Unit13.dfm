object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'HTTP vs. REST'
  ClientHeight = 882
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 160
    Top = 48
    Width = 75
    Height = 25
    Caption = 'HTTP'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 64
    Top = 112
    Width = 785
    Height = 593
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 624
    Top = 48
    Width = 75
    Height = 25
    Caption = 'REST'
    TabOrder = 2
    OnClick = Button2Click
  end
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 48
    Top = 48
  end
  object NetHTTPRequest1: TNetHTTPRequest
    URL = 'https://feeds2.feedburner.com/marcocantublog?format=xml'
    Client = NetHTTPClient1
    Left = 112
    Top = 48
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://feeds2.feedburner.com'
    Params = <>
    SynchronizedEvents = False
    Left = 416
    Top = 48
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Name = 'format'
        Value = 'xml'
      end>
    Resource = 'marcocantublog'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 496
    Top = 48
  end
  object RESTResponse1: TRESTResponse
    Left = 576
    Top = 48
  end
end
