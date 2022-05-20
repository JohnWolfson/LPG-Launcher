#define AppName "LowPoly Games Launcher"
#define AppPublisher "LowPoly Games"
#define AppVersion GetFileVersion("..\bin\Release\net5.0-windows\LPG Launcher.exe")
#define AppEXEName "LPG Launcher.exe"
#define AppURL "https://lowpolygames.itch.io/"
#define AppIcon "Resources\LogoTemp.ico"

[Setup]
AppId={{1c2dga42-g5s6-10d3-af3g-9bv3nf9ewj34}
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
AppName={#AppName}
AppVerName={#AppName} {#AppVersion}
AppVersion={#AppVersion}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppURL}
DefaultDirName={pf}\LowPoly Games\{#AppName}
DefaultGroupName={#AppPublisher}
Compression=lzma2
SolidCompression=yes
OutputBaseFilename=LPG Launcher Installer {#AppVersion}
SetupIconFile={#AppIcon}
OutputDir=..\Output

[Files]
Source: "..\bin\Release\net5.0-windows\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs;
Source: "Resources\windowsdesktop-runtime-5.0.17-win-x64.exe"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall

[Run]
Filename: "{app}\{#AppEXEName}"; Description: "{cm:LaunchProgram, {#StringChange(AppName, '&', '&&')}}"; Flags: nowait postinstall
Filename: "{app}\windowsdesktop-runtime-5.0.17-win-x64.exe"; Parameters: "/q/passive"; Flags: waituntilterminated; StatusMsg: Microsoft .NET Framework 5.0 is being installed. Please wait...