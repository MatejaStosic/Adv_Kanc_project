object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 370
  Width = 549
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\matej\Desktop\Adv_Kanc_Project\Login Forma\Log' +
        'in_formDB.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Left = 464
    Top = 16
  end
  object queryKorisnici: TFDQuery
    Connection = FDConnection1
    Left = 48
    Top = 24
  end
end
