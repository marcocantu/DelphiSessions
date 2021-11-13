object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'ListView Objects'
  ClientHeight = 415
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 409
    Top = 0
    Width = 150
    Height = 415
    Align = alClient
    Caption = 
      'This demo shows 30 objects representing employees from different' +
      ' offices. With LiveBindings we can easily group this data and sh' +
      'ow a great summary of the data'
    WordWrap = True
    ExplicitWidth = 143
    ExplicitHeight = 78
  end
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 409
    Height = 415
    Align = alLeft
    Columns = <
      item
        Caption = 'First Name'
        Width = 100
      end
      item
        Caption = 'Last Name'
        Width = 100
      end
      item
        Caption = 'Office'
        Width = 100
      end
      item
        Alignment = taRightJustify
        Caption = 'Salary'
        Width = 80
      end>
    Groups = <
      item
        Header = 'Software Engineer'
        GroupID = 0
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 1
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 2
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 3
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 4
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 5
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 6
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 7
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 8
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 9
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 10
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 11
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 12
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 13
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 14
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 15
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 16
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 17
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Software Engineer'
        GroupID = 18
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 19
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 20
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 21
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 22
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 23
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 24
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 25
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 26
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 27
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 28
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 29
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 30
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 31
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 32
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 33
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 34
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 35
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Software Engineer'
        GroupID = 36
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 37
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 38
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 39
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 40
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 41
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 42
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 43
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 44
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 45
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 46
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 47
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 48
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 49
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 50
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 51
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 52
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 53
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Software Engineer'
        GroupID = 54
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 55
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 56
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 57
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 58
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 59
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 60
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 61
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 62
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 63
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 64
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 65
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 66
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 67
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 68
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 69
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 70
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 71
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Software Engineer'
        GroupID = 72
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 73
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 74
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 75
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 76
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 77
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 78
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 79
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 80
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 81
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 82
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 83
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 84
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 85
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 86
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 87
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 88
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 89
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Software Engineer'
        GroupID = 90
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 91
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 92
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 93
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 94
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 95
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 96
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 97
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 98
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 99
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 100
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 101
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 102
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 103
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 104
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 105
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 106
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 107
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Software Engineer'
        GroupID = 108
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 109
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 110
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 111
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 112
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 113
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 114
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 115
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 116
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 117
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 118
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 119
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 120
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 121
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 122
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 123
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 124
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 125
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Software Engineer'
        GroupID = 126
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 127
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 128
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 129
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 130
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 131
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 132
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 133
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 134
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 135
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 136
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 137
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 138
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 139
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 140
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 141
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 142
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 143
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Software Engineer'
        GroupID = 144
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 145
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 146
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 147
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 148
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 149
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 150
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 151
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 152
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 153
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 154
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 155
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 156
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 157
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 158
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 159
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 160
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 161
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Software Engineer'
        GroupID = 162
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 163
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 164
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 165
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 166
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Vice President'
        GroupID = 167
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Sales Manager'
        GroupID = 168
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 169
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 170
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 171
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Accountant'
        GroupID = 172
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Product Specialist'
        GroupID = 173
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 174
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'IT Manager'
        GroupID = 175
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Account Manager'
        GroupID = 176
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Receptionist'
        GroupID = 177
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Staffing Manager'
        GroupID = 178
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Marketing Director'
        GroupID = 179
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end>
    Items.ItemData = {
      05485A0000C800000000000000FFFFFFFFFFFFFFFF0300000002000000040000
      000A4100640061006D002000420072006F0077006E00084200690074006D0061
      00700031003400000000000F4D0065006400690075006D00760069006F006C00
      650074007200650064000000000005380031002E003800310000000000000000
      00FFFFFFFFFFFFFFFF030000000A0000000D0000000A4100640061006D002000
      420072006F0077006E00084200690074006D006100700032003900000000000E
      4D0065006400690075006D0073006500610067007200650065006E0000000000
      063100340032002E00340031000000000000000000FFFFFFFFFFFFFFFF030000
      0014000000180000000A4100640061006D002000420072006F0077006E000742
      00690074006D006100700036000000000006530061006C006D006F006E000000
      0000053100370031002E0037000000000000000000FFFFFFFFFFFFFFFF030000
      001C000000210000000A4100640061006D002000420072006F0077006E000842
      00690074006D00610070003100330000000000084400610072006B0063007900
      61006E000000000005320031002E00320031000000000000000000FFFFFFFFFF
      FFFFFF03000000260000002C0000000A4100640061006D002000420072006F00
      77006E00084200690074006D0061007000320031000000000006500075007200
      70006C00650000000000063100380036002E00380035000000000000000000FF
      FFFFFFFFFFFFFF030000002E000000350000000A4100640061006D0020004200
      72006F0077006E00084200690074006D00610070003100360000000000094300
      610064006500740062006C00750065000000000005350035002E003500350000
      00000000000000FFFFFFFFFFFFFFFF0300000038000000400000000A41006400
      61006D002000420072006F0077006E00074200690074006D0061007000310000
      0000000949006E006400690061006E00720065006400000000000438002E0030
      0038000000000000000000FFFFFFFFFFFFFFFF0300000040000000490000000A
      4100640061006D002000420072006F0077006E00084200690074006D00610070
      0034003200000000000C4C00690067006800740073006B00790062006C007500
      65000000000005350037002E00350037000000000000000000FFFFFFFFFFFFFF
      FF030000004A000000540000000A4100640061006D002000420072006F007700
      6E00084200690074006D006100700033003400000000000953006C0061007400
      650067007200650079000000000005320038002E003200380000000000000000
      00FFFFFFFFFFFFFFFF03000000520000005D0000000A4100640061006D002000
      420072006F0077006E00084200690074006D006100700032003300000000000A
      4C00690067006800740067007200650065006E000000000005310038002E0031
      0038000000000000000000FFFFFFFFFFFFFFFF030000005C000000680000000A
      4100640061006D002000420072006F0077006E00084200690074006D00610070
      0031003400000000000848006F006E0065007900640065007700000000000631
      00380032002E00380031000000000000000000FFFFFFFFFFFFFFFF0300000064
      000000710000000A4100640061006D002000420072006F0077006E0008420069
      0074006D006100700032003900000000000A4400610072006B00730061006C00
      6D006F006E0000000000063100330039002E00330038000000000000000000FF
      FFFFFFFFFFFFFF030000006E0000007C0000000A4100640061006D0020004200
      72006F0077006E00074200690074006D00610070003600000000000B44006100
      72006B006D006100670065006E00740061000000000005340032002E00340032
      000000000000000000FFFFFFFFFFFFFFFF0300000076000000850000000A4100
      640061006D002000420072006F0077006E00084200690074006D006100700031
      00330000000000074D006500640047007200610079000000000005330031002E
      00330031000000000000000000FFFFFFFFFFFFFFFF0300000080000000900000
      000A4100640061006D002000420072006F0077006E00084200690074006D0061
      0070003200310000000000104D0065006400690075006D006100710075006100
      6D006100720069006E00650000000000063100380030002E0037003900000000
      0000000000FFFFFFFFFFFFFFFF0300000088000000990000000A410064006100
      6D002000420072006F0077006E00084200690074006D00610070003100360000
      0000000E4C00690067006800740073007400650065006C0062006C0075006500
      00000000053100340031002E0034000000000000000000FFFFFFFFFFFFFFFF03
      00000092000000A40000000A4100640061006D002000420072006F0077006E00
      074200690074006D00610070003100000000000947006F006C00640065006E00
      72006F00640000000000063100360032002E00360031000000000000000000FF
      FFFFFFFFFFFFFF030000009A000000AD0000000A4100640061006D0020004200
      72006F0077006E00084200690074006D006100700034003200000000000D4C00
      6100760065006E0064006500720062006C007500730068000000000005350036
      002E00350036000000000000000000FFFFFFFFFFFFFFFF03000000A4000000B8
      0000000A4100640061006D002000420072006F0077006E00084200690074006D
      006100700033003400000000000748006F007400700069006E006B0000000000
      05380038002E00380038000000000000000000FFFFFFFFFFFFFFFF03000000AC
      000000C10000000A4100640061006D002000420072006F0077006E0008420069
      0074006D00610070003200330000000000094200750072006C00790077006F00
      6F00640000000000063100340033002E00340032000000000000000000FFFFFF
      FFFFFFFFFF03000000080000000B0000000F4300680072006900730074006900
      6E00650020004A006F006E0065007300084200690074006D0061007000340034
      0000000000144C00690067006800740067006F006C00640065006E0072006F00
      6400790065006C006C006F00770000000000063100370035002E003700340000
      00000000000000FFFFFFFFFFFFFFFF0300000011000000140000000F43006800
      720069007300740069006E00650020004A006F006E0065007300084200690074
      006D006100700033003300000000000A43006800610072007400720065007500
      7300650000000000063100390033002E00390032000000000000000000FFFFFF
      FFFFFFFFFF030000001A0000001F0000000F4300680072006900730074006900
      6E00650020004A006F006E0065007300084200690074006D0061007000310031
      00000000000853006500610067007200650065006E000000000005350034002E
      00350034000000000000000000FFFFFFFFFFFFFFFF0300000023000000280000
      000F43006800720069007300740069006E00650020004A006F006E0065007300
      084200690074006D006100700032003700000000000C4D006500640069007500
      6D006F007200630068006900640000000000063100300033002E003000320000
      00000000000000FFFFFFFFFFFFFFFF030000002C000000330000000F43006800
      720069007300740069006E00650020004A006F006E0065007300084200690074
      006D006100700032003800000000000447006F006C0064000000000006310036
      0036002E00360035000000000000000000FFFFFFFFFFFFFFFF03000000350000
      003C0000000F43006800720069007300740069006E00650020004A006F006E00
      65007300084200690074006D006100700032003200000000000A42006C007500
      6500760069006F006C006500740000000000063100380039002E003800380000
      00000000000000FFFFFFFFFFFFFFFF030000003E000000470000000F43006800
      720069007300740069006E00650020004A006F006E0065007300084200690074
      006D00610070003300320000000000094C006900670068007400630079006100
      6E0000000000053100390031002E0039000000000000000000FFFFFFFFFFFFFF
      FF0300000047000000500000000F43006800720069007300740069006E006500
      20004A006F006E0065007300084200690074006D006100700033003700000000
      00074D006100670065006E007400610000000000063100390036002E00390035
      000000000000000000FFFFFFFFFFFFFFFF03000000500000005B0000000F4300
      6800720069007300740069006E00650020004A006F006E006500730008420069
      0074006D00610070003300310000000000064F00720063006800690064000000
      000005360035002E00360035000000000000000000FFFFFFFFFFFFFFFF030000
      0059000000640000000F43006800720069007300740069006E00650020004A00
      6F006E0065007300084200690074006D006100700033003800000000000E4200
      6C0061006E00630068006500640061006C006D006F006E006400000000000631
      00340034002E00340033000000000000000000FFFFFFFFFFFFFFFF0300000062
      0000006F0000000F43006800720069007300740069006E00650020004A006F00
      6E0065007300084200690074006D00610070003400340000000000064F007200
      61006E006700650000000000063100340036002E003400350000000000000000
      00FFFFFFFFFFFFFFFF030000006B000000780000000F43006800720069007300
      740069006E00650020004A006F006E0065007300084200690074006D00610070
      0033003300000000000C4C0065006D006F006E00630068006900660066006F00
      6E0000000000063100330033002E00330032000000000000000000FFFFFFFFFF
      FFFFFF0300000074000000830000000F43006800720069007300740069006E00
      650020004A006F006E0065007300084200690074006D00610070003100310000
      0000000B53007000720069006E00670067007200650065006E00000000000631
      00350036002E00350035000000000000000000FFFFFFFFFFFFFFFF030000007D
      0000008C0000000F43006800720069007300740069006E00650020004A006F00
      6E0065007300084200690074006D006100700032003700000000000649006E00
      6400690067006F000000000005310039002E00310039000000000000000000FF
      FFFFFFFFFFFFFF0300000086000000970000000F430068007200690073007400
      69006E00650020004A006F006E0065007300084200690074006D006100700032
      003800000000000A50006F00770064006500720062006C007500650000000000
      04310030002E0031000000000000000000FFFFFFFFFFFFFFFF030000008F0000
      00A00000000F43006800720069007300740069006E00650020004A006F006E00
      65007300084200690074006D006100700032003200000000000B4E0061007600
      61006A006F00770068006900740065000000000005370035002E003700350000
      00000000000000FFFFFFFFFFFFFFFF0300000098000000AB0000000F43006800
      720069007300740069006E00650020004A006F006E0065007300084200690074
      006D006100700033003200000000000F4D0065006400690075006D0074007500
      7200710075006F0069007300650000000000063100390030002E003800390000
      00000000000000FFFFFFFFFFFFFFFF03000000A1000000B40000000F43006800
      720069007300740069006E00650020004A006F006E0065007300084200690074
      006D00610070003300370000000000084400610072006B0062006C0075006500
      00000000063100300038002E00300037000000000000000000FFFFFFFFFFFFFF
      FF03000000AA000000BF0000000F43006800720069007300740069006E006500
      20004A006F006E0065007300084200690074006D006100700033003100000000
      00065300690065006E006E006100000000000439002E00300039000000000000
      000000FFFFFFFFFFFFFFFF03000000B3000000C80000000F4300680072006900
      7300740069006E00650020004A006F006E0065007300084200690074006D0061
      0070003300380000000000094700610069006E00730062006F0072006F000000
      000005340036002E00340036000000000000000000FFFFFFFFFFFFFFFF030000
      000C0000000F0000000C44006F006E006E00610020004D006100720074006900
      6E00084200690074006D006100700034003000000000000450006C0075006D00
      0000000004380030002E0038000000000000000000FFFFFFFFFFFFFFFF030000
      0010000000130000000C44006F006E006E00610020004D006100720074006900
      6E00084200690074006D006100700031003700000000000B4E00610076006100
      6A006F00770068006900740065000000000005380036002E0038003600000000
      0000000000FFFFFFFFFFFFFFFF030000001E000000230000000C44006F006E00
      6E00610020004D0061007200740069006E00074200690074006D006100700032
      0000000000074400610072006B0072006500640000000000063100370034002E
      00370033000000000000000000FFFFFFFFFFFFFFFF0300000022000000270000
      000C44006F006E006E00610020004D0061007200740069006E00074200690074
      006D0061007000370000000000084400610072006B0062006C00750065000000
      000005350039002E00350039000000000000000000FFFFFFFFFFFFFFFF030000
      0030000000370000000C44006F006E006E00610020004D006100720074006900
      6E00084200690074006D00610070003400310000000000044700720065007900
      0000000005330034002E00330034000000000000000000FFFFFFFFFFFFFFFF03
      000000340000003B0000000C44006F006E006E00610020004D00610072007400
      69006E00084200690074006D0061007000320035000000000009470061006900
      6E00730062006F0072006F0000000000063100390034002E0039003300000000
      0000000000FFFFFFFFFFFFFFFF03000000420000004B0000000C44006F006E00
      6E00610020004D0061007200740069006E00084200690074006D006100700034
      003800000000000C4D00690064006E00690067006800740062006C0075006500
      00000000063100330030002E00320039000000000000000000FFFFFFFFFFFFFF
      FF03000000460000004F0000000C44006F006E006E00610020004D0061007200
      740069006E00084200690074006D006100700031003500000000000943006800
      6F0063006F006C0061007400650000000000063100310033002E003100320000
      00000000000000FFFFFFFFFFFFFFFF03000000540000005F0000000C44006F00
      6E006E00610020004D0061007200740069006E00084200690074006D00610070
      003400390000000000084D006F00630063006100730069006E00000000000631
      00330032002E00330031000000000000000000FFFFFFFFFFFFFFFF0300000058
      000000630000000C44006F006E006E00610020004D0061007200740069006E00
      084200690074006D00610070003500300000000000094C006900670068007400
      62006C00750065000000000005310034002E00310034000000000000000000FF
      FFFFFFFFFFFFFF0300000066000000730000000C44006F006E006E0061002000
      4D0061007200740069006E00084200690074006D006100700034003000000000
      000B590065006C006C006F00770067007200650065006E000000000006310035
      0039002E00350038000000000000000000FFFFFFFFFFFFFFFF030000006A0000
      00770000000C44006F006E006E00610020004D0061007200740069006E000842
      00690074006D006100700031003700000000000D4400610072006B0074007500
      7200710075006F0069007300650000000000063100330036002E003300350000
      00000000000000FFFFFFFFFFFFFFFF0300000078000000870000000C44006F00
      6E006E00610020004D0061007200740069006E00074200690074006D00610070
      003200000000000B53006100640064006C006500620072006F0077006E000000
      000005330033002E00330033000000000000000000FFFFFFFFFFFFFFFF030000
      007C0000008B0000000C44006F006E006E00610020004D006100720074006900
      6E00074200690074006D00610070003700000000000D500061006C0065007600
      69006F006C00650074007200650064000000000005390035002E003900350000
      00000000000000FFFFFFFFFFFFFFFF030000008A0000009B0000000C44006F00
      6E006E00610020004D0061007200740069006E00084200690074006D00610070
      003400310000000000064C00740047007200610079000000000005360032002E
      00360032000000000000000000FFFFFFFFFFFFFFFF030000008E0000009F0000
      000C44006F006E006E00610020004D0061007200740069006E00084200690074
      006D006100700032003500000000000F4D0065006400690075006D0073006C00
      61007400650062006C00750065000000000005330032002E0033003200000000
      0000000000FFFFFFFFFFFFFFFF030000009C000000AF0000000C44006F006E00
      6E00610020004D0061007200740069006E00084200690074006D006100700034
      003800000000000A4D006F006E006500790047007200650065006E0000000000
      05320034002E00320034000000000000000000FFFFFFFFFFFFFFFF03000000A0
      000000B30000000C44006F006E006E00610020004D0061007200740069006E00
      084200690074006D006100700031003500000000000642006900730071007500
      650000000000063100350033002E00350032000000000000000000FFFFFFFFFF
      FFFFFF03000000AE000000C30000000C44006F006E006E00610020004D006100
      7200740069006E00084200690074006D00610070003400390000000000055700
      68006500610074000000000005390034002E00390034000000000000000000FF
      FFFFFFFFFFFFFF03000000B2000000C70000000C44006F006E006E0061002000
      4D0061007200740069006E00084200690074006D006100700035003000000000
      000B440065006500700073006B00790062006C00750065000000000006310037
      0032002E00370031000000000000000000FFFFFFFFFFFFFFFF03000000090000
      000C0000000C4A0061006D006500730020004700610072006300690061000842
      00690074006D006100700033003600000000000E4C0069006700680074007300
      7400650065006C0062006C007500650000000000063100360039002E00360038
      000000000000000000FFFFFFFFFFFFFFFF030000000D000000100000000C4A00
      61006D00650073002000470061007200630069006100074200690074006D0061
      0070003800000000000953007400650065006C0062006C007500650000000000
      0434002E00300034000000000000000000FFFFFFFFFFFFFFFF030000001B0000
      00200000000C4A0061006D006500730020004700610072006300690061000842
      00690074006D006100700034003500000000000D4C006100760065006E006400
      6500720062006C0075007300680000000000063100390032002E003900310000
      00000000000000FFFFFFFFFFFFFFFF030000001F000000240000000C4A006100
      6D00650073002000470061007200630069006100074200690074006D00610070
      003500000000000B46006C006F00720061006C00770068006900740065000000
      0000063100360037002E00360036000000000000000000FFFFFFFFFFFFFFFF03
      0000002D000000340000000C4A0061006D006500730020004700610072006300
      69006100084200690074006D0061007000340036000000000009420075007200
      6C00790077006F006F006400000000000437002E003000370000000000000000
      00FFFFFFFFFFFFFFFF0300000031000000380000000C4A0061006D0065007300
      2000470061007200630069006100084200690074006D00610070003400330000
      00000007440069006D0067007200650079000000000005320035002E00320035
      000000000000000000FFFFFFFFFFFFFFFF030000003F000000480000000C4A00
      61006D00650073002000470061007200630069006100074200690074006D0061
      0070003300000000000A5700680069007400650073006D006F006B0065000000
      0000063100370037002E00370036000000000000000000FFFFFFFFFFFFFFFF03
      000000430000004C0000000C4A0061006D006500730020004700610072006300
      69006100074200690074006D00610070003900000000000D500061006C006500
      67006F006C00640065006E0072006F0064000000000005360033002E00360033
      000000000000000000FFFFFFFFFFFFFFFF03000000510000005C0000000C4A00
      61006D00650073002000470061007200630069006100084200690074006D0061
      0070003200340000000000094D00690073007400790072006F00730065000000
      0000063100380038002E00380037000000000000000000FFFFFFFFFFFFFFFF03
      00000055000000600000000C4A0061006D006500730020004700610072006300
      69006100084200690074006D0061007000320036000000000009540075007200
      710075006F006900730065000000000005390037002E00390037000000000000
      000000FFFFFFFFFFFFFFFF0300000063000000700000000C4A0061006D006500
      73002000470061007200630069006100084200690074006D0061007000330036
      0000000000054200650069006700650000000000063100380034002E00380033
      000000000000000000FFFFFFFFFFFFFFFF0300000067000000740000000C4A00
      61006D00650073002000470061007200630069006100074200690074006D0061
      0070003800000000000D4400610072006B0073006C0061007400650067007200
      650079000000000005340038002E00340038000000000000000000FFFFFFFFFF
      FFFFFF0300000075000000840000000C4A0061006D0065007300200047006100
      7200630069006100084200690074006D00610070003400350000000000084400
      650065007000700069006E006B0000000000063100340038002E003400370000
      00000000000000FFFFFFFFFFFFFFFF0300000079000000880000000C4A006100
      6D00650073002000470061007200630069006100074200690074006D00610070
      00350000000000094F006C006900760065006400720061006200000000000631
      00350032002E00350031000000000000000000FFFFFFFFFFFFFFFF0300000087
      000000980000000C4A0061006D00650073002000470061007200630069006100
      084200690074006D00610070003400360000000000144C006900670068007400
      67006F006C00640065006E0072006F006400790065006C006C006F0077000000
      000005380039002E00380039000000000000000000FFFFFFFFFFFFFFFF030000
      008B0000009C0000000C4A0061006D0065007300200047006100720063006900
      6100084200690074006D006100700034003300000000000450006C0075006D00
      00000000063100320039002E00320038000000000000000000FFFFFFFFFFFFFF
      FF0300000099000000AC0000000C4A0061006D00650073002000470061007200
      630069006100074200690074006D006100700033000000000008530065006100
      67007200650065006E0000000000063100370033002E00370032000000000000
      000000FFFFFFFFFFFFFFFF030000009D000000B00000000C4A0061006D006500
      73002000470061007200630069006100074200690074006D0061007000390000
      000000074400610072006B0072006500640000000000063100320034002E0032
      0033000000000000000000FFFFFFFFFFFFFFFF03000000AB000000C00000000C
      4A0061006D00650073002000470061007200630069006100084200690074006D
      006100700032003400000000000447006F006C00640000000000063100380035
      002E00380034000000000000000000FFFFFFFFFFFFFFFF03000000AF000000C4
      0000000C4A0061006D0065007300200047006100720063006900610008420069
      0074006D00610070003200360000000000044700720065007900000000000533
      0039002E00330039000000000000000000FFFFFFFFFFFFFFFF03000000000000
      00010000000D4D00610072006B00200041006E0064006500720073006F006E00
      084200690074006D006100700032003800000000000D4400610072006B006700
      6F006C00640065006E0072006F0064000000000005360037002E003600370000
      00000000000000FFFFFFFFFFFFFFFF0300000000000000020000000D4D006100
      72006B00200041006E0064006500720073006F006E00084200690074006D0061
      007000340036000000000005490076006F00720079000000000005370039002E
      00370039000000000000000000FFFFFFFFFFFFFFFF0300000012000000150000
      000D4D00610072006B00200041006E0064006500720073006F006E0008420069
      0074006D006100700033003200000000000753006B00790062006C0075006500
      00000000063100370038002E00370037000000000000000000FFFFFFFFFFFFFF
      FF0300000012000000160000000D4D00610072006B00200041006E0064006500
      720073006F006E00074200690074006D00610070003300000000000C44006100
      72006B0073006500610067007200650065006E000000000005310032002E0031
      0032000000000000000000FFFFFFFFFFFFFFFF0300000024000000290000000D
      4D00610072006B00200041006E0064006500720073006F006E00084200690074
      006D00610070003300310000000000094400610072006B006B00680061006B00
      690000000000053100360031002E0036000000000000000000FFFFFFFFFFFFFF
      FF03000000240000002A0000000D4D00610072006B00200041006E0064006500
      720073006F006E00084200690074006D006100700032003400000000000A4C00
      690067006800740063006F00720061006C0000000000063100310037002E0031
      0036000000000000000000FFFFFFFFFFFFFFFF03000000360000003D0000000D
      4D00610072006B00200041006E0064006500720073006F006E00084200690074
      006D006100700034003400000000000A4D0065006400690075006D0062006C00
      750065000000000005360038002E00360038000000000000000000FFFFFFFFFF
      FFFFFF03000000360000003E0000000D4D00610072006B00200041006E006400
      6500720073006F006E00084200690074006D0061007000330036000000000009
      4D0069006E00740063007200650061006D0000000000063100330035002E0033
      0034000000000000000000FFFFFFFFFFFFFFFF0300000048000000510000000D
      4D00610072006B00200041006E0064006500720073006F006E00084200690074
      006D00610070003100310000000000085300650061007300680065006C006C00
      00000000063100360030002E00350039000000000000000000FFFFFFFFFFFFFF
      FF0300000048000000520000000D4D00610072006B00200041006E0064006500
      720073006F006E00084200690074006D00610070003400350000000000094C00
      6900670068007400700069006E006B000000000005380032002E003800320000
      00000000000000FFFFFFFFFFFFFFFF030000005A000000650000000D4D006100
      72006B00200041006E0064006500720073006F006E00084200690074006D0061
      00700032003800000000000E4C00690067006800740073006C00610074006500
      67007200650079000000000005330036002E00330036000000000000000000FF
      FFFFFFFFFFFFFF030000005A000000660000000D4D00610072006B0020004100
      6E0064006500720073006F006E00084200690074006D00610070003400360000
      0000000D4400610072006B0073006C0061007400650062006C00750065000000
      0000063100350035002E00350034000000000000000000FFFFFFFFFFFFFFFF03
      0000006C000000790000000D4D00610072006B00200041006E00640065007200
      73006F006E00084200690074006D006100700033003200000000000A44006100
      72006B006F00720061006E006700650000000000053100310031002E00310000
      00000000000000FFFFFFFFFFFFFFFF030000006C0000007A0000000D4D006100
      72006B00200041006E0064006500720073006F006E00074200690074006D0061
      007000330000000000044300790061006E0000000000063100370036002E0037
      0035000000000000000000FFFFFFFFFFFFFFFF030000007E0000008D0000000D
      4D00610072006B00200041006E0064006500720073006F006E00084200690074
      006D00610070003300310000000000094400610072006B006700720065006500
      6E00000000000436002E00300036000000000000000000FFFFFFFFFFFFFFFF03
      0000007E0000008E0000000D4D00610072006B00200041006E00640065007200
      73006F006E00084200690074006D006100700032003400000000000D44006100
      72006B0067006F006C00640065006E0072006F0064000000000005340037002E
      00340037000000000000000000FFFFFFFFFFFFFFFF0300000090000000A10000
      000D4D00610072006B00200041006E0064006500720073006F006E0008420069
      0074006D006100700034003400000000000A4300680061007200740072006500
      75007300650000000000063100320037002E00320036000000000000000000FF
      FFFFFFFFFFFFFF0300000090000000A20000000D4D00610072006B0020004100
      6E0064006500720073006F006E00084200690074006D00610070003300360000
      0000000753006B00790062006C007500650000000000063100370030002E0036
      0039000000000000000000FFFFFFFFFFFFFFFF03000000A2000000B50000000D
      4D00610072006B00200041006E0064006500720073006F006E00084200690074
      006D006100700031003100000000000C4D0065006400690075006D006F007200
      63006800690064000000000005340035002E00340035000000000000000000FF
      FFFFFFFFFFFFFF03000000A2000000B60000000D4D00610072006B0020004100
      6E0064006500720073006F006E00084200690074006D00610070003400350000
      000000094400610072006B006B00680061006B00690000000000063100300035
      002E00300034000000000000000000FFFFFFFFFFFFFFFF030000000400000006
      0000000B4D006100720079002000480061007200720069007300084200690074
      006D006100700034003300000000000A530061006E0064007900620072006F00
      77006E000000000005340031002E00340031000000000000000000FFFFFFFFFF
      FFFFFF0300000006000000090000000B4D006100720079002000480061007200
      720069007300084200690074006D006100700032003500000000000B47007200
      650065006E00790065006C006C006F0077000000000005370031002E00370031
      000000000000000000FFFFFFFFFFFFFFFF03000000160000001A0000000B4D00
      6100720079002000480061007200720069007300074200690074006D00610070
      003900000000000953006C0061007400650062006C0075006500000000000532
      0039002E00320039000000000000000000FFFFFFFFFFFFFFFF03000000180000
      001D0000000B4D00610072007900200048006100720072006900730008420069
      0074006D006100700031003500000000000A44006F0064006700650072006200
      6C007500650000000000063100350037002E00350036000000000000000000FF
      FFFFFFFFFFFFFF03000000280000002E0000000B4D0061007200790020004800
      61007200720069007300084200690074006D006100700032003600000000000B
      46006F00720065007300740067007200650065006E000000000005370036002E
      00370036000000000000000000FFFFFFFFFFFFFFFF030000002A000000310000
      000B4D006100720079002000480061007200720069007300084200690074006D
      00610070003500300000000000084C006100760065006E006400650072000000
      0000053100380031002E0038000000000000000000FFFFFFFFFFFFFFFF030000
      003A000000420000000B4D006100720079002000480061007200720069007300
      074200690074006D0061007000380000000000064D00610072006F006F006E00
      00000000063100310036002E00310035000000000000000000FFFFFFFFFFFFFF
      FF030000003C000000450000000B4D0061007200790020004800610072007200
      69007300084200690074006D0061007000310037000000000003540061006E00
      0000000005380034002E00380034000000000000000000FFFFFFFFFFFFFFFF03
      0000004C000000560000000B4D00610072007900200048006100720072006900
      7300074200690074006D00610070003500000000000B4C006900670068007400
      730061006C006D006F006E000000000005310033002E00310033000000000000
      000000FFFFFFFFFFFFFFFF030000004E000000590000000B4D00610072007900
      2000480061007200720069007300074200690074006D00610070003700000000
      00074300720069006D0073006F006E000000000005390032002E003900320000
      00000000000000FFFFFFFFFFFFFFFF030000005E0000006A0000000B4D006100
      720079002000480061007200720069007300084200690074006D006100700034
      003300000000000D4C006500670061006300790053006B00790042006C007500
      650000000000063100300039002E00300038000000000000000000FFFFFFFFFF
      FFFFFF03000000600000006D0000000B4D006100720079002000480061007200
      720069007300084200690074006D006100700032003500000000000A44006100
      72006B00760069006F006C006500740000000000053100350031002E00350000
      00000000000000FFFFFFFFFFFFFFFF03000000700000007E0000000B4D006100
      720079002000480061007200720069007300074200690074006D006100700039
      00000000000543007200650061006D0000000000053100320031002E00320000
      00000000000000FFFFFFFFFFFFFFFF0300000072000000810000000B4D006100
      720079002000480061007200720069007300084200690074006D006100700031
      0035000000000005420072006F0077006E0000000000063100310034002E0031
      0033000000000000000000FFFFFFFFFFFFFFFF0300000082000000920000000B
      4D006100720079002000480061007200720069007300084200690074006D0061
      00700032003600000000000A470068006F007300740077006800690074006500
      00000000063100340037002E00340036000000000000000000FFFFFFFFFFFFFF
      FF0300000084000000950000000B4D0061007200790020004800610072007200
      69007300084200690074006D006100700035003000000000000442006C007500
      650000000000063100320030002E00310039000000000000000000FFFFFFFFFF
      FFFFFF0300000094000000A60000000B4D006100720079002000480061007200
      720069007300074200690074006D006100700038000000000007540068006900
      730074006C00650000000000063100300032002E003000310000000000000000
      00FFFFFFFFFFFFFFFF0300000096000000A90000000B4D006100720079002000
      480061007200720069007300084200690074006D006100700031003700000000
      00094F00720061006E006700650072006500640000000000063100340035002E
      00340034000000000000000000FFFFFFFFFFFFFFFF03000000A6000000BA0000
      000B4D006100720079002000480061007200720069007300074200690074006D
      0061007000350000000000114D0065006400690075006D007300700072006900
      6E00670067007200650065006E0000000000063100370039002E003700380000
      00000000000000FFFFFFFFFFFFFFFF03000000A8000000BD0000000B4D006100
      720079002000480061007200720069007300074200690074006D006100700037
      0000000000094C00690067006800740067007200650079000000000005380035
      002E00380035000000000000000000FFFFFFFFFFFFFFFF030000000300000005
      0000000E4D0069006300680065006C006C006500200053006D00690074006800
      084200690074006D006100700034003100000000000A470068006F0073007400
      770068006900740065000000000005330037002E003300370000000000000000
      00FFFFFFFFFFFFFFFF030000000B0000000E0000000E4D006900630068006500
      6C006C006500200053006D00690074006800074200690074006D006100700031
      0000000000064C007400470072006100790000000000063100390035002E0039
      0034000000000000000000FFFFFFFFFFFFFFFF0300000015000000190000000E
      4D0069006300680065006C006C006500200053006D0069007400680008420069
      0074006D0061007000340038000000000007540068006900730074006C006500
      00000000063100350030002E00340039000000000000000000FFFFFFFFFFFFFF
      FF030000001D000000220000000E4D0069006300680065006C006C0065002000
      53006D00690074006800084200690074006D006100700033003400000000000A
      4D006F006E006500790047007200650065006E0000000000063100330037002E
      00330036000000000000000000FFFFFFFFFFFFFFFF03000000270000002D0000
      000E4D0069006300680065006C006C006500200053006D006900740068000842
      00690074006D00610070003400390000000000114D0065006400690075006D00
      73007000720069006E00670067007200650065006E0000000000033200300032
      000000000000000000FFFFFFFFFFFFFFFF030000002F000000360000000E4D00
      69006300680065006C006C006500200053006D00690074006800084200690074
      006D006100700031003400000000000557006800650061007400000000000432
      0030002E0032000000000000000000FFFFFFFFFFFFFFFF030000003900000041
      0000000E4D0069006300680065006C006C006500200053006D00690074006800
      084200690074006D006100700034003000000000000654006F006D0061007400
      6F00000000000431002E00300031000000000000000000FFFFFFFFFFFFFFFF03
      000000410000004A0000000E4D0069006300680065006C006C00650020005300
      6D00690074006800074200690074006D00610070003600000000000A50006100
      700061007900610077006800690070000000000005320037002E003200370000
      00000000000000FFFFFFFFFFFFFFFF030000004B000000550000000E4D006900
      6300680065006C006C006500200053006D00690074006800074200690074006D
      00610070003200000000000E4400610072006B006F006C006900760065006700
      7200650065006E000000000005340039002E00340039000000000000000000FF
      FFFFFFFFFFFFFF03000000530000005E0000000E4D0069006300680065006C00
      6C006500200053006D00690074006800084200690074006D0061007000320031
      00000000000352006500640000000000063100360035002E0036003400000000
      0000000000FFFFFFFFFFFFFFFF030000005D000000690000000E4D0069006300
      680065006C006C006500200053006D00690074006800084200690074006D0061
      007000340031000000000009460069007200650062007200690063006B000000
      000004350030002E0035000000000000000000FFFFFFFFFFFFFFFF0300000065
      000000720000000E4D0069006300680065006C006C006500200053006D006900
      74006800074200690074006D006100700031000000000006560069006F006C00
      6500740000000000063100330038002E00330037000000000000000000FFFFFF
      FFFFFFFFFF030000006F0000007D0000000E4D0069006300680065006C006C00
      6500200053006D00690074006800084200690074006D00610070003400380000
      000000084400610072006B0067007200650079000000000005360031002E0036
      0031000000000000000000FFFFFFFFFFFFFFFF0300000077000000860000000E
      4D0069006300680065006C006C006500200053006D0069007400680008420069
      0074006D006100700033003400000000000952006F0073007900620072006F00
      77006E0000000000063100300037002E00300036000000000000000000FFFFFF
      FFFFFFFFFF0300000081000000910000000E4D0069006300680065006C006C00
      6500200053006D00690074006800084200690074006D00610070003400390000
      0000000F4D0065006400690075006D00760069006F006C006500740072006500
      64000000000004330030002E0033000000000000000000FFFFFFFFFFFFFFFF03
      000000890000009A0000000E4D0069006300680065006C006C00650020005300
      6D00690074006800084200690074006D006100700031003400000000000E4D00
      65006400690075006D0073006500610067007200650065006E00000000000432
      002E00300032000000000000000000FFFFFFFFFFFFFFFF0300000093000000A5
      0000000E4D0069006300680065006C006C006500200053006D00690074006800
      084200690074006D0061007000340030000000000006530061006C006D006F00
      6E000000000005310031002E00310031000000000000000000FFFFFFFFFFFFFF
      FF030000009B000000AE0000000E4D0069006300680065006C006C0065002000
      53006D00690074006800074200690074006D0061007000360000000000084400
      610072006B006300790061006E0000000000063100300036002E003000350000
      00000000000000FFFFFFFFFFFFFFFF03000000A5000000B90000000E4D006900
      6300680065006C006C006500200053006D00690074006800074200690074006D
      00610070003200000000000650007500720070006C0065000000000005380033
      002E00380033000000000000000000FFFFFFFFFFFFFFFF03000000AD000000C2
      0000000E4D0069006300680065006C006C006500200053006D00690074006800
      084200690074006D006100700032003100000000000943006100640065007400
      62006C00750065000000000005340034002E00340034000000000000000000FF
      FFFFFFFFFFFFFF0300000001000000030000000A5000610075006C0020004400
      6100760069007300084200690074006D00610070003100360000000000104D00
      65006400690075006D0061007100750061006D006100720069006E0065000000
      000005370038002E00370038000000000000000000FFFFFFFFFFFFFFFF030000
      000F000000120000000A5000610075006C002000440061007600690073000842
      00690074006D006100700031003000000000000F4D0065006400690075006D00
      73006C0061007400650062006C007500650000000000063100380033002E0038
      0032000000000000000000FFFFFFFFFFFFFFFF0300000013000000170000000A
      5000610075006C00200044006100760069007300084200690074006D00610070
      0034003200000000000947006F006C00640065006E0072006F00640000000000
      05390036002E00390036000000000000000000FFFFFFFFFFFFFFFF0300000021
      000000260000000A5000610075006C0020004400610076006900730007420069
      0074006D00610070003400000000000642006900730071007500650000000000
      05310036002E00310036000000000000000000FFFFFFFFFFFFFFFF0300000025
      0000002B0000000A5000610075006C0020004400610076006900730008420069
      0074006D006100700032003300000000000748006F007400700069006E006B00
      00000000063100360038002E00360037000000000000000000FFFFFFFFFFFFFF
      FF03000000330000003A0000000A5000610075006C0020004400610076006900
      7300084200690074006D006100700031003900000000000B4400650065007000
      73006B00790062006C00750065000000000005380037002E0038003700000000
      0000000000FFFFFFFFFFFFFFFF03000000370000003F0000000A500061007500
      6C00200044006100760069007300084200690074006D00610070003200390000
      00000004500069006E006B000000000005360034002E00360034000000000000
      000000FFFFFFFFFFFFFFFF03000000450000004E0000000A5000610075006C00
      200044006100760069007300084200690074006D006100700032003000000000
      000C4D0065006400690075006D0070007500720070006C006500000000000437
      0030002E0037000000000000000000FFFFFFFFFFFFFFFF030000004900000053
      0000000A5000610075006C00200044006100760069007300084200690074006D
      006100700031003300000000000A41007100750061006D006100720069006E00
      650000000000063100340039002E00340038000000000000000000FFFFFFFFFF
      FFFFFF0300000057000000620000000A5000610075006C002000440061007600
      69007300084200690074006D006100700031003800000000000543006F007200
      61006C0000000000053100330031002E0033000000000000000000FFFFFFFFFF
      FFFFFF030000005B000000670000000A5000610075006C002000440061007600
      69007300084200690074006D006100700031003600000000000A440061007200
      6B006F00720063006800690064000000000005320036002E0032003600000000
      0000000000FFFFFFFFFFFFFFFF0300000069000000760000000A500061007500
      6C00200044006100760069007300084200690074006D00610070003100300000
      0000000557006800690074006500000000000331003000310000000000000000
      00FFFFFFFFFFFFFFFF030000006D0000007B0000000A5000610075006C002000
      44006100760069007300084200690074006D006100700034003200000000000C
      41006E0074006900710075006500770068006900740065000000000006310038
      0037002E00380036000000000000000000FFFFFFFFFFFFFFFF030000007B0000
      008A0000000A5000610075006C00200044006100760069007300074200690074
      006D00610070003400000000000952006F00790061006C0062006C0075006500
      00000000063100310038002E00310037000000000000000000FFFFFFFFFFFFFF
      FF030000007F0000008F0000000A5000610075006C0020004400610076006900
      7300084200690074006D0061007000320033000000000005490076006F007200
      790000000000063100360033002E00360032000000000000000000FFFFFFFFFF
      FFFFFF030000008D0000009E0000000A5000610075006C002000440061007600
      69007300084200690074006D00610070003100390000000000044E0061007600
      790000000000063100320035002E00320034000000000000000000FFFFFFFFFF
      FFFFFF0300000091000000A30000000A5000610075006C002000440061007600
      69007300084200690074006D006100700032003900000000000C440061007200
      6B0073006500610067007200650065006E0000000000063100320033002E0032
      0032000000000000000000FFFFFFFFFFFFFFFF030000009F000000B20000000A
      5000610075006C00200044006100760069007300084200690074006D00610070
      0032003000000000000541007A0075007200650000000000063100330034002E
      00330033000000000000000000FFFFFFFFFFFFFFFF03000000A3000000B70000
      000A5000610075006C00200044006100760069007300084200690074006D0061
      00700031003300000000000A4C00690067006800740063006F00720061006C00
      00000000063100350038002E00350037000000000000000000FFFFFFFFFFFFFF
      FF03000000B1000000C60000000A5000610075006C0020004400610076006900
      7300084200690074006D00610070003100380000000000074F006C0064006C00
      6100630065000000000005350033002E00350033000000000000000000FFFFFF
      FFFFFFFFFF03000000070000000A0000000B5300740065007600650020004D00
      6F006F0072006500084200690074006D006100700032003200000000000A5000
      6F00770064006500720062006C00750065000000000005310035002E00310035
      000000000000000000FFFFFFFFFFFFFFFF030000000E000000110000000B5300
      740065007600650020004D006F006F0072006500084200690074006D00610070
      003300350000000000044E006100760079000000000005370033002E00370033
      000000000000000000FFFFFFFFFFFFFFFF03000000190000001E0000000B5300
      740065007600650020004D006F006F0072006500084200690074006D00610070
      0033003700000000000F4D0065006400690075006D0074007500720071007500
      6F00690073006500000000000435002E00300035000000000000000000FFFFFF
      FFFFFFFFFF0300000020000000250000000B5300740065007600650020004D00
      6F006F0072006500084200690074006D00610070003300300000000000054100
      7A0075007200650000000000063100320036002E003200350000000000000000
      00FFFFFFFFFFFFFFFF030000002B000000320000000B53007400650076006500
      20004D006F006F0072006500084200690074006D006100700033003800000000
      00065300690065006E006E00610000000000063100320032002E003200310000
      00000000000000FFFFFFFFFFFFFFFF0300000032000000390000000B53007400
      65007600650020004D006F006F0072006500084200690074006D006100700034
      00370000000000074F006C0064006C006100630065000000000005310037002E
      00310037000000000000000000FFFFFFFFFFFFFFFF030000003D000000460000
      000B5300740065007600650020004D006F006F0072006500084200690074006D
      006100700033003300000000000D4C0069006700680074007300650061006700
      7200650065006E000000000005390039002E00390039000000000000000000FF
      FFFFFFFFFFFFFF03000000440000004D0000000B530074006500760065002000
      4D006F006F0072006500084200690074006D0061007000330039000000000004
      5400650061006C000000000005350032002E00350032000000000000000000FF
      FFFFFFFFFFFFFF030000004F0000005A0000000B530074006500760065002000
      4D006F006F0072006500084200690074006D0061007000320037000000000004
      53006E006F00770000000000063100310035002E003100340000000000000000
      00FFFFFFFFFFFFFFFF0300000056000000610000000B53007400650076006500
      20004D006F006F0072006500084200690074006D006100700031003200000000
      00054B00680061006B0069000000000005350031002E00350031000000000000
      000000FFFFFFFFFFFFFFFF03000000610000006E0000000B5300740065007600
      650020004D006F006F0072006500084200690074006D00610070003200320000
      0000000D500061006C006500740075007200710075006F006900730065000000
      000004390030002E0039000000000000000000FFFFFFFFFFFFFFFF0300000068
      000000750000000B5300740065007600650020004D006F006F00720065000842
      00690074006D0061007000330035000000000009500065006100630068007000
      750066006600000000000130000000000000000000FFFFFFFFFFFFFFFF030000
      0073000000820000000B5300740065007600650020004D006F006F0072006500
      084200690074006D0061007000330037000000000006590065006C006C006F00
      770000000000063100390039002E00390038000000000000000000FFFFFFFFFF
      FFFFFF030000007A000000890000000B5300740065007600650020004D006F00
      6F0072006500084200690074006D006100700033003000000000000B4C006900
      670068007400790065006C006C006F0077000000000005390031002E00390031
      000000000000000000FFFFFFFFFFFFFFFF0300000085000000960000000B5300
      740065007600650020004D006F006F0072006500084200690074006D00610070
      0033003800000000000B47007200650065006E00790065006C006C006F007700
      0000000005360036002E00360036000000000000000000FFFFFFFFFFFFFFFF03
      0000008C0000009D0000000B5300740065007600650020004D006F006F007200
      6500084200690074006D00610070003400370000000000095300740065006500
      6C0062006C00750065000000000005330035002E003300350000000000000000
      00FFFFFFFFFFFFFFFF0300000097000000AA0000000B53007400650076006500
      20004D006F006F0072006500084200690074006D006100700033003300000000
      000A44006F00640067006500720062006C0075006500000000000433002E0030
      0033000000000000000000FFFFFFFFFFFFFFFF030000009E000000B10000000B
      5300740065007600650020004D006F006F0072006500084200690074006D0061
      00700033003900000000000B46006C006F00720061006C007700680069007400
      650000000000063100350034002E00350033000000000000000000FFFFFFFFFF
      FFFFFF03000000A9000000BE0000000B5300740065007600650020004D006F00
      6F0072006500084200690074006D00610070003200370000000000084C006100
      760065006E006400650072000000000005370032002E00370032000000000000
      000000FFFFFFFFFFFFFFFF03000000B0000000C50000000B5300740065007600
      650020004D006F006F0072006500084200690074006D00610070003100320000
      00000007440069006D0067007200650079000000000005370037002E00370037
      000000000000000000FFFFFFFFFFFFFFFF0300000005000000070000000D5300
      7500730061006E002000530061006E006300680065007A00084200690074006D
      006100700034003700000000000E43006F0072006E0066006C006F0077006500
      720062006C00750065000000000005340033002E003400330000000000000000
      00FFFFFFFFFFFFFFFF0300000005000000080000000D53007500730061006E00
      2000530061006E006300680065007A00084200690074006D0061007000310039
      00000000000442006C00750065000000000004360030002E0036000000000000
      000000FFFFFFFFFFFFFFFF03000000170000001B0000000D5300750073006100
      6E002000530061006E006300680065007A00084200690074006D006100700033
      00390000000000094C00610077006E0067007200650065006E00000000000532
      0032002E00320032000000000000000000FFFFFFFFFFFFFFFF03000000170000
      001C0000000D53007500730061006E002000530061006E006300680065007A00
      084200690074006D00610070003200300000000000094F00720061006E006700
      650072006500640000000000063100340030002E003300390000000000000000
      00FFFFFFFFFFFFFFFF03000000290000002F0000000D53007500730061006E00
      2000530061006E006300680065007A00084200690074006D0061007000310032
      0000000000044C0069006D00650000000000063100310039002E003100380000
      00000000000000FFFFFFFFFFFFFFFF0300000029000000300000000D53007500
      730061006E002000530061006E006300680065007A00084200690074006D0061
      0070003100380000000000094C00690067006800740067007200650079000000
      0000063100390037002E00390036000000000000000000FFFFFFFFFFFFFFFF03
      0000003B000000430000000D53007500730061006E002000530061006E006300
      680065007A00084200690074006D006100700033003500000000000843006F00
      72006E00730069006C006B000000000005350038002E00350038000000000000
      000000FFFFFFFFFFFFFFFF030000003B000000440000000D5300750073006100
      6E002000530061006E006300680065007A00084200690074006D006100700031
      00300000000000094C0069006D00650067007200650065006E00000000000631
      00310030002E00300039000000000000000000FFFFFFFFFFFFFFFF030000004D
      000000570000000D53007500730061006E002000530061006E00630068006500
      7A00084200690074006D00610070003300300000000000054F006C0069007600
      650000000000063100360034002E00360033000000000000000000FFFFFFFFFF
      FFFFFF030000004D000000580000000D53007500730061006E00200053006100
      6E006300680065007A00074200690074006D0061007000340000000000054700
      7200650065006E000000000005390038002E00390038000000000000000000FF
      FFFFFFFFFFFFFF030000005F0000006B0000000D53007500730061006E002000
      530061006E006300680065007A00084200690074006D00610070003400370000
      0000000542006C00610063006B000000000005390033002E0039003300000000
      0000000000FFFFFFFFFFFFFFFF030000005F0000006C0000000D530075007300
      61006E002000530061006E006300680065007A00084200690074006D00610070
      00310039000000000009500061006C00650067007200650065006E0000000000
      05370034002E00370034000000000000000000FFFFFFFFFFFFFFFF0300000071
      0000007F0000000D53007500730061006E002000530061006E00630068006500
      7A00084200690074006D00610070003300390000000000045000650072007500
      0000000005360039002E00360039000000000000000000FFFFFFFFFFFFFFFF03
      00000071000000800000000D53007500730061006E002000530061006E006300
      680065007A00084200690074006D00610070003200300000000000054C006900
      6E0065006E0000000000063100320038002E00320037000000000000000000FF
      FFFFFFFFFFFFFF0300000083000000930000000D53007500730061006E002000
      530061006E006300680065007A00084200690074006D00610070003100320000
      0000000A530061006E0064007900620072006F0077006E000000000006320030
      0030002E00390039000000000000000000FFFFFFFFFFFFFFFF03000000830000
      00940000000D53007500730061006E002000530061006E006300680065007A00
      084200690074006D006100700031003800000000000E43006F0072006E006600
      6C006F0077006500720062006C007500650000000000063100310032002E0031
      0031000000000000000000FFFFFFFFFFFFFFFF0300000095000000A70000000D
      53007500730061006E002000530061006E006300680065007A00084200690074
      006D006100700033003500000000000953006C0061007400650062006C007500
      65000000000005330038002E00330038000000000000000000FFFFFFFFFFFFFF
      FF0300000095000000A80000000D53007500730061006E002000530061006E00
      6300680065007A00084200690074006D00610070003100300000000000094C00
      610077006E0067007200650065006E0000000000063100390038002E00390037
      000000000000000000FFFFFFFFFFFFFFFF03000000A7000000BB0000000D5300
      7500730061006E002000530061006E006300680065007A00084200690074006D
      006100700033003000000000000B46006F007200650073007400670072006500
      65006E000000000004340030002E0034000000000000000000FFFFFFFFFFFFFF
      FF03000000A7000000BC0000000D53007500730061006E002000530061006E00
      6300680065007A00074200690074006D0061007000340000000000044C006900
      6D00650000000000063100300034002E003000330000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF}
    GroupView = True
    SortType = stBoth
    TabOrder = 0
    ViewStyle = vsReport
  end
  object PrototypeBindSource1: TPrototypeBindSource
    AutoActivate = True
    AutoPost = False
    FieldDefs = <
      item
        Name = 'FirstName'
        Generator = 'ContactNames'
        ReadOnly = False
      end
      item
        Name = 'LastName'
        Generator = 'BitmapNames'
        ReadOnly = False
      end
      item
        Name = 'Office'
        Generator = 'ContactTitles'
        ReadOnly = False
      end
      item
        Name = 'Salary'
        FieldType = ftCurrency
        Generator = 'Currency'
        ReadOnly = False
      end
      item
        Name = 'Team'
        Generator = 'ColorsNames'
        ReadOnly = False
      end>
    ScopeMappings = <>
    OnCreateAdapter = PrototypeBindSource1CreateAdapter
    Left = 464
    Top = 120
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 468
    Top = 181
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = ListView1
      Track = True
      FillDataSource = PrototypeBindSource1
      FillDisplayFieldName = 'FirstName'
      AutoFill = True
      FillExpressions = <
        item
          SourceMemberName = 'LastName'
          ControlMemberName = 'SubItems[0]'
        end
        item
          SourceMemberName = 'Team'
          ControlMemberName = 'SubItems[1]'
        end
        item
          SourceMemberName = 'Salary'
          ControlMemberName = 'SubItems[2]'
        end>
      FillHeaderExpressions = <>
      FillHeaderFieldName = 'Office'
      FillBreakGroups = <>
    end
  end
end
