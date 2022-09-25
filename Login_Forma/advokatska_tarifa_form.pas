unit advokatska_tarifa_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniPanel, uniPageControl,
  unimTabPanel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, Data.DB, DataModul,
  uniButton;

type
  Tadv_tarifa = class(TUniForm)
    UnimTabPanel1: TUnimTabPanel;
    UnimTabSheet1: TUnimTabSheet;
    DataSource1: TDataSource;
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function adv_tarifa: Tadv_tarifa;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function adv_tarifa: Tadv_tarifa;
begin
  Result := Tadv_tarifa(UniMainModule.GetFormInstance(Tadv_tarifa));
end;

end.
