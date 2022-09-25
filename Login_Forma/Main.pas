unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniLabel,
  uniEdit, uniImage, uniButton, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TLogin = class(TUniForm)
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    UniLabel1: TUniLabel;
    edituser: TUniEdit;
    UniLabel2: TUniLabel;
    editpassword: TUniEdit;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Login: TLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, adv_form_pocetna, htmlForm;

function Login: TLogin;
begin
  Result := TLogin(UniMainModule.GetFormInstance(TLogin));
end;

procedure TLogin.UniButton1Click(Sender: TObject);
var
  user, password: string;

begin

     user:='admin';
     password:='admin';


     if (edituser.Text = user) and (editpassword.Text = password) then
     html_form.show
            else if (edituser.Text = '') and (editpassword.Text = '') then
                 MessageDlg('Niste uneli username i password!', mtWarning, [mbOK])
             else if (edituser.Text = 'admin') and (editpassword.Text = '') then
                 MessageDlg('Niste uneli password!', mtWarning, [mbOK])
             else if (edituser.Text = '') and (editpassword.Text = 'admin') then
                 MessageDlg('Niste uneli username!', mtWarning, [mbOK])
                     else MessageDlg('Vasi podaci nisu tacni!', mtWarning, [mbOK]);
          
     
end;

procedure TLogin.UniButton2Click(Sender: TObject);
begin
CLOSE;
end;

procedure TLogin.UniFormCreate(Sender: TObject);
begin
  edituser.Text := 'admin';
  editpassword.Text := 'admin';
end;

procedure TLogin.UniFormShow(Sender: TObject);
begin
     //edituser.clear;
     //editpassword.clear;
     edituser.SetFocus;

end;

initialization
  RegisterAppFormClass(TLogin);

end.
