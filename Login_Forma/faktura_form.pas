unit faktura_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniLabel, Vcl.Menus,
  uniPageControl, unimTabPanel, Vcl.Imaging.pngimage, uniImage,
  uniDateTimePicker, uniScrollBox, uniScreenMask, uniButton, uniSplitter,
  Vcl.ExtCtrls, uniEdit, popunjavanje_fakture_form;

type
  Tfaktura = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel10: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel4: TUniLabel;
    editAdresa: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel1: TUniLabel;
    UniImage1: TUniImage;
    UniButton1: TUniButton;
    UniPanel3: TUniPanel;
    UniSplitter1: TUniSplitter;
    faktura_naslov: TUniLabel;
    editIme: TUniLabel;
    editPIB: TUniLabel;
    UniLabel14: TUniLabel;
    faktura_no: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    editMestoIzdavanja: TUniEdit;
    editDatumIzdavanja: TUniDateTimePicker;
    editDatumDospeca: TUniDateTimePicker;
    editDatumPrometa: TUniDateTimePicker;
    editUsluge: TUniLabel;
    editCena: TUniLabel;
    editUkupnoZaduzenje: TUniLabel;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function faktura: Tfaktura;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function faktura: Tfaktura;
begin
  Result := Tfaktura(UniMainModule.GetFormInstance(Tfaktura));
end;

procedure Tfaktura.UniButton1Click(Sender: TObject);
begin

     editIme.Caption :=  popunjavanje_fakture.editImeKlijenta.Text;
     editAdresa.Caption := popunjavanje_fakture.editAdresaKlijenta.Text;
     editPIB.Caption := popunjavanje_fakture.editPIB.Text;




end;

procedure Tfaktura.UniButton2Click(Sender: TObject);
begin
     ShowMessage('Uspesno ste poslali fakturu!');
end;

end.
