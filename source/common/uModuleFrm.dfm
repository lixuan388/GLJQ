object ModuleFrm: TModuleFrm
  Left = 0
  Top = 0
  Caption = 'ModuleFrm'
  ClientHeight = 556
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 12
  object cxTabControl1: TcxTabControl
    Left = 0
    Top = 0
    Width = 1025
    Height = 556
    Align = alClient
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    ExplicitTop = 8
    ClientRectBottom = 556
    ClientRectRight = 1025
    ClientRectTop = 0
  end
  object Qry_Module: TADOQuery
    Connection = CommonDM.ConVisa
    Parameters = <>
    SQL.Strings = (
      'select 1')
    Left = 880
    Top = 48
  end
  object DS_Module: TDataSource
    DataSet = Qry_Module
    Left = 880
    Top = 104
  end
end
