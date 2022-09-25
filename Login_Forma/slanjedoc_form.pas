unit slanjedoc_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniGUIBaseClasses, uniButton, uniPanel,
  uniEdit, uniBitBtn, DataModul;

type
  Tslanje_dokumenta = class(TUniForm)
    posaljibtn: TUniButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    imeprim: TUniEdit;
    prezprima: TUniEdit;
    emailprim: TUniEdit;
    adresaprim: TUniEdit;
    vrstadoc: TUniEdit;
    UniPanel1: TUniPanel;
    sadrzajdoc: TUniEdit;
    procedure UniFormCreate(Sender: TObject);
    procedure posaljibtnClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function slanje_dokumenta: Tslanje_dokumenta;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function slanje_dokumenta: Tslanje_dokumenta;
begin
  Result := Tslanje_dokumenta(UniMainModule.GetFormInstance(Tslanje_dokumenta));
end;

var 
    ime, prezime, adresa, email, tipdoc, sadrzaj : string;

procedure Tslanje_dokumenta.posaljibtnClick(Sender: TObject);
begin
       ime := imeprim.Text;
       prezime := prezprima.Text;
       email := emailprim.Text;
       adresa := adresaprim.Text;
       tipdoc := vrstadoc.Text;
       sadrzaj := sadrzajdoc.Text;

     if (imeprim.Text = '') and (prezprima.Text = '') and (emailprim.Text = '') and (adresaprim.Text = '') and (vrstadoc.Text = '') then
        MessageDlg('Molimo Vas unesite podatke o primaocu!', mtWarning, [mbOK])
     else if (imeprim.Text = '') then
        MessageDlg('Unesite ime primaoca!', mtWarning, [mbOK])
     else if (prezprima.Text = '') then
        MessageDlg('Unesite prezime primaoca!', mtWarning, [mbOK])
     else if (emailprim.Text = '') then
        MessageDlg('Unesite email primaoca!', mtWarning, [mbOK])
     else if (adresaprim.Text = '') then
        MessageDlg('Unesite adresu primaoca!', mtWarning, [mbOK])
     else if (vrstadoc.Text = '') then
        MessageDlg('Unesite vrstu dokumenta primaoca!', mtWarning, [mbOK])

        else if not (imeprim.ToString = '') then
        begin
            mainDataModul.queryInsert.ExecSQL('INSERT INTO poslata_doc1 (imeprim, prezprima, emailprim, adresaprim, vrstadoc, sadrzaj) VALUES( "' + ime + '" , "' + prezime +  '" , "' + email + '" , "' + adresa +  '" , "' + tipdoc + '" , "' + sadrzaj + '" )') ;

            ShowMessage('Uspesno ste poslali dokument!');

        end else if ((vrstadoc.ToString = 'racun za struju') or (vrstadoc.ToString = 'racun za vodu')) then
        begin

        end;







  end;
  

procedure Tslanje_dokumenta.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     mainDataModul.queryPoslataDoc1.Refresh;
end;

procedure Tslanje_dokumenta.UniFormCreate(Sender: TObject);
begin
     imeprim.Clear;
     prezprima.Clear;
     emailprim.Clear;
     adresaprim.Clear;
     vrstadoc.Clear;
     sadrzajdoc.Clear;

end;




end.
