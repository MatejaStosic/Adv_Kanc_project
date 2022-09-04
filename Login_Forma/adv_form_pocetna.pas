unit adv_form_pocetna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Vcl.Menus, uniMainMenu, uniGUIBaseClasses,
  uniButton, uniBitBtn, uniPanel, uniLabel, uniImage, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

type
  TPocetna = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniButton1: TUniButton;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Pocetna: TPocetna;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main;

function Pocetna: TPocetna;
begin
  Result := TPocetna(UniMainModule.GetFormInstance(TPocetna));
end;

procedure TPocetna.UniBitBtn1Click(Sender: TObject);
begin
            Close;
end;

procedure TPocetna.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
     Login.Show;
end;

procedure TPocetna.UniFormShow(Sender: TObject);
begin
     Login.Visible:= False;
end;

end.
