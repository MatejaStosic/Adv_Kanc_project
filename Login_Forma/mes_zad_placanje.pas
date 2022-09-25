unit mes_zad_placanje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniLabel, uniMultiItem,
  uniComboBox, uniEdit, uniButton, uniPanel, Vcl.Imaging.pngimage, uniImage,
  uniDateTimePicker;

type
  Tplacanje_mes_racuna = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    editPosiljalac: TUniEdit;
    combobox: TUniComboBox;
    editImePrim: TUniEdit;
    editIznos: TUniEdit;
    UniLabel5: TUniLabel;
    editBrRacuna: TUniEdit;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    editAdresaPrim: TUniEdit;
    UniLabel8: TUniLabel;
    UniButton1: TUniButton;
    UniLabel9: TUniLabel;
    UniButton2: TUniButton;
    UniLabel10: TUniLabel;
    editBrRacunaPos: TUniEdit;
    UniImage1: TUniImage;
    editDatum: TUniEdit;
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function placanje_mes_racuna: Tplacanje_mes_racuna;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, racun_komunalije, adv_form_pocetna, DataModul;

function placanje_mes_racuna: Tplacanje_mes_racuna;
begin
  Result := Tplacanje_mes_racuna(UniMainModule.GetFormInstance(Tplacanje_mes_racuna));
end;

procedure Tplacanje_mes_racuna.UniButton1Click(Sender: TObject);
begin
     racun_mes_komunalije.Show;

     placanje_mes_racuna.Visible := False;

end;

procedure Tplacanje_mes_racuna.UniButton2Click(Sender: TObject);
begin
     Close;

     Pocetna.Show;
end;

procedure Tplacanje_mes_racuna.UniFormCreate(Sender: TObject);
begin
     editPosiljalac.Clear;
     editImePrim.Clear;
     editIznos.Clear;
     editBrRacuna.Clear;
     editDatum.Clear;
     editAdresaPrim.Clear;

     combobox.Items.Add('Struja');
     combobox.Items.Add('Voda');
     combobox.Items.Add('Grejanje');
     combobox.Items.Add('Porez');
     combobox.Items.Add('Djubre');
end;

end.
