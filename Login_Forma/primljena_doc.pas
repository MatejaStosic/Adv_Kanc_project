unit primljena_doc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniPageControl,
  uniPanel, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.DBScope, uniBasicGrid, uniStringGrid, DataModul, Vcl.Grids, uniEdit, slanjedoc_form,
  uniSplitter, Data.DB, Datasnap.DBClient, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  uniDBEdit, uniDBGrid, uniDBTreeGrid;

type
  TprimljenaPosta = class(TUniForm)
    UniPanel1: TUniPanel;
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniDBEdit1: TUniDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function primljenaPosta: TprimljenaPosta;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function primljenaPosta: TprimljenaPosta;
begin
  Result := TprimljenaPosta(UniMainModule.GetFormInstance(TprimljenaPosta));
end;

end.
