unit DataModul;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TmainDataModul = class(TDataModule)
    FDConnection1: TFDConnection;
    queryKorisnici: TFDQuery;
    queryInsert: TFDQuery;
    queryPrikazPoruka: TFDQuery;
    queryMes_Zaduzenja_Komunalije: TFDQuery;
    queryInsert1: TFDQuery;
    queryPoslataDoc1: TFDQuery;
    dsPoslataDoc1: TDataSource;
    queryPoslataDoc1table_id: TFDAutoIncField;
    queryPoslataDoc1imeprim: TStringField;
    queryPoslataDoc1prezprima: TStringField;
    queryPoslataDoc1emailprim: TStringField;
    queryPoslataDoc1adresaprim: TStringField;
    queryPoslataDoc1vrstadoc: TStringField;
    queryPoslataDoc1sadrzaj: TStringField;
    dsPoslataDoc2: TDataSource;
    queryMes_Zaduzenja_Komunalijetabele_id: TFDAutoIncField;
    queryMes_Zaduzenja_Komunalijeposiljalac: TStringField;
    queryMes_Zaduzenja_Komunalijeracun_primaoca: TIntegerField;
    queryMes_Zaduzenja_Komunalijesvrha_uplate: TStringField;
    queryMes_Zaduzenja_Komunalijeprim_ime: TStringField;
    queryMes_Zaduzenja_Komunalijeprim_adresa: TStringField;
    queryMes_Zaduzenja_Komunalijeiznos_uplate: TIntegerField;
    queryMes_Zaduzenja_Komunalijebroj_racuna: TIntegerField;
    queryMes_Zaduzenja_Komunalijedatum_uplate: TIntegerField;
    queryPoslataDoc2: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    queryInsertFakturaKlijent: TFDQuery;
    dsAdvokatskaTarifa1: TDataSource;
    queryAdvokatskaTarifa1: TFDQuery;
    queryAdvokatskaTarifa1tabele_id: TFDAutoIncField;
    queryAdvokatskaTarifa1usluge: TStringField;
    queryAdvokatskaTarifa1cena: TIntegerField;
    dsAdvokatskaTarifa2: TDataSource;
    queryKlijenti: TFDQuery;
    queryKlijentiid_klijenta: TFDAutoIncField;
    queryKlijentiime_klijenta: TStringField;
    queryKlijentiprezime_klijenta: TStringField;
    queryKlijentiadresa_klijenta: TStringField;
    queryKlijentiemail_klijenta: TStringField;
    queryInsertKlijenti: TFDQuery;
    queryUpdate: TFDQuery;
    dsKlijenti: TDataSource;
    queryPoslataDoc: TFDQuery;
    queryFaktura: TFDQuery;
    FDAutoIncField2: TFDAutoIncField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    queryKlijentibroj_licne: TStringField;
    queryDelete: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function mainDataModul: TmainDataModul;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

var path : string;

function mainDataModul: TmainDataModul;
begin
  Result := TmainDataModul(UniMainModule.GetModuleInstance(TmainDataModul));
end;

procedure TmainDataModul.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Connected := False;
  path := ExtractFilePath(ParamStr(0)) + '/Login_formDB.db';
  FDConnection1.Params.Values['Database'] := path;
  FDConnection1.Connected := True;



  queryPoslataDoc1.Close;
  queryPoslataDoc1.Open;

  queryPoslataDoc2.Close;
  queryPoslataDoc2.Open;

  queryMes_Zaduzenja_Komunalije.Close;
  queryMes_Zaduzenja_Komunalije.Open;

  queryAdvokatskaTarifa1.Close;
  queryAdvokatskaTarifa1.Open;

  queryFaktura.Close;
  queryFaktura.Open;








end;

initialization
  RegisterModuleClass(TmainDataModul);

end.
