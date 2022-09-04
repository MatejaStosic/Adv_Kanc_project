unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniLabel,
  uniEdit, uniImage, uniButton, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TLoginform = class(TUniForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Loginform: TLoginform;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, adv_form_pocetna;

function Loginform: TLoginform;
begin
  Result := TLoginform(UniMainModule.GetFormInstance(TLoginform));
end;

procedure TLoginform.UniButton1Click(Sender: TObject);
var
  user, password: string;

begin
     user:='admin';
     password:='admin';


     if (edituser.Text = user) and (editpassword.Text = password) then
     adv_form_pocetna1.show
            else if (edituser.Text = '') and (editpassword.Text = '') then
                 MessageDlg('Niste uneli username i password!', mtWarning, [mbOK])
             else if (edituser.Text = 'admin') and (editpassword.Text = '') then
                 MessageDlg('Niste uneli password!', mtWarning, [mbOK])
             else if (edituser.Text = '') and (editpassword.Text = 'admin') then
                 MessageDlg('Niste uneli username!', mtWarning, [mbOK])
                     else MessageDlg('Vasi podaci nisu tacni!', mtWarning, [mbOK]);
          
     
end;

procedure TLoginform.UniButton2Click(Sender: TObject);
begin
CLOSE;
end;

procedure TLoginform.UniFormShow(Sender: TObject);
begin
     edituser.clear;
     editpassword.clear;

end;

initialization
  RegisterAppFormClass(TLoginform);

end.
