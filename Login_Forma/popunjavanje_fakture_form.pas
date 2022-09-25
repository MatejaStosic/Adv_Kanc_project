unit popunjavanje_fakture_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniPanel, uniPageControl,
  unimTabPanel, uniGUIBaseClasses, uniSplitter, uniEdit, uniLabel, uniMultiItem,
  uniComboBox, DataModul, Data.DB, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, uniListBox, uniDBComboBox, uniButton, Klijenti,
  uniRadioButton, uniCheckBox;

type
  Tpopunjavanje_fakture = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniSplitter1: TUniSplitter;
    UniSplitter2: TUniSplitter;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    editImeKlijenta: TUniEdit;
    ime_klijent: TUniLabel;
    adresa_klijenta: TUniLabel;
    editAdresaKlijenta: TUniEdit;
    pib_klijenta: TUniLabel;
    editPIB: TUniEdit;
    UniLabel3: TUniLabel;
    editPrikazCene: TUniEdit;
    UniCheckBox1: TUniCheckBox;
    UniCheckBox2: TUniCheckBox;
    UniCheckBox3: TUniCheckBox;
    UniCheckBox4: TUniCheckBox;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniRadioButton1ChangeValue(Sender: TObject);
    procedure UniRadioButton2ChangeValue(Sender: TObject);
    procedure UniRadioButton3ChangeValue(Sender: TObject);
    procedure UniRadioButton4ChangeValue(Sender: TObject);
  private
    { Private declarations }
  public
    var cenaUsluge1, cenaUsluge2, cenaUsluge3, cenaUsluge4, ukupnaCena : Integer;
  end;

function popunjavanje_fakture: Tpopunjavanje_fakture;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, faktura_form;

function popunjavanje_fakture: Tpopunjavanje_fakture;
begin
  Result := Tpopunjavanje_fakture(UniMainModule.GetFormInstance(Tpopunjavanje_fakture));
end;

procedure Tpopunjavanje_fakture.UniButton1Click(Sender: TObject);
begin
     faktura.Show;
     mainDataModul.queryInsertFakturaKlijent.ExecSQL('INSERT INTO faktura_klijent (ime_kompanije, adresa, poreski_broj) VALUES ("' + editImeKlijenta.Text + '" , "' + editAdresaKlijenta.Text + '" , "' + editPIB.Text + '" )');
end;

procedure Tpopunjavanje_fakture.UniFormCreate(Sender: TObject);
begin
     ukupnaCena := 0;
     cenaUsluge1 := 0;
     cenaUsluge2 := 0;
     cenaUsluge3 := 0;
     cenaUsluge4 := 0;


     mainDataModul.queryAdvokatskaTarifa1.First;
     while not  mainDataModul.queryAdvokatskaTarifa1.Eof do
     begin
       if cenaUsluge1 = 0 then
       cenaUsluge1 := mainDataModul.queryAdvokatskaTarifa1['cena'];
       if cenaUsluge2 = 0 then
       cenaUsluge2 := mainDataModul.queryAdvokatskaTarifa1['cena'];
       if cenaUsluge3 = 0 then
       cenaUsluge3 := mainDataModul.queryAdvokatskaTarifa1['cena'];
       if cenaUsluge4 = 0 then
       cenaUsluge4 := mainDataModul.queryAdvokatskaTarifa1['cena'];

       mainDataModul.queryAdvokatskaTarifa1.Next;
     end;

end;

procedure Tpopunjavanje_fakture.UniRadioButton1ChangeValue(Sender: TObject);
begin
     if UniCheckBox1.Checked then
     begin
       ukupnaCena := ukupnaCena + cenaUsluge1;
       editPrikazCene.Text := ukupnaCena.ToString;
     end
     else
     begin
       ukupnaCena := ukupnaCena - cenaUsluge1;
       editPrikazCene.Text := ukupnaCena.ToString;
     end;

end;

procedure Tpopunjavanje_fakture.UniRadioButton2ChangeValue(Sender: TObject);
begin
     if UniCheckBox2.Checked then
     begin
       ukupnaCena := ukupnaCena + cenaUsluge2;
       editPrikazCene.Text := ukupnaCena.ToString;
     end
     else
     begin
       ukupnaCena := ukupnaCena - cenaUsluge2;
       editPrikazCene.Text := ukupnaCena.ToString;
     end;
end;

procedure Tpopunjavanje_fakture.UniRadioButton3ChangeValue(Sender: TObject);
begin
      if UniCheckBox3.Checked then
     begin
       ukupnaCena := ukupnaCena + cenaUsluge3;
       editPrikazCene.Text := ukupnaCena.ToString;
     end
     else
     begin
       ukupnaCena := ukupnaCena - cenaUsluge3;
       editPrikazCene.Text := ukupnaCena.ToString;
     end;
end;

procedure Tpopunjavanje_fakture.UniRadioButton4ChangeValue(Sender: TObject);
begin
      if UniCheckBox4.Checked then
     begin
       ukupnaCena := ukupnaCena + cenaUsluge4;
       editPrikazCene.Text := ukupnaCena.ToString;
     end
     else
     begin
       ukupnaCena := ukupnaCena - cenaUsluge4;
       editPrikazCene.Text := ukupnaCena.ToString;
     end;
end;

end.
