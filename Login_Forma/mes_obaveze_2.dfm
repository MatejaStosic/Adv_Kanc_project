object UniForm2: TUniForm2
  Left = 0
  Top = 0
  ClientHeight = 382
  ClientWidth = 808
  Caption = 'UniForm2'
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
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 600
    Height = 382
    Hint = ''
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
  end
end
