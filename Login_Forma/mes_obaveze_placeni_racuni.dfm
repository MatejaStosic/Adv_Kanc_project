object mes_obaveze_placeno: Tmes_obaveze_placeno
  Left = 0
  Top = 0
  ClientHeight = 382
  ClientWidth = 808
  Caption = 'mes_obaveze_placeno'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 600
    Top = 0
    Width = 208
    Height = 382
    Hint = ''
    Align = alRight
    TabOrder = 0
    Caption = 'UniPanel1'
    object UniButton1: TUniButton
      Left = 64
      Top = 184
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton1'
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 600
    Height = 382
    Hint = ''
    DataSource = DataSource1
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'tabele_id'
        Title.Caption = 'tabele_id'
        Width = 64
        ReadOnly = True
      end
      item
        FieldName = 'posiljalac'
        Title.Caption = 'posiljalac'
        Width = 184
      end
      item
        FieldName = 'racun_primaoca'
        Title.Caption = 'racun_primaoca'
        Width = 80
      end
      item
        FieldName = 'svrha_uplate'
        Title.Caption = 'svrha_uplate'
        Width = 184
      end
      item
        FieldName = 'prim_ime'
        Title.Caption = 'prim_ime'
        Width = 184
      end
      item
        FieldName = 'prim_adresa'
        Title.Caption = 'prim_adresa'
        Width = 184
      end
      item
        FieldName = 'iznos_uplate'
        Title.Caption = 'iznos_uplate'
        Width = 64
      end
      item
        FieldName = 'broj_racuna'
        Title.Caption = 'broj_racuna'
        Width = 64
      end
      item
        FieldName = 'datum_uplate'
        Title.Caption = 'datum_uplate'
        Width = 70
      end>
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = mainDataModul.queryMes_Zaduzenja_Komunalije
    Left = 640
    Top = 16
  end
end
