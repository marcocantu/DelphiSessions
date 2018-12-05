object FilesResource1: TFilesResource1
  OldCreateOrder = False
  Height = 188
  Width = 260
  object EMSFileResource1: TEMSFileResource
    AllowedActions = [List, Get]
    PathTemplate = 'c:\temp\{id}'
    Left = 80
    Top = 72
  end
end
