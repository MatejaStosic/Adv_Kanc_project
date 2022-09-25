object adv_tarifa: Tadv_tarifa
  Left = 0
  Top = 0
  ClientHeight = 530
  ClientWidth = 816
  Caption = 'adv_tarifa'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 530
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'UniPanel1'
    object UnimTabPanel1: TUnimTabPanel
      Left = 1
      Top = 1
      Width = 814
      Height = 528
      Hint = ''
      ActivePage = UnimTabSheet1
      Align = alClient
      object UnimTabSheet1: TUnimTabSheet
        Left = 4
        Top = 51
        Width = 806
        Height = 473
        Hint = ''
        Caption = 'Tarifa'
        object UniDBGrid1: TUniDBGrid
          Left = 0
          Top = 0
          Width = 806
          Height = 473
          Hint = ''
          DataSource = DataSource1
          LoadMask.Message = 'Loading data...'
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = mainDataModul.queryAdvokatskaTarifa1
    Left = 760
    Top = 64
  end
end
