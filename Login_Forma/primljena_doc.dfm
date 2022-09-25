object primljenaPosta: TprimljenaPosta
  Left = 488
  Top = 0
  ClientHeight = 508
  ClientWidth = 836
  Caption = 'primljenaPosta'
  Position = poDesigned
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 632
    Top = 0
    Width = 204
    Height = 508
    Hint = ''
    Align = alRight
    TabOrder = 0
    Caption = 'UniPanel1'
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 632
    Height = 508
    Hint = ''
    DataSource = DataSource1
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'table_id'
        Title.Caption = 'ID Tabele'
        Width = 64
        ReadOnly = True
      end
      item
        FieldName = 'imeprim'
        Title.Caption = 'Ime Primaoca'
        Width = 124
      end
      item
        FieldName = 'prezprima'
        Title.Caption = 'Prezime Primaoca'
        Width = 124
      end
      item
        FieldName = 'emailprim'
        Title.Caption = 'Email'
        Width = 184
      end
      item
        FieldName = 'adresaprim'
        Title.Caption = 'Adresa'
        Width = 184
      end
      item
        FieldName = 'vrstadoc'
        Title.Caption = 'Vrsta Dokumenta'
        Width = 124
      end
      item
        FieldName = 'sadrzaj'
        Title.Caption = 'Sadrzaj Dokumenta'
        Width = 604
      end>
  end
  object UniDBEdit1: TUniDBEdit
    Left = 638
    Top = 8
    Width = 121
    Height = 22
    Hint = ''
    DataSource = DataSource1
    TabOrder = 2
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = mainDataModul.queryPoslataDoc1
    Left = 664
    Top = 32
  end
end
