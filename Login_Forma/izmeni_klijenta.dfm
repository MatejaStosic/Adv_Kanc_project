object klijent_izmena: Tklijent_izmena
  Left = 0
  Top = 0
  ClientHeight = 483
  ClientWidth = 712
  Caption = 'UniForm1'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 712
    Height = 483
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = ''
    ExplicitLeft = -1
    ExplicitWidth = 713
    ExplicitHeight = 469
    object UniLabel1: TUniLabel
      Left = 328
      Top = 16
      Width = 94
      Height = 16
      Hint = ''
      Caption = 'Izmeni Klijenta'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      ParentColor = False
      Color = clBtnFace
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      Left = 40
      Top = 88
      Width = 22
      Height = 13
      Hint = ''
      Caption = 'Ime:'
      TabOrder = 2
    end
    object editIme: TUniEdit
      Left = 112
      Top = 79
      Width = 193
      Hint = ''
      Text = ''
      TabOrder = 3
    end
    object UniLabel3: TUniLabel
      Left = 40
      Top = 136
      Width = 41
      Height = 13
      Hint = ''
      Caption = 'Prezime:'
      TabOrder = 4
    end
    object editPrezime: TUniEdit
      Left = 112
      Top = 136
      Width = 193
      Hint = ''
      Text = ''
      TabOrder = 5
    end
    object UniLabel4: TUniLabel
      Left = 40
      Top = 184
      Width = 38
      Height = 13
      Hint = ''
      Caption = 'Adresa:'
      TabOrder = 6
    end
    object editAdresa: TUniEdit
      Left = 112
      Top = 175
      Width = 193
      Hint = ''
      Text = ''
      TabOrder = 7
    end
    object UniLabel5: TUniLabel
      Left = 40
      Top = 232
      Width = 28
      Height = 13
      Hint = ''
      Caption = 'Email:'
      TabOrder = 8
    end
    object editEmail: TUniEdit
      Left = 112
      Top = 223
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
      Caption = 'Izmeni'
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
      OnClick = UniButton2Click
    end
    object UniLabel6: TUniLabel
      Left = 40
      Top = 280
      Width = 47
      Height = 13
      Hint = ''
      Caption = 'Broj licne:'
      ParentColor = False
      Color = clBtnFace
      TabOrder = 12
    end
    object editBrojLicne: TUniEdit
      Left = 112
      Top = 271
      Width = 193
      Hint = ''
      Text = ''
      TabOrder = 13
    end
  end
end
