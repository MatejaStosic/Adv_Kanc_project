unit htmlForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  Vcl.Imaging.pngimage, uniImage;

type
  Thtml_form = class(TUniForm)
    UniHTMLFrame1: TUniHTMLFrame;
    procedure UniHTMLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function html_form: Thtml_form;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main, mes_obaveze, popunjavanje_fakture_form ,advokatska_tarifa_form, faktura_form, slanjedoc_form, mes_zad_placanje, primljena_doc, mes_obaveze_placeni_racuni, mes_obaveze_neplaceni_racuni, Klijenti;

function html_form: Thtml_form;
begin
  Result := Thtml_form(UniMainModule.GetFormInstance(Thtml_form));
end;
    
procedure Thtml_form.UniFormCreate(Sender: TObject);
begin
     UniHTMLFrame1.HTML.LoadFromFile('./index.html');
end;

procedure Thtml_form.UniHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
    
     if EventName = 'placeni_racuni' then
     begin
          mes_obaveze_placeno.Show;
     end
     else if EventName = 'neplaceni_racuni' then
     begin
          mes_obaveze_neplaceno.Show;
     end
     else if EventName = 'posalji_dokument' then
     begin
          slanje_dokumenta.Show;
     end
     else if EventName = 'primljena_posta' then
     begin
          primljenaPosta.Show;
     end
     else if EventName = 'odjava' then
     begin
          Login.Show;
          html_form.Hide;
     end
     else if EventName = 'posalji_fakturu' then
     begin
          popunjavanje_fakture.Show;
     end
     else if EventName = 'advokatska_tarifa' then
     begin
          adv_tarifa.Show;
     end
     else if EventName = 'Klijenti' then
     begin
          prikaz_klijenata.Show;
     end
    





end;

end.
