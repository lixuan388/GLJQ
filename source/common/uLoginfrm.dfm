object Loginfrm: TLoginfrm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #30331#24405
  ClientHeight = 153
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Btn_OK: TcxButton
    Left = 56
    Top = 96
    Width = 97
    Height = 40
    Caption = #30331#24405
    TabOrder = 0
    OnClick = Btn_OKClick
  end
  object Btn_Cancel: TcxButton
    Left = 159
    Top = 96
    Width = 97
    Height = 40
    Caption = #21462#28040
    TabOrder = 3
    OnClick = Btn_CancelClick
  end
  object cxLabel1: TcxLabel
    Left = 15
    Top = 24
    Caption = #29992#25143#32534#30721':'
  end
  object cxLabel2: TcxLabel
    Left = 15
    Top = 55
    Caption = #29992#25143#23494#30721':'
  end
  object Edt_PassWord: TcxTextEdit
    Left = 97
    Top = 53
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    TabOrder = 2
    OnKeyPress = Edt_PassWordKeyPress
    Width = 186
  end
  object Edt_Code: TcxTextEdit
    Left = 97
    Top = 22
    TabOrder = 1
    OnExit = Edt_CodeExit
    OnKeyPress = Edt_CodeKeyPress
    Width = 72
  end
  object Edt_Name: TcxTextEdit
    Left = 175
    Top = 22
    Properties.ReadOnly = True
    Style.Color = cl3DLight
    TabOrder = 6
    Width = 108
  end
  object qryLogin: TADOQuery
    Connection = CommonDM.ConVisa
    Parameters = <>
    Left = 272
    Top = 85
  end
end
