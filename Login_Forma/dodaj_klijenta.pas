unit dodaj_klijenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniGUIBaseClasses, uniPanel, uniEdit,
  uniButton, DataModul;

type
  Tklijent_dodaj = class(TUniForm)
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
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function klijent_dodaj: Tklijent_dodaj;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function klijent_dodaj: Tklijent_dodaj;
begin
  Result := Tklijent_dodaj(UniMainModule.GetFormInstance(Tklijent_dodaj));
end;

procedure Tklijent_dodaj.UniButton1Click(Sender: TObject);
begin
     mainDataModul.queryInsertKlijenti.ExecSQL('INSERT INTO klijenti (ime_klijenta, prezime_klijenta, adresa_klijenta, email_klijenta, broj_licne) VALUES( "' + editIme.Text + '" , "' + editPrezime.Text +  '" , "' + editAdresa.Text + '" , "' + editEmail.Text +  '" , "' + editBrojLicne.Text + '" )') ;

     ShowMessage('Uspesno ste dodali klijenta!');






end;

procedure Tklijent_dodaj.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     mainDataModul.queryKlijenti.Refresh;
end;

end.
