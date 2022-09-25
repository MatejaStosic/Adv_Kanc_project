unit mes_obaveze;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniButton,
  Vcl.Imaging.pngimage, uniImage;

type
  Tmes_obaveze_layout = class(TUniForm)
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    UniButton1: TUniButton;
    UniButton3: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function mes_obaveze_layout: Tmes_obaveze_layout;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, mes_obaveze_placeni_racuni, mes_obaveze_neplaceni_racuni;

function mes_obaveze_layout: Tmes_obaveze_layout;
begin
  Result := Tmes_obaveze_layout(UniMainModule.GetFormInstance(Tmes_obaveze_layout));
end;

procedure Tmes_obaveze_layout.UniButton1Click(Sender: TObject);
begin
     mes_obaveze_placeno.Show;
end;

procedure Tmes_obaveze_layout.UniButton3Click(Sender: TObject);
begin
     mes_obaveze_neplaceno.Show;
end;

end.
