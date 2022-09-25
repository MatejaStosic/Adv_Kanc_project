object popunjavanje_fakture: Tpopunjavanje_fakture
  Left = 0
  Top = 0
  ClientHeight = 535
  ClientWidth = 917
  Caption = 'popunjavanje_fakture'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel4: TUniPanel
    Left = 0
    Top = 0
    Width = 917
    Height = 535
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'UniPanel1'
    object UniPanel3: TUniPanel
      Left = 290
      Top = 1
      Width = 343
      Height = 533
      Hint = ''
      Align = alLeft
      TabOrder = 1
      Caption = ''
      ExplicitLeft = 296
      ExplicitTop = 0
      object UniSplitter2: TUniSplitter
        Left = 1
        Top = 1
        Width = 6
        Height = 531
        Hint = ''
        Align = alLeft
        ParentColor = False
        Color = clBtnFace
      end
      object UniLabel1: TUniLabel
        Left = 24
        Top = 16
        Width = 73
        Height = 13
        Hint = ''
        Caption = 'Pruzene usluge'
        ParentColor = False
        Color = clBtnFace
        TabOrder = 2
      end
      object editPrikazCene: TUniEdit
        Left = 24
        Top = 186
        Width = 249
        Hint = ''
        Text = '0'
        TabOrder = 3
        ReadOnly = True
      end
      object UniCheckBox1: TUniCheckBox
        Left = 24
        Top = 49
        Width = 97
        Height = 17
        Hint = ''
        Caption = 'Kradja'
        TabOrder = 4
        OnChange = UniRadioButton1ChangeValue
      end
      object UniCheckBox2: TUniCheckBox
        Left = 24
        Top = 72
        Width = 97
        Height = 17
        Hint = ''
        Caption = 'Saslusanje'
        TabOrder = 5
        OnChange = UniRadioButton2ChangeValue
      end
      object UniCheckBox3: TUniCheckBox
        Left = 24
        Top = 98
        Width = 153
        Height = 17
        Hint = ''
        Caption = 'Krivicno delo ubistvo'
        TabOrder = 6
        OnChange = UniRadioButton3ChangeValue
      end
      object UniCheckBox4: TUniCheckBox
        Left = 24
        Top = 121
        Width = 201
        Height = 17
        Hint = ''
        Caption = 'Odredjivanje visine alimentacije'
        TabOrder = 7
        OnChange = UniRadioButton4ChangeValue
      end
    end
    object UniPanel1: TUniPanel
      Left = 1
      Top = 1
      Width = 289
      Height = 533
      Hint = ''
      Align = alLeft
      TabOrder = 2
      Caption = ''
      ExplicitLeft = -4
      ExplicitTop = 3
      object UniSplitter1: TUniSplitter
        Left = 1
        Top = 1
        Width = 6
        Height = 531
        Hint = ''
        Align = alLeft
        ParentColor = False
        Color = clBtnFace
      end
      object UniLabel2: TUniLabel
        Left = 16
        Top = 16
        Width = 117
        Height = 16
        Hint = ''
        Caption = 'Informacije Klijent'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        Color = clBtnFace
        TabOrder = 2
      end
      object editImeKlijenta: TUniEdit
        Left = 88
        Top = 38
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 3
      end
      object ime_klijent: TUniLabel
        Left = 13
        Top = 49
        Width = 55
        Height = 13
        Hint = ''
        Caption = 'Ime klijenta'
        ParentColor = False
        Color = clBtnFace
        TabOrder = 4
      end
    end
  end
  object adresa_klijenta: TUniLabel
    Left = 14
    Top = 89
    Width = 34
    Height = 13
    Hint = ''
    Caption = 'Adresa'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 1
  end
  object editAdresaKlijenta: TUniEdit
    Left = 89
    Top = 80
    Width = 121
    Hint = ''
    Text = ''
    TabOrder = 2
  end
  object pib_klijenta: TUniLabel
    Left = 14
    Top = 131
    Width = 20
    Height = 13
    Hint = ''
    Caption = 'PIB:'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 3
  end
  object editPIB: TUniEdit
    Left = 89
    Top = 122
    Width = 121
    Hint = ''
    Text = ''
    TabOrder = 4
  end
  object UniLabel3: TUniLabel
    Left = 314
    Top = 168
    Width = 59
    Height = 13
    Hint = ''
    Caption = 'Cena usluga'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 5
  end
end
