unit racun_komunalije;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniLabel,
  Vcl.Imaging.pngimage, uniImage, uniButton, uniBitBtn, MainModule, mes_zad_placanje, mes_obaveze_neplaceni_racuni;

type
  Tracun_mes_komunalije = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    podaciposiljalac: TUniLabel;
    podaciprimalacime: TUniLabel;
    brojracunaposiljaoca: TUniLabel;
    svrhauplate: TUniLabel;
    iznos: TUniLabel;
    UniLabel6: TUniLabel;
    datumslanja: TUniLabel;
    UniLabel8: TUniLabel;
    UniImage1: TUniImage;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    brojracunprim: TUniLabel;
    UniLabel10: TUniLabel;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function racun_mes_komunalije: Tracun_mes_komunalije;

implementation

{$R *.dfm}


uses
  uniGUIApplication, DataModul;

function racun_mes_komunalije: Tracun_mes_komunalije;
begin
  Result := Tracun_mes_komunalije(UniMainModule.GetFormInstance(Tracun_mes_komunalije));
end;

procedure Tracun_mes_komunalije.UniBitBtn1Click(Sender: TObject);
begin
     podaciposiljalac.Caption := placanje_mes_racuna.editPosiljalac.Text;
     podaciprimalacime.Caption := placanje_mes_racuna.editImePrim.Text + ', ' + placanje_mes_racuna.editAdresaPrim.Text;
     brojracunaposiljaoca.Caption := placanje_mes_racuna.editBrRacunaPos.Text;
     brojracunprim.Caption := placanje_mes_racuna.editBrRacuna.Text;
     svrhauplate.Caption := placanje_mes_racuna.combobox.Text;
     iznos.Caption := placanje_mes_racuna.editIznos.Text;

end;

procedure Tracun_mes_komunalije.UniBitBtn2Click(Sender: TObject);
begin


     placanje_mes_racuna.Show;

end;

procedure Tracun_mes_komunalije.UniBitBtn3Click(Sender: TObject);
begin


     mainDataModul.queryInsert1.ExecSQL('INSERT INTO mesecna_zaduzenja_komunalije (posiljalac, racun_primaoca, svrha_uplate, prim_ime, prim_adresa, iznos_uplate, broj_racuna, datum_uplate) VALUES( "' + placanje_mes_racuna.editPosiljalac.Text + '" , "' + placanje_mes_racuna.editBrRacuna.Text +  '" , "' + placanje_mes_racuna.combobox.Text + '" , "' + placanje_mes_racuna.editImePrim.Text +  '" , "' + placanje_mes_racuna.editAdresaPrim.Text + '" , "' + placanje_mes_racuna.editIznos.Text + '" , "' + placanje_mes_racuna.editBrRacunaPos.Text + '" , "' + placanje_mes_racuna.editDatum.Text + '" )') ;

     ShowMessage('Uspesno ste platili racun!');


     
end;

end.
