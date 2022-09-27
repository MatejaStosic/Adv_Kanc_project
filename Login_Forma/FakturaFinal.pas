unit FakturaFinal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniGUIBaseClasses, uniPanel, uniEdit,
  Vcl.Imaging.pngimage, uniImage, uniButton;

type
  TeditFakturaFinal = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    ime_klijent: TUniLabel;
    editImeKlijenta: TUniEdit;
    UniLabel4: TUniLabel;
    editPrezime: TUniEdit;
    UniLabel5: TUniLabel;
    editEmail: TUniEdit;
    adresa_klijenta: TUniLabel;
    pib_klijenta: TUniLabel;
    editAdresaKlijenta: TUniEdit;
    editBrojLicne: TUniEdit;
    UniLabel3: TUniLabel;
    editPruzeneUsluge: TUniEdit;
    editUkupnaCena: TUniEdit;
    UniLabel2: TUniLabel;
    UniImage1: TUniImage;
    UniButton1: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function editFakturaFinal: TeditFakturaFinal;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, popunjavanje_fakture_form, DataModul, Klijenti;

function editFakturaFinal: TeditFakturaFinal;
begin
  Result := TeditFakturaFinal(UniMainModule.GetFormInstance(TeditFakturaFinal));
end;

procedure TeditFakturaFinal.UniButton1Click(Sender: TObject);
begin
     ShowMessage('Uspesno ste poslali fakturu!');
     self.Close;
     prikaz_klijenata.Show;
end;

procedure TeditFakturaFinal.UniFormShow(Sender: TObject);
begin

     editImeKlijenta.Text := popunjavanje_fakture.editImeKlijenta.Text;
     editPrezime.Text := popunjavanje_fakture.editPrezime.Text;
     editAdresaKlijenta.Text := popunjavanje_fakture.editAdresaKlijenta.Text;
     editEmail.Text := popunjavanje_fakture.editEmail.Text;
     editBrojLicne.Text := popunjavanje_fakture.editBrojLicne.Text;
     if popunjavanje_fakture.UniCheckBox1.Checked then
     begin
       editPruzeneUsluge.Text := popunjavanje_fakture.UniCheckBox1.Caption;
     end
     else
     if (popunjavanje_fakture.UniCheckBox2.Checked)then
     begin
       editPruzeneUsluge.Text := popunjavanje_fakture.UniCheckBox2.Caption;
     end
     else
     if popunjavanje_fakture.UniCheckBox3.Checked then
     begin
       editPruzeneUsluge.Text := popunjavanje_fakture.UniCheckBox3.Caption;
     end
     else
     if popunjavanje_fakture.UniCheckBox4.Checked then
     begin
       editPruzeneUsluge.Text := popunjavanje_fakture.UniCheckBox4.Caption;
     end;
     editUkupnaCena.Text := popunjavanje_fakture.ukupnaCena.ToString;


end;

end.
