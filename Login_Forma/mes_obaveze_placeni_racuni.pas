unit mes_obaveze_placeni_racuni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniGUIBaseClasses,
  uniPanel, Data.DB, DataModul, uniButton, htmlForm, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, Data.Bind.Grid, mes_zad_placanje;

type
  Tmes_obaveze_placeno = class(TUniForm)
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniButton1: TUniButton;
    DataSource1: TDataSource;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function mes_obaveze_placeno: Tmes_obaveze_placeno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function mes_obaveze_placeno: Tmes_obaveze_placeno;
begin
  Result := Tmes_obaveze_placeno(UniMainModule.GetFormInstance(Tmes_obaveze_placeno));
end;

procedure Tmes_obaveze_placeno.UniButton1Click(Sender: TObject);
begin
html_form.Show;
end;




end.
