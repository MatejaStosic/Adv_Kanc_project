object slanje_dokumenta: Tslanje_dokumenta
  Left = 0
  Top = 0
  ClientHeight = 522
  ClientWidth = 853
  Caption = 'slanje_dokumenta'
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object posaljibtn: TUniButton
    Left = 96
    Top = 352
    Width = 137
    Height = 57
    Hint = ''
    Caption = 'Posalji'
    TabOrder = 0
    OnClick = posaljibtnClick
  end
  object UniLabel1: TUniLabel
    Left = 96
    Top = 64
    Width = 64
    Height = 13
    Hint = ''
    Caption = 'Ime primaoca'
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 96
    Top = 104
    Width = 83
    Height = 13
    Hint = ''
    Caption = 'Prezime primaoca'
    TabOrder = 2
  end
  object UniLabel3: TUniLabel
    Left = 96
    Top = 144
    Width = 24
    Height = 13
    Hint = ''
    Caption = 'Email'
    TabOrder = 3
  end
  object UniLabel4: TUniLabel
    Left = 96
    Top = 184
    Width = 80
    Height = 13
    Hint = ''
    Caption = 'Adresa primaoca'
    TabOrder = 4
  end
  object UniLabel5: TUniLabel
    Left = 96
    Top = 224
    Width = 81
    Height = 13
    Hint = ''
    Caption = 'Vrsta dokumenta'
    TabOrder = 5
  end
  object imeprim: TUniEdit
    Left = 264
    Top = 55
    Width = 281
    Hint = ''
    Text = 'imeprim'
    TabOrder = 6
  end
  object prezprima: TUniEdit
    Left = 264
    Top = 95
    Width = 281
    Hint = ''
    Text = 'UniEdit1'
    TabOrder = 7
  end
  object emailprim: TUniEdit
    Left = 264
    Top = 135
    Width = 281
    Hint = ''
    Text = 'UniEdit1'
    TabOrder = 8
  end
  object adresaprim: TUniEdit
    Left = 264
    Top = 175
    Width = 281
    Hint = ''
    Text = 'UniEdit1'
    TabOrder = 9
  end
  object vrstadoc: TUniEdit
    Left = 264
    Top = 215
    Width = 281
    Hint = ''
    Text = 'UniEdit1'
    TabOrder = 10
  end
  object UniPanel1: TUniPanel
    Left = 264
    Top = 281
    Width = 497
    Height = 208
    Hint = ''
    TabOrder = 11
    Caption = ''
    object sadrzajdoc: TUniEdit
      Left = 3
      Top = 3
      Width = 491
      Height = 202
      Hint = ''
      Text = ''
      TabOrder = 1
    end
  end
end
