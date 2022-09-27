unit izmeni_klijenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniEdit, uniLabel, uniGUIBaseClasses,
  uniPanel, DataModul;

type
  Tklijent_izmena = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    editIme: TUniEdit;
    UniLabel3: TUniLabel;
    editPrezime: TUniEdit;
    UniLabel4: TUniLabel;
    editAdresa: TUniEdit;
    UniLabel5: TUniLabel;
    editEmail: TUniEdit;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniLabel6: TUniLabel;
    editBrojLicne: TUniEdit;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
        var indeks : Integer;
  end;

function klijent_izmena: Tklijent_izmena;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Klijenti;

function klijent_izmena: Tklijent_izmena;
begin
  Result := Tklijent_izmena(UniMainModule.GetFormInstance(Tklijent_izmena));
end;

procedure Tklijent_izmena.UniButton1Click(Sender: TObject);
begin

     mainDataModul.queryUpdate.ExecSQL('UPDATE klijenti SET ime_klijenta= "' + editIme.Text + '", prezime_klijenta = "' + editPrezime.Text + '", adresa_klijenta= "' + editAdresa.Text + '", email_klijenta= "' + editEmail.Text + '", broj_licne= "' + editBrojLicne.Text + '"  WHERE id_klijenta = ' + indeks.ToString );
     ShowMessage('Uspesna izmena');
     mainDataModul.queryKlijenti.Refresh;
     prikaz_klijenata.Show;


end;

procedure Tklijent_izmena.UniButton2Click(Sender: TObject);
begin
      Self.Hide;
      prikaz_klijenata.Show;
end;

end.
