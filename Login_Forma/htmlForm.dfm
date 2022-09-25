object html_form: Thtml_form
  Left = 0
  Top = 0
  ClientHeight = 671
  ClientWidth = 944
  Caption = 'html_form'
  BorderStyle = bsSingle
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniHTMLFrame1: TUniHTMLFrame
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 938
    Height = 665
    Hint = ''
    Align = alClient
    OnAjaxEvent = UniHTMLFrame1AjaxEvent
  end
end
