program Login_Form;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {Login: TUniForm},
  DataModul in 'DataModul.pas' {mainDataModul: TDataModule},
  slanjedoc_form in 'slanjedoc_form.pas' {slanje_dokumenta: TUniForm},
  primljena_doc in 'primljena_doc.pas' {primljenaPosta: TUniForm},
  mes_zad_placanje in 'mes_zad_placanje.pas' {placanje_mes_racuna: TUniForm},
  racun_komunalije in 'racun_komunalije.pas' {racun_mes_komunalije: TUniForm},
  mes_obaveze_placeni_racuni in 'mes_obaveze_placeni_racuni.pas' {mes_obaveze_placeno: TUniForm},
  mes_obaveze_neplaceni_racuni in 'mes_obaveze_neplaceni_racuni.pas' {mes_obaveze_neplaceno: TUniForm},
  htmlForm in 'htmlForm.pas' {html_form: TUniForm},
  popunjavanje_fakture_form in 'popunjavanje_fakture_form.pas' {popunjavanje_fakture: TUniForm},
  advokatska_tarifa_form in 'advokatska_tarifa_form.pas' {adv_tarifa: TUniForm},
  Klijenti in 'Klijenti.pas' {prikaz_klijenata: TUniForm},
  dodaj_klijenta in 'dodaj_klijenta.pas' {klijent_dodaj: TUniForm},
  izmeni_klijenta in 'izmeni_klijenta.pas' {klijent_izmena: TUniForm},
  FakturaFinal in 'FakturaFinal.pas' {editFakturaFinal: TUniForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
