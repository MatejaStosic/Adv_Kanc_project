object mes_obaveze_neplaceno: Tmes_obaveze_neplaceno
  Left = 0
  Top = 0
  ClientHeight = 386
  ClientWidth = 818
  Caption = 'mes_obaveze_neplaceno'
  Position = poDesigned
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 610
    Top = 0
    Width = 208
    Height = 386
    Hint = ''
    Align = alRight
    TabOrder = 0
    Caption = ''
  end
  object UniDBGrid1: TUniDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 604
    Height = 380
    Hint = ''
    RowEditor = True
    DataSource = DataSource2
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow, dgRowNumbers]
    LoadMask.Message = 'Loading data...'
    RowHeight = 10
    EnableColumnHide = False
    Align = alClient
    TabOrder = 1
    RowWidget.Enabled = True
    OnDblClick = UniDBGrid1DblClick
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
  object DataSource2: TDataSource
    DataSet = mainDataModul.queryPoslataDoc1
    Left = 628
    Top = 16
  end
end
