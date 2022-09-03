unit introForm_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TintroForm = class(TForm)
    Image1: TImage;
    Login: TButton;
    Cancel: TButton;
    username: TEdit;
    password: TEdit;
    procedure LoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NewString : integer;
  end;

var
  introForm: TintroForm;
  aUsername, aUsername1, aPassword, aPassword1 : string;

implementation

{$R *.dfm}

procedure TintroForm.LoginClick(Sender: TObject);
begin
     aPassword := password.Text;
     aPassword1 := 'ulaz';
     if username.Text = '' then
     begin
          ShowMessage('Molimo Vas unesite username!');
     end;
     if password.Text = '' then
     begin
       ShowMessage('Molimo Vas unesite sifru!');
     end;
     if aPassword = aPassword1 then
        begin
          NewString := 1;
          close;
        end;

end;

end.
