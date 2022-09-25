unit mes_obaveze_neplaceni_racuni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniBasicGrid,
  uniDBGrid, uniButton, Data.Bind.Components, Data.Bind.DBScope, uniMultiItem,
  uniListBox, uniDBListBox, DataModul, Data.DB, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Grid,
  Vcl.Grids, popunjavanje_fakture_form;

type
  Tmes_obaveze_neplaceno = class(TUniForm)
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    DataSource2: TDataSource;
    procedure UniButton1Click(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function mes_obaveze_neplaceno: Tmes_obaveze_neplaceno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, mes_zad_placanje;

function mes_obaveze_neplaceno: Tmes_obaveze_neplaceno;
begin
  Result := Tmes_obaveze_neplaceno(UniMainModule.GetFormInstance(Tmes_obaveze_neplaceno));
end;

procedure Tmes_obaveze_neplaceno.UniButton1Click(Sender: TObject);
begin
     placanje_mes_racuna.Show;
     mainDataModul.queryPoslataDoc1.Close;
     mainDataModul.queryPoslataDoc1.Open;

end;





procedure Tmes_obaveze_neplaceno.UniDBGrid1DblClick(Sender: TObject);
begin
  mainDataModul.queryPoslataDoc.Close;
  mainDataModul.queryPoslataDoc.SQL.Clear;
  mainDataModul.queryPoslataDoc.SQL.Text := 'SELECT * FROM poslata_doc1 where poslata_doc1.table_id = :AParam';
  mainDataModul.queryPoslataDoc.ParamByName('AParam').AsString := mainDataModul.queryPoslataDoc1.FieldByName('table_id').AsString;
  mainDataModul.queryPoslataDoc.Open;
  placanje_mes_racuna.Show;
end;

end.
