; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "ţ��(PluginOK)�м��"
#define MyAppVersion "1.1.1"
#define MyAppPublisher "�ɶ������������޹�˾"
#define MyAppURL "http://www.zorrosoft.com/"
#define MyAppExeName "WrlSetup.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (��Ҫ�����µ� GUID�����ڲ˵��е�� "����|���� GUID"��)
AppId={{20BAC19B-5557-453A-877A-3B6DEAC4C907}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\PluginOK
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=E:\WRL\WebRunLocal\Bin\license.txt
InfoAfterFile=E:\WRL\WebRunLocal\TestWrl.txt
; ������ȡ��ע�ͣ����ڷǹ�����װģʽ�����У���Ϊ��ǰ�û���װ����
PrivilegesRequired=admin
OutputDir=E:\WRL\WebRunLocal
OutputBaseFilename=PluginOKInstall
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "E:\WRL\WebRunLocal\Bin\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\WrlSetup.exe";Parameters: "/S /I";Description: "��װ����";StatusMsg:"���ڰ�װ�������Ժ�..."

[UninstallRun]
Filename: "{app}\WrlSetup.exe";Parameters: "/S /U";StatusMsg:"����ֹͣ����ж�أ����Ժ�..."
