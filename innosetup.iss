; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "ODM"
#define VerFile FileOpen("VERSION")
#define MyAppVersion FileRead(VerFile)
#expr FileClose(VerFile)
#undef VerFile
#define MyAppPublisher "OpenDroneMap"
#define MyAppURL "https://opendronemap.org"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{443998BA-9F8F-4A69-9A96-0D8FBC8C6393}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\ODM
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=LICENSE
OutputDir=dist
OutputBaseFilename=ODM_Setup_{#MyAppVersion}
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x64
SignTool=signtool
PrivilegesRequired=lowest
UsePreviousAppDir=no
;SetupIconFile=setup.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "contrib\*"; DestDir: "{app}\contrib"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "licenses\*"; DestDir: "{app}\licenses"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "opendm\*"; DestDir: "{app}\opendm"; Excludes: "__pycache__"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "stages\*"; DestDir: "{app}\stages"; Excludes: "__pycache__"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "SuperBuild\install\bin\*"; DestDir: "{app}\SuperBuild\install\bin"; Excludes: "__pycache__"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "venv\*"; DestDir: "{app}\venv"; Excludes: "__pycache__"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "console.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "VERSION"; DestDir: "{app}"; Flags: ignoreversion
Source: "LICENSE"; DestDir: "{app}"; Flags: ignoreversion
Source: "run.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "run.py"; DestDir: "{app}"; Flags: ignoreversion
Source: "settings.yaml"; DestDir: "{app}"; Flags: ignoreversion
Source: "win32env.bat"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: {group}\ODM Console; Filename: "{app}\console.bat"; WorkingDir: "{app}"
Name: "{userdesktop}\ODM Console"; Filename: "{app}\console.bat"; WorkingDir: "{app}"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Run]
Filename: {app}\console; Description: {cm:LaunchProgram,ODM Console}; Flags: nowait postinstall skipifsilent