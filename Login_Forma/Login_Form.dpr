program Login_Form;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {Login: TUniForm},
  adv_form_pocetna in 'adv_form_pocetna.pas' {Pocetna: TUniForm},
  DataModul in 'DataModul.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
