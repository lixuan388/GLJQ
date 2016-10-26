object frmChangePassword: TfrmChangePassword
  Left = 335
  Top = 322
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #23494#30721#26356#25913
  ClientHeight = 160
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 316
    Height = 160
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 160
    ClientRectRight = 316
    ClientRectTop = 0
    object cxTabSheet2: TcxTabSheet
      Caption = #34892#31243#20449#24687
      ImageIndex = 0
      object Label3: TLabel
        Left = 22
        Top = 23
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = #36755#20837#26087#23494#30721#65306
        Transparent = True
      end
      object Label19: TLabel
        Left = 16
        Top = 57
        Width = 72
        Height = 13
        Caption = #36755#20837#26032#23494#30721#65306
        Transparent = True
      end
      object Label1: TLabel
        Left = 16
        Top = 92
        Width = 72
        Height = 13
        Caption = #30830#35748#26032#23494#30721#65306
        Transparent = True
      end
      object btnOK: TcxButton
        Left = 130
        Top = 121
        Width = 81
        Height = 27
        Caption = #30830#23450
        TabOrder = 3
        OnClick = btnOKClick
      end
      object btnClose: TcxButton
        Left = 217
        Top = 121
        Width = 81
        Height = 27
        Caption = #21462#28040
        TabOrder = 4
        OnClick = btnCloseClick
      end
      object edtPasswordOld: TcxTextEdit
        Left = 95
        Top = 17
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 0
        Width = 201
      end
      object edtPasswordNew: TcxTextEdit
        Left = 95
        Top = 52
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 1
        Width = 201
      end
      object edtPasswordConfirm: TcxTextEdit
        Left = 95
        Top = 87
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 2
        Width = 201
      end
    end
  end
  object qryGetUserPassword: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'aus_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select aus_id,aus_password'
      'from aus_users'
      'where aus_id=:aus_id')
    Left = 152
    Top = 32
  end
end
