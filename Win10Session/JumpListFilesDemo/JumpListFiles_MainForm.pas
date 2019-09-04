unit JumpListFiles_MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.JumpList, System.Win.TaskbarCore,
  Vcl.Taskbar, Vcl.StdCtrls;

type
  TJumpListForm = class(TForm)
    JumpList1: TJumpList;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
  private
    function CmdLineOpenFiles(AMultipleFiles: boolean): boolean;
    { Private declarations }
  public
    procedure DropFiles(var Msg: TWmDropFiles); message wm_DropFiles;
    procedure CopyData(var Msg: TWmCopyData); message wm_CopyData;
    procedure OpenFile (filename: string);
  end;

var
  JumpListForm: TJumpListForm;

implementation

{$R *.dfm}

uses
  ShellAPI;

{ TJumpListForm }

function TJumpListForm.CmdLineOpenFiles(AMultipleFiles: boolean): boolean;
var
  i, Cnt: integer;
begin
  Cnt := ParamCount;
  if Cnt > 0 then
  begin
    if not AMultipleFiles and (Cnt > 1) then
      Cnt := 1;
    for i := 1 to Cnt do
      OpenFile (ParamStr(i));
    Result := True;
  end
  else
    Result := False;
end;


procedure TJumpListForm.CopyData(var Msg: TWmCopyData);
var
  Filename: string;
begin
  // restore the window if minimized
  if IsIconic(Application.Handle) then
    Application.Restore;

  // extract the filename from the data
  SetLength(FileName, Msg.CopyDataStruct.cbData);
  StrCopy(PChar(FileName), Msg.CopyDataStruct.lpData);
  Filename := PChar(FileName);
  // open the file
  OpenFile (FileName);
end;

procedure TJumpListForm.DropFiles(var Msg: TWmDropFiles);
var
  nFiles, I: Integer;
  Filename: string;
  jumpItem: TJumpListItem;
begin
  // get the number of dropped files
  nFiles := DragQueryFile(Msg.Drop, $FFFFFFFF, nil, 0);
  // for each file
  try
    for I := 0 to nFiles - 1 do
    begin
      // allocate memory
      SetLength(Filename, 1024);
      // read the file name
      DragQueryFile(Msg.Drop, I, PChar(Filename), 1024 * 2);
      // normalize file
      Filename := PChar(Filename);
      // open the file
      OpenFile(FileName);
      // add file to Jump List
      jumpItem := JumpList1.CustomCategories[0].Items.Add as TJumpListItem;
      jumpItem.FriendlyName := ExtractFilename (Filename);
      jumpItem.Arguments := Filename; // full path

    end;
  finally
    DragFinish(Msg.Drop);
  end;
end;

procedure TJumpListForm.FormCreate(Sender: TObject);
begin
  CmdLineOpenFiles(TRUE);
  // accept dragging to the form
  DragAcceptFiles(Handle, True);
end;

procedure TJumpListForm.OpenFile(filename: string);
begin
  // this is just a placeholder
  ListBox1.Items.Add (filename);
end;

end.
