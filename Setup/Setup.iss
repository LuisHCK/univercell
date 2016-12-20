; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "UniverCell"
#define MyAppVersion "v1.0.0"
#define MyAppPublisher "Living Company"
#define MyAppURL "https://livingcompany.github.io/"
#define MyAppExeName "UniverCell.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{71DBF721-C69D-4982-986F-1FD8F6A848E4}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir=C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\Setup
OutputBaseFilename=setup
SetupIconFile=C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\logo.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checked; OnlyBelowVersion: 0,6.1
Name: StartAfterInstall; Description: Instalar Base de Datos 

[Files]
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\UniverCell.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\config.ucl"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\config.ucll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\Livecharts.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\Livecharts.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\LiveCharts.Wpf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\LiveCharts.Wpf.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\LiveCharts.Wpf.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\Livecharts.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\MahApps.Metro.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\MahApps.Metro.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\MahApps.Metro.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\MySql.Data.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\MySql.Data.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\System.Windows.Interactivity.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\UniverCell.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\UniverCell.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\UniverCell.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\UniverCell.vshost.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\UniverCell.vshost.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\UniverCell.vshost.exe.manifest"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\UniverCell\bin\Release\UniverCell.XML"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Luis Centeno\Documents\Visual Studio 2015\Projects\UniverCell\xampp.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
Filename: "{app}\xampp.exe"; Flags: shellexec; Tasks: StartAfterInstall


