program Login_project;

uses
  Vcl.Forms,
  glavForm_Login in 'glavForm_Login.pas' {glavForm},
  introForm_Login in 'introForm_Login.pas' {introForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TglavForm, glavForm);
  Application.Run;
end.
