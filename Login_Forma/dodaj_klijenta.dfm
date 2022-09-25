object klijent_dodaj: Tklijent_dodaj
  Left = 0
  Top = 0
  ClientHeight = 469
  ClientWidth = 713
  Caption = 'klijent_dodaj'
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 713
    Height = 469
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = ''
    object UniLabel1: TUniLabel
      Left = 328
      Top = 16
      Width = 89
      Height = 16
      Hint = ''
      Caption = 'Dodaj Klijenta'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      Left = 40
      Top = 96
      Width = 22
      Height = 13
      Hint = ''
      Caption = 'Ime:'
      TabOrder = 2
    end
    object editIme: TUniEdit
      Left = 112
      Top = 87
      Width = 193
      Hint = ''
      Text = ''
      TabOrder = 3
    end
    object UniLabel3: TUniLabel
      Left = 40
      Top = 144
      Width = 41
      Height = 13
      Hint = ''
      Caption = 'Prezime:'
      TabOrder = 4
    end
    object editPrezime: TUniEdit
      Left = 112
      Top = 135
      Width = 193
      Hint = ''
      Text = ''
      TabOrder = 5
    end
    object UniLabel4: TUniLabel
      Left = 40
      Top = 192
      Width = 38
      Height = 13
      Hint = ''
      Caption = 'Adresa:'
      TabOrder = 6
    end
    object editAdresa: TUniEdit
      Left = 112
      Top = 183
      Width = 193
      Hint = ''
      Text = ''
      TabOrder = 7
    end
    object UniLabel5: TUniLabel
      Left = 40
      Top = 240
      Width = 28
      Height = 13
      Hint = ''
      Caption = 'Email:'
      TabOrder = 8
    end
    object editEmail: TUniEdit
      Left = 112
      Top = 231
      Width = 193
      Hint = ''
      Text = ''
      TabOrder = 9
    end
    object UniButton1: TUniButton
      Left = 160
      Top = 328
      Width = 121
      Height = 41
      Hint = ''
      Caption = 'Dodaj'
      TabOrder = 10
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 328
      Top = 328
      Width = 121
      Height = 41
      Hint = ''
      Caption = 'Otkazi'
      TabOrder = 11
    end
  end
end
