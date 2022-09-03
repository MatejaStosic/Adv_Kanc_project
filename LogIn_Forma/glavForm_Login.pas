unit glavForm_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, introForm_Login, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TglavForm = class(TForm)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  glavForm: TglavForm;
  iNew : integer;

implementation

{$R *.dfm}

procedure TglavForm.FormShow(Sender: TObject);
begin
  introForm := TintroForm.Create(Self);
  introForm.ShowModal;
  iNew := introForm.NewString;
  if iNew = 0 then
  begin
    Application.Terminate;
  end;


end;

end.
