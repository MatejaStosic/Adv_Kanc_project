unit adv_form_pocetna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Vcl.Menus, uniMainMenu, uniGUIBaseClasses,
  uniButton, uniBitBtn, uniPanel, uniLabel, uniImage, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdTime, IdUnixTime;

type
  TPocetna = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    UniBitBtn1: TUniBitBtn;
    UniButton1: TUniButton;
    UniBitBtn2: TUniBitBtn;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Pocetna: TPocetna;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main, slanjedoc_form, mes_zad_placanje, primljena_doc, mes_obaveze, htmlForm;

function Pocetna: TPocetna;
begin
  Result := TPocetna(UniMainModule.GetFormInstance(TPocetna));
end;

procedure TPocetna.UniBitBtn1Click(Sender: TObject);
begin
            Close;
end;

procedure TPocetna.UniBitBtn2Click(Sender: TObject);
begin
     primljenaPosta.Show;
end;

procedure TPocetna.UniButton1Click(Sender: TObject);
begin
       slanje_dokumenta.Show;
end;

procedure TPocetna.UniButton2Click(Sender: TObject);
begin
     mes_obaveze_layout.Show;

     Pocetna.Visible := False;
end;

procedure TPocetna.UniButton3Click(Sender: TObject);
begin
 html_form.Show;
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
