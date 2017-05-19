unit WinRTD_Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Winapi.WinRT, System.Win.WinRT, Winapi.CommonTypes, System.Generics.Collections,
  Winapi.UI.Notifications;

type
  TForm8 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FNotifications: TDictionary <string, IToastNotification>;
    LWSAppID: TWindowsString;
    FToastNotifier: IToastNotifier;
  public

  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses
  System.Win.Notification, Winapi.ShlObj,
  Winapi.ActiveX, Winapi.KnownFolders, Winapi.PropSys, System.Hash,
  Winapi.PropKey,
  System.Messaging,


  Winapi.DataRT,
  Winapi.Storage,
  Winapi.Foundation,
  System.Notification;

const
    AppId = 'Embarcadero.DesktopToasts.';

function CreateShortcut: Boolean;
var
  Path: PWideChar;
  LBufferPath: array [0..MAX_PATH] of Char;
  ShortcutPath: string;
  LShellLink: IShellLink;
  LPropertyStore: Winapi.PropSys.IPropertyStore;
  LAppIdPropVar: PROPVARIANT;
  LSaveLink: Boolean;
  LFindData: TWin32FindDataW;
begin
  Result := False;
  if Succeeded(SHGetKnownFolderPath(FOLDERID_Programs, 0, 0, Path)) then
  begin
    ShortcutPath := string(Path) + '\' + ChangeFileExt(ExtractFileName(ParamStr(0)), '.lnk');

    if FileExists(ShortcutPath) and Succeeded(CoCreateInstance(CLSID_ShellLink, nil, CLSCTX_INPROC_SERVER, IShellLink, LShellLink)) and
       Succeeded((LShellLink as IPersistFile).Load(PWideChar(ShortcutPath), 0)) and
       Succeeded(LShellLink.GetPath(LBufferPath, MAX_PATH, LFindData, 0)) and (LBufferPath = ParamStr(0)) then
        Result := True
    else
      if Succeeded(CoCreateInstance(CLSID_ShellLink, nil, CLSCTX_INPROC_SERVER, IShellLink, LShellLink)) then
      begin
        LShellLink.SetPath(PChar(ParamStr(0)));
        LShellLink.SetWorkingDirectory(PChar(ExtractFilePath(ParamStr(0))));
        LPropertyStore := LShellLink as Winapi.PropSys.IPropertyStore;
        ZeroMemory(@LAppIdPropVar,SizeOf(LAppIdPropVar));
        if Succeeded(InitPropVariantFromString(PWideChar(AppID + THashBobJenkins.GetHashString(ParamStr(0))), LAppIdPropVar)) then
          try
            if Succeeded(LPropertyStore.SetValue(PKEY_AppUserModel_ID, LAppIdPropVar)) and
               Succeeded(LPropertyStore.Commit) then
            begin
              LSaveLink := True;
              if FileExists(ShortcutPath) then
                LSaveLink := System.SysUtils.DeleteFile(ShortcutPath);
              if LSaveLink then
                Result := Succeeded((LShellLink as IPersistFile).Save(PChar(ShortcutPath), True));
            end;
          finally
            PropVariantClear(LAppIdPropVar);
          end;
      end;
  end;
end;


{ TNotificationCenterDelegateActivated }
type
  TNotificationCenterDelegateActivated = class(TInspectableObject, TypedEventHandler_2__IToastNotification__IInspectable,
    TypedEventHandler_2__IToastNotification__IInspectable_Delegate_Base)
  private
    FNotification: TNotification;
  public
    constructor Create(const ANotification: TNotification);
    destructor Destroy; override;
    procedure Invoke(sender: IToastNotification; args: IInspectable); safecall;
  end;

{ TNotificationCenterDelegateActivated }

constructor TNotificationCenterDelegateActivated.Create(const ANotification: TNotification);
begin
  inherited Create;
  FNotification := TNotification.Create;
  FNotification.Assign(ANotification);
end;

destructor TNotificationCenterDelegateActivated.Destroy;
begin
  FNotification.Free;
  inherited;
end;

procedure TNotificationCenterDelegateActivated.Invoke(sender: IToastNotification; args: IInspectable);
begin
  ShowMessage ('here!');
//  TMessageManager.DefaultManager.SendMessage(
//    Self, TMessage<TNotification>.Create(FNotification));
end;


{ TToastTemplateGenerator }
type
  TToastTemplateGenerator = class abstract
  private
    { Helpers for working with XML Template }
    class function TryGetNodes(const ATemplate: Xml_Dom_IXmlDocument; const ANodeName: string; out ANodes: Xml_Dom_IXmlNodeList): Boolean; static;
    class function SelectSingleNode(const ATemplate: Xml_Dom_IXmlDocument; const ANodeName: string; out ANode: Xml_Dom_IXmlElement): Boolean; static;
  public
    class function GetXMLDoc(const ANotification: TNotification): Xml_Dom_IXmlDocument; static;
 end;

class function TToastTemplateGenerator.GetXMLDoc(const ANotification: TNotification): Xml_Dom_IXmlDocument;

  function SelectTemplate: ToastTemplateType;
  begin
    if (ANotification.Title <> '') and (ANotification.AlertBody <> '') then
      Result := ToastTemplateType.ToastText02
    else
      Result := ToastTemplateType.ToastText01;
  end;

var
  LToastsTextElements: Xml_Dom_IXmlNodeList;
  LWSTitleString: TWindowsString;
  LWSBodyString: TWindowsString;
  LTemplateType: ToastTemplateType;
  LToastNode: Xml_Dom_IXmlElement;
  LStr1, LStr2: TWindowsString;
  LAudioNode: Xml_Dom_IXmlElement;
begin
  LTemplateType := SelectTemplate;
  Result := TToastNotificationManager.Statics.GetTemplateContent(LTemplateType);

  if SelectSingleNode(Result, '/toast', LToastNode) then
  begin
    LStr1 := TWindowsString.Create('duration');
    LStr2 := TWindowsString.Create('short');
    LToastNode.SetAttribute(LStr1, LStr2);
  end;

  LStr1 := TWindowsString.Create('audio');
  LAudioNode := Result.CreateElement(LStr1);
  if not ANotification.EnableSound then
  begin
    LStr1 := TWindowsString.Create('silent');
    LStr2 := TWindowsString.Create('true');
    LAudioNode.SetAttribute(LStr1, LStr2);
  end;

  case LTemplateType of
    ToastTemplateType.ToastText01:
      begin
        if TryGetNodes(Result, 'text', LToastsTextElements) and (LToastsTextElements.Length > 0) then
        begin
          LWSTitleString := TWindowsString.Create(ANotification.Title + ANotification.AlertBody);
          (LToastsTextElements.Item(0) as Xml_Dom_IXmlNodeSerializer).InnerText := LWSTitleString;
        end;
      end;
    ToastTemplateType.ToastText02:
      begin
        if TryGetNodes(Result, 'text', LToastsTextElements) and (LToastsTextElements.Length >= 2) then
        begin
          LWSTitleString := TWindowsString.Create(ANotification.Title);
          (LToastsTextElements.Item(0) as Xml_Dom_IXmlNodeSerializer).InnerText := LWSTitleString;

          LWSBodyString := TWindowsString.Create(ANotification.AlertBody);
          (LToastsTextElements.Item(1) as Xml_Dom_IXmlNodeSerializer).InnerText := LWSBodyString;
        end;
      end;
  end;
end;

class function TToastTemplateGenerator.SelectSingleNode(const ATemplate: Xml_Dom_IXmlDocument; const ANodeName: string;
  out ANode: Xml_Dom_IXmlElement): Boolean;
var
  LNodeNameString: TWindowsString;
begin
  ANode := nil;
  LNodeNameString := TWindowsString.Create(ANodeName);
  ANode := (ATemplate as Xml_Dom_IXmlNodeSelector).SelectSingleNode(LNodeNameString) as Xml_Dom_IXmlElement;
  Result := ANode <> nil;
end;

class function TToastTemplateGenerator.TryGetNodes(const ATemplate: Xml_Dom_IXmlDocument; const ANodeName: string;
  out ANodes: Xml_Dom_IXmlNodeList): Boolean;
var
  LNodeNameString: TWindowsString;
begin
  ANodes := nil;
  LNodeNameString := TWindowsString.Create(ANodeName);
  ANodes := ATemplate.GetElementsByTagName(LNodeNameString);
  Result := ANodes <> nil;
end;

//////////////////////////////// main form code

procedure TForm8.Button1Click(Sender: TObject);
var
  MyNotification: TNotification;
  LToast: IToastNotification;
  LDelegateActivated: TNotificationCenterDelegateActivated;

begin
  if CreateShortcut then
  begin
    MyNotification := TNotification.Create;
    MyNotification.Name := 'Windows10Notification';
    MyNotification.Title := 'Windows 10 Notification #1';
    MyNotification.AlertBody := 'RAD Studio 10 Tokyo';

    LToast := TToastNotification.Factory.CreateToastNotification(
      TToastTemplateGenerator.GetXMLDoc(MyNotification));

    System.TMonitor.Enter(FNotifications);
    try
      FNotifications.AddOrSetValue(MyNotification.Name, LToast);
    finally
      System.TMonitor.Exit(FNotifications);
    end;

    LDelegateActivated := TNotificationCenterDelegateActivated.Create(MyNotification);
    LToast.add_Activated(LDelegateActivated);

    FToastNotifier := TToastNotificationManager.Statics.CreateToastNotifier(LWSAppID);
    FToastNotifier.Show(LToast);
  end;


end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  FNotifications := TDictionary<string, IToastNotification>.Create;
  LWSAppID := TWindowsString.Create(AppId + THashBobJenkins.GetHashString(ParamStr(0)));
  FToastNotifier := TToastNotificationManager.Statics.CreateToastNotifier(LWSAppID);
end;

procedure TForm8.FormDestroy(Sender: TObject);
begin
  FNotifications.Free;
end;

end.
