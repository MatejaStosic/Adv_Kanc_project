unit Klijenti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniBasicGrid,
  uniDBGrid, uniButton, Data.DB, DataModul, dodaj_klijenta, izmeni_klijenta,
  uniEdit;

type
  Tprikaz_klijenata = class(TUniForm)
    UniPanel1: TUniPanel;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    DataSource1: TDataSource;
    UniButton1: TUniButton;
    UniDBGrid1: TUniDBGrid;
    editSearch: TUniEdit;
    UniButton4: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    var indeks : Integer;
    var indekstext : string;
  end;

function prikaz_klijenata: Tprikaz_klijenata;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, popunjavanje_fakture_form;

function prikaz_klijenata: Tprikaz_klijenata;
begin
  Result := Tprikaz_klijenata(UniMainModule.GetFormInstance(Tprikaz_klijenata));
end;

procedure Tprikaz_klijenata.UniButton1Click(Sender: TObject);
begin
     klijent_dodaj.show;
end;

procedure Tprikaz_klijenata.UniButton2Click(Sender: TObject);
begin
if(editSearch.Text = '') then
  begin
    ShowMessage('Unesite indeks dobavljaca!');
    exit
  end;

  indekstext := editSearch.Text;
  indeks := indekstext.ToInteger;


  mainDataModul.queryKlijenti.First;
  while not mainDataModul.queryKlijenti.Eof do
  begin
    if mainDataModul.queryKlijenti['id_klijenta'] = IntToStr(indeks) then
    begin

      klijent_izmena.indeks := mainDataModul.queryKlijenti['id_klijenta'];
      klijent_izmena.editIme.Text := mainDataModul.queryKlijenti['ime_klijenta'];
      klijent_izmena.editPrezime.Text := mainDataModul.queryKlijenti['prezime_klijenta'];
      klijent_izmena.editAdresa.Text := mainDataModul.queryKlijenti['adresa_klijenta'];
      klijent_izmena.editEmail.Text := mainDataModul.queryKlijenti['email_klijenta'];


      self.Hide;
      klijent_izmena.show;
      exit
    end;

  mainDataModul.queryKlijenti.Next;
  end;

  


  end;

procedure Tprikaz_klijenata.UniButton3Click(Sender: TObject);
begin
if(editSearch.Text = '') then
  begin
    ShowMessage('Unesite indeks dobavljaca!');
    exit
  end;

  indekstext := editSearch.Text;
  indeks := indekstext.ToInteger;

  mainDataModul.queryKlijenti.First;
  while not mainDataModul.queryKlijenti.Eof do
  begin
    if mainDataModul.queryKlijenti['id_klijenta'] = IntToStr(indeks) then
    begin
      mainDataModul.queryDelete.ExecSQL('DELETE FROM Klijenti WHERE id_klijenta = ' + IntToStr(indeks));
      ShowMessage('Uspesno brisanje.');
      mainDataModul.queryKlijenti.Refresh;
      exit
    end;

  mainDataModul.queryKlijenti.Next;

  end;
end;

procedure Tprikaz_klijenata.UniButton4Click(Sender: TObject);
begin
if(editSearch.Text = '') then
  begin
    ShowMessage('Unesite indeks dobavljaca!');
    exit
  end;

  indekstext := editSearch.Text;
  indeks := indekstext.ToInteger;

  mainDataModul.queryKlijenti.First;
  while not mainDataModul.queryKlijenti.Eof do
  begin
    if mainDataModul.queryKlijenti['id_klijenta'] = IntToStr(indeks) then
    begin

      popunjavanje_fakture.indeks := mainDataModul.queryKlijenti['id_klijenta'];
      popunjavanje_fakture.editImeKlijenta.Text := mainDataModul.queryKlijenti['ime_klijenta'];
      popunjavanje_fakture.editPrezime.Text := mainDataModul.queryKlijenti['prezime_klijenta'];
      popunjavanje_fakture.editAdresaKlijenta.Text := mainDataModul.queryKlijenti['adresa_klijenta'];
      popunjavanje_fakture.editEmail.Text := mainDataModul.queryKlijenti['email_klijenta'];
      popunjavanje_fakture.editBrojLicne.Text := mainDataModul.queryKlijenti['broj_licne'];



      self.Hide;
      popunjavanje_fakture.Show;
      exit
    end;

  mainDataModul.queryKlijenti.Next;
  end;
end;

procedure Tprikaz_klijenata.UniFormCreate(Sender: TObject);
begin
     mainDataModul.queryKlijenti.Close;
     mainDataModul.queryKlijenti.Open;
end;

end.
