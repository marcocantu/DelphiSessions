object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 454
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object Image1: TImage
    Left = 96
    Top = 211
    Width = 167
    Height = 135
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 333
    Top = 38
    Width = 200
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataSource = DataSource1
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 96
    Top = 109
    Width = 167
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 96
    Top = 138
    Width = 167
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 96
    Top = 171
    Width = 167
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 3
    Text = 'Edit3'
  end
  object ListBox1: TListBox
    Left = 333
    Top = 109
    Width = 205
    Height = 237
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ItemHeight = 12
    TabOrder = 4
  end
  object TrackBar1: TTrackBar
    Left = 96
    Top = 371
    Width = 359
    Height = 36
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Max = 50
    TabOrder = 5
    ThumbLength = 16
  end
  object Edit4: TEdit
    Left = 96
    Top = 83
    Width = 167
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 6
    Text = 'Edit4'
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FileName = 'C:\code_2021\Expressions_Bindings\06_BindingsDB\biolife.cds'
    FetchOnDemand = False
    Params = <>
    Left = 48
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 128
    Top = 40
  end
  object BindScopeDB1: TBindScopeDB
    DataSource = DataSource1
    ScopeMappings = <>
    Left = 208
    Top = 40
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 292
    Top = 45
    object BindLinkEdit11: TBindLink
      Category = 'Links'
      SourceMemberName = 'Category'
      ControlComponent = Edit1
      SourceComponent = BindScopeDB1
      ParseExpressions = <>
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'Value'
        end>
      ClearExpressions = <>
      Track = False
    end
    object BindLinkEdit21: TBindLink
      Category = 'Links'
      SourceMemberName = 'Species Name'
      ControlComponent = Edit2
      SourceComponent = BindScopeDB1
      ParseExpressions = <>
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'Value'
        end>
      ClearExpressions = <>
      Track = False
    end
    object BindLinkEdit31: TBindLink
      Category = 'Links'
      SourceMemberName = 'Length (cm)'
      ControlComponent = Edit3
      SourceComponent = BindScopeDB1
      ParseExpressions = <>
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      ClearExpressions = <>
      Track = False
    end
    object BindPositionTrackBar11: TBindPosition
      Category = 'Links'
      ControlComponent = TrackBar1
      SourceComponent = BindScopeDB1
      PosSourceExpressions = <>
      PosControlExpressions = <
        item
          ControlExpression = 'Position'
          SourceExpression = 'RecNo'
        end>
      PosClearExpressions = <>
    end
    object BindListListBox11: TBindList
      Category = 'Lists'
      ControlComponent = ListBox1
      SourceComponent = BindScopeDB1
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'ToStr(RecNo) + ". " + FieldByName("Category").AsString'
        end>
      FormatControlExpressions = <>
      ClearControlExpressions = <>
    end
    object BindLinkImage11: TBindLink
      Category = 'Links'
      SourceMemberName = 'Graphic'
      ControlComponent = Image1
      SourceComponent = BindScopeDB1
      ParseExpressions = <>
      FormatExpressions = <
        item
          ControlExpression = 'Picture'
          SourceExpression = 'self'
        end>
      ClearExpressions = <>
      Track = False
    end
    object BindLinkEdit41: TBindLink
      Category = 'Links'
      SourceMemberName = 'Species No'
      SourceComponent = BindScopeDB1
      ParseExpressions = <>
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      ClearExpressions = <>
      Track = False
    end
    object BindLinkEdit42: TBindLink
      Category = 'Links'
      SourceMemberName = 'Species No'
      SourceComponent = BindScopeDB1
      ParseExpressions = <>
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      ClearExpressions = <>
      Track = False
    end
    object BindLinkEdit43: TBindLink
      Category = 'Links'
      SourceMemberName = 'Length_In'
      ControlComponent = Edit4
      SourceComponent = BindScopeDB1
      ParseExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      FormatExpressions = <
        item
          ControlExpression = 'Text'
          SourceExpression = 'AsString'
        end>
      ClearExpressions = <>
      Track = False
    end
  end
end
