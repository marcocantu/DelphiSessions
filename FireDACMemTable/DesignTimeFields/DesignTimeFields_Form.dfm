object Form26: TForm26
  Left = 0
  Top = 0
  Caption = 'Form26'
  ClientHeight = 629
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 64
    Top = 96
    Width = 416
    Height = 208
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 168
    Top = 352
    Width = 473
    Height = 249
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Enabled'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 96
    Top = 96
    Content = {
      4144425310000000AB010000FF00010001FF02FF03040016000000460044004D
      0065006D005400610062006C0065003100050016000000460044004D0065006D
      005400610062006C0065003100060000000000070000080032000000090000FF
      0AFF0B04000400000049004400050004000000490044000C00010000000E000D
      000F000110000111000112000113000114000115000400000049004400FEFF0B
      0400080000004E0061006D0065000500080000004E0061006D0065000C000200
      00000E0016001700280000000F00011000011100011200011300011400011500
      080000004E0061006D006500180028000000FEFF0B04000E00000045006E0061
      0062006C006500640005000E00000045006E00610062006C00650064000C0003
      0000000E0019000F000110000111000112000113000114000115000E00000045
      006E00610062006C0065006400FEFEFF1AFEFF1BFEFF1CFF1D1E0000000000FF
      1F0000010000000100050000004D6172636F02000100FEFEFF1D1E0001000000
      FF1F0000020000000100040000004A6F686E02000000FEFEFEFEFEFF20FEFF21
      220002000000FF23FEFEFE0E004D0061006E0061006700650072001E00550070
      0064006100740065007300520065006700690073007400720079001200540061
      0062006C0065004C006900730074000A005400610062006C00650008004E0061
      006D006500140053006F0075007200630065004E0061006D0065000A00540061
      00620049004400240045006E0066006F0072006300650043006F006E00730074
      007200610069006E00740073001E004D0069006E0069006D0075006D00430061
      00700061006300690074007900180043006800650063006B004E006F0074004E
      0075006C006C00140043006F006C0075006D006E004C006900730074000C0043
      006F006C0075006D006E00100053006F007500720063006500490044000E0064
      00740049006E0074003300320010004400610074006100540079007000650014
      00530065006100720063006800610062006C006500120041006C006C006F0077
      004E0075006C006C000800420061007300650014004F0041006C006C006F0077
      004E0075006C006C0012004F0049006E0055007000640061007400650010004F
      0049006E00570068006500720065001A004F0072006900670069006E0043006F
      006C004E0061006D00650018006400740041006E007300690053007400720069
      006E0067000800530069007A006500140053006F007500720063006500530069
      007A00650012006400740042006F006F006C00650061006E001C0043006F006E
      00730074007200610069006E0074004C00690073007400100056006900650077
      004C006900730074000E0052006F0077004C00690073007400060052006F0077
      000A0052006F0077004900440010004F0072006900670069006E0061006C0018
      00520065006C006100740069006F006E004C006900730074001C005500700064
      0061007400650073004A006F00750072006E0061006C00120053006100760065
      0050006F0069006E0074000E004300680061006E00670065007300}
    object FDMemTable1ID: TIntegerField
      FieldName = 'ID'
    end
    object FDMemTable1Name: TStringField
      FieldName = 'Name'
      Size = 40
    end
    object FDMemTable1Enabled: TBooleanField
      FieldName = 'Enabled'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 304
    Top = 224
  end
  object FDMemTable2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 96
    Top = 328
  end
  object DataSource2: TDataSource
    DataSet = FDMemTable2
    Left = 240
    Top = 392
  end
end