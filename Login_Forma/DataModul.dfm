object mainDataModul: TmainDataModul
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 511
  Width = 886
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\matej\Desktop\Adv_Kanc_Project\Login Forma\Win' +
        '32\Debug\Login_formDB.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 480
    Top = 16
  end
  object queryKorisnici: TFDQuery
    Connection = FDConnection1
    Left = 48
    Top = 24
  end
  object queryInsert: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'INSERT INTO poslata_doc1 (imeprim, prezprima, emailprim, adresap' +
        'rim, vrstadoc, sadrzaj) VALUES( " imeprim " , " prezime " , "  e' +
        'mail  " , "  adresa " , "  tipdoc  " , " sadrzaj " );'
      ''
      ''
      ''
      '')
    Left = 488
    Top = 296
  end
  object queryPrikazPoruka: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM primljena_posta')
    Left = 48
    Top = 88
  end
  object queryMes_Zaduzenja_Komunalije: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM mesecna_zaduzenja_komunalije')
    Left = 48
    Top = 144
    object queryMes_Zaduzenja_Komunalijetabele_id: TFDAutoIncField
      DisplayLabel = 'Redni br.'
      FieldName = 'tabele_id'
      Origin = 'tabele_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryMes_Zaduzenja_Komunalijeposiljalac: TStringField
      DisplayLabel = 'Posiljalac'
      FieldName = 'posiljalac'
      Origin = 'posiljalac'
      Size = 30
    end
    object queryMes_Zaduzenja_Komunalijeracun_primaoca: TIntegerField
      DisplayLabel = 'Racun Primaoca'
      FieldName = 'racun_primaoca'
      Origin = 'racun_primaoca'
    end
    object queryMes_Zaduzenja_Komunalijesvrha_uplate: TStringField
      DisplayLabel = 'Svrha Uplate'
      FieldName = 'svrha_uplate'
      Origin = 'svrha_uplate'
      Size = 30
    end
    object queryMes_Zaduzenja_Komunalijeprim_ime: TStringField
      DisplayLabel = 'Ime Primaoca'
      FieldName = 'prim_ime'
      Origin = 'prim_ime'
      Size = 30
    end
    object queryMes_Zaduzenja_Komunalijeprim_adresa: TStringField
      DisplayLabel = 'Adresa Primaoca'
      FieldName = 'prim_adresa'
      Origin = 'prim_adresa'
      Size = 30
    end
    object queryMes_Zaduzenja_Komunalijeiznos_uplate: TIntegerField
      DisplayLabel = 'Iznos uplate'
      FieldName = 'iznos_uplate'
      Origin = 'iznos_uplate'
    end
    object queryMes_Zaduzenja_Komunalijebroj_racuna: TIntegerField
      DisplayLabel = 'Broj racuna posiljaoca'
      FieldName = 'broj_racuna'
      Origin = 'broj_racuna'
    end
    object queryMes_Zaduzenja_Komunalijedatum_uplate: TIntegerField
      DisplayLabel = 'Datum uplate'
      FieldName = 'datum_uplate'
      Origin = 'datum_uplate'
    end
  end
  object queryInsert1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'INSERT INTO mesecna_zaduzenja_komunalije (posiljalac, racun_prim' +
        'aoca, svrha_uplate, prim_ime, prim_adresa, iznos_uplate, broj_ra' +
        'cuna, datum_uplate) VALUES(" placanje_mes_racuna.editPosiljalac.' +
        'Text " , " placanje_mes_racuna.editBrRacuna.Text " , " placanje_' +
        'mes_racuna.combobox.Text " , " placanje_mes_racuna.editImePrim.T' +
        'ext " , " placanje_mes_racuna.editAdresaPrim.Text " , " placanje' +
        '_mes_racuna.editIznos.Text " , " placanje_mes_racuna.editBrRacun' +
        'aPos.Text " , " placanje_mes_racuna.editDatum.Text " )')
    Left = 488
    Top = 336
  end
  object queryPoslataDoc1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM poslata_doc1')
    Left = 200
    Top = 24
    object queryPoslataDoc1table_id: TFDAutoIncField
      DisplayLabel = 'ID Tabele'
      FieldName = 'table_id'
      Origin = 'table_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryPoslataDoc1imeprim: TStringField
      DisplayLabel = 'Ime Primaoca'
      FieldName = 'imeprim'
      Origin = 'imeprim'
      Required = True
    end
    object queryPoslataDoc1prezprima: TStringField
      DisplayLabel = 'Prezime Primaoca'
      FieldName = 'prezprima'
      Origin = 'prezprima'
      Required = True
    end
    object queryPoslataDoc1emailprim: TStringField
      DisplayLabel = 'Email'
      FieldName = 'emailprim'
      Origin = 'emailprim'
      Required = True
      Size = 30
    end
    object queryPoslataDoc1adresaprim: TStringField
      DisplayLabel = 'Adresa'
      FieldName = 'adresaprim'
      Origin = 'adresaprim'
      Required = True
      Size = 30
    end
    object queryPoslataDoc1vrstadoc: TStringField
      DisplayLabel = 'Vrsta Dokumenta'
      FieldName = 'vrstadoc'
      Origin = 'vrstadoc'
      Required = True
    end
    object queryPoslataDoc1sadrzaj: TStringField
      DisplayLabel = 'Sadrzaj Dokumenta'
      FieldName = 'sadrzaj'
      Origin = 'sadrzaj'
      Required = True
      Size = 100
    end
  end
  object dsPoslataDoc1: TDataSource
    DataSet = queryPoslataDoc1
    Left = 480
    Top = 72
  end
  object dsPoslataDoc2: TDataSource
    DataSet = queryMes_Zaduzenja_Komunalije
    Left = 480
    Top = 128
  end
  object queryPoslataDoc2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM poslata_doc1')
    Left = 288
    Top = 24
    object FDAutoIncField1: TFDAutoIncField
      DisplayLabel = 'ID Tabele'
      FieldName = 'table_id'
      Origin = 'table_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object StringField1: TStringField
      DisplayLabel = 'Ime Primaoca'
      FieldName = 'imeprim'
      Origin = 'imeprim'
      Required = True
    end
    object StringField2: TStringField
      DisplayLabel = 'Prezime Primaoca'
      FieldName = 'prezprima'
      Origin = 'prezprima'
      Required = True
    end
    object StringField3: TStringField
      DisplayLabel = 'Email'
      FieldName = 'emailprim'
      Origin = 'emailprim'
      Required = True
      Size = 30
    end
    object StringField4: TStringField
      DisplayLabel = 'Adresa'
      FieldName = 'adresaprim'
      Origin = 'adresaprim'
      Required = True
      Size = 30
    end
    object StringField5: TStringField
      DisplayLabel = 'Vrsta Dokumenta'
      FieldName = 'vrstadoc'
      Origin = 'vrstadoc'
      Required = True
    end
    object StringField6: TStringField
      DisplayLabel = 'Sadrzaj Dokumenta'
      FieldName = 'sadrzaj'
      Origin = 'sadrzaj'
      Required = True
      Size = 100
    end
  end
  object queryInsertFakturaKlijent: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'INSERT INTO faktura_klijent (ime_kompanije, adresa, poreski_broj' +
        ') VALUES ('#39'  editImeKlijenta  '#39' , '#39'  adresa_klijenta  '#39' , '#39'  pib' +
        '_klijenta  '#39')'
      '')
    Left = 488
    Top = 384
  end
  object dsAdvokatskaTarifa1: TDataSource
    DataSet = queryAdvokatskaTarifa1
    Left = 480
    Top = 176
  end
  object queryAdvokatskaTarifa1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM  usluge_tarifa1')
    Left = 48
    Top = 200
    object queryAdvokatskaTarifa1tabele_id: TFDAutoIncField
      DisplayLabel = 'Tabele ID'
      FieldName = 'tabele_id'
      Origin = 'tabele_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryAdvokatskaTarifa1usluge: TStringField
      DisplayLabel = 'Usluge'
      FieldName = 'usluge'
      Origin = 'usluge'
      Size = 40
    end
    object queryAdvokatskaTarifa1cena: TIntegerField
      DisplayLabel = 'Cena'
      FieldName = 'cena'
      Origin = 'cena'
    end
  end
  object dsAdvokatskaTarifa2: TDataSource
    Left = 480
    Top = 232
  end
  object queryKlijenti: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM klijenti')
    Left = 48
    Top = 320
    object queryKlijentiid_klijenta: TFDAutoIncField
      FieldName = 'id_klijenta'
      Origin = 'id_klijenta'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object queryKlijentiime_klijenta: TStringField
      FieldName = 'ime_klijenta'
      Origin = 'ime_klijenta'
      Size = 30
    end
    object queryKlijentiprezime_klijenta: TStringField
      FieldName = 'prezime_klijenta'
      Origin = 'prezime_klijenta'
      Size = 30
    end
    object queryKlijentiadresa_klijenta: TStringField
      FieldName = 'adresa_klijenta'
      Origin = 'adresa_klijenta'
      Size = 30
    end
    object queryKlijentiemail_klijenta: TStringField
      FieldName = 'email_klijenta'
      Origin = 'email_klijenta'
      Size = 30
    end
  end
  object queryInsertKlijenti: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'INSERT INTO klijenti (ime_klijenta, prezime_klijenta, adresa_kli' +
        'jenta, email_klijenta) VALUES ('#39'  editIme  '#39' , '#39'  editPrezime  '#39 +
        ' , '#39'  editAdresa  '#39' , '#39' editEmail '#39');')
    Left = 400
    Top = 296
  end
  object queryUpdate: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'UPDATE klijenti SET id_klijenta = '#39' + editID + '#39', ime_klijenta= ' +
        #39' + editIme + '#39', prezime_klijenta = '#39' + editPrezime + '#39', adresa_' +
        'klijenta= '#39' + editAdresa + '#39', email_klijentas= '#39' + editEmail + '#39 +
        '  WHERE id_klijenta = '#39' + editID + '#39';')
    Left = 488
    Top = 440
  end
  object dsKlijenti: TDataSource
    DataSet = queryKlijenti
    Left = 392
    Top = 104
  end
  object queryPoslataDoc: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM poslata_doc')
    Left = 120
    Top = 24
  end
end
