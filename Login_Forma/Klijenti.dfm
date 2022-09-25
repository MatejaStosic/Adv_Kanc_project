object prikaz_klijenata: Tprikaz_klijenata
  Left = 0
  Top = 0
  ClientHeight = 491
  ClientWidth = 739
  Caption = 'prikaz_klijenata'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 528
    Top = 0
    Width = 211
    Height = 491
    Hint = ''
    Align = alRight
    TabOrder = 0
    Caption = ''
    object UniButton2: TUniButton
      Left = 50
      Top = 175
      Width = 121
      Height = 41
      Hint = ''
      Caption = 'Izmeni Klijenta'
      TabOrder = 1
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 50
      Top = 240
      Width = 121
      Height = 41
      Hint = ''
      Caption = 'Izbrisi Klijenta'
      TabOrder = 2
    end
    object UniButton1: TUniButton
      Left = 50
      Top = 112
      Width = 121
      Height = 41
      Hint = ''
      Caption = 'Dodaj Klijenta'
      TabOrder = 3
      OnClick = UniButton1Click
    end
    object editSearch: TUniEdit
      Left = 48
      Top = 40
      Width = 121
      Height = 41
      Hint = ''
      Text = ''
      TabOrder = 4
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 528
    Height = 491
    Hint = ''
    DataSource = DataSource1
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = mainDataModul.queryKlijenti
    Left = 552
    Top = 8
  end
end
