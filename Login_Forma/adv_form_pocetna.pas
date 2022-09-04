unit adv_form_pocetna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Vcl.Menus, uniMainMenu, uniGUIBaseClasses,
  uniButton, uniBitBtn;

type
  Tadv_form_pocetna1 = class(TUniForm)
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function adv_form_pocetna1: Tadv_form_pocetna1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main;

function adv_form_pocetna1: Tadv_form_pocetna1;
begin
  Result := Tadv_form_pocetna1(UniMainModule.GetFormInstance(Tadv_form_pocetna1));
end;

procedure Tadv_form_pocetna1.UniBitBtn1Click(Sender: TObject);
begin
            Close;
end;

end.
