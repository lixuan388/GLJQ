object frmExcelInput: TfrmExcelInput
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #23458#20154#36164#26009#23548#20837
  ClientHeight = 120
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 8
    Top = 24
    Caption = 'Excel'#25991#20214#65306
    Transparent = True
  end
  object edt_excel_file: TcxTextEdit
    Left = 79
    Top = 23
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 218
  end
  object btn_open: TcxButton
    Left = 312
    Top = 21
    Width = 75
    Height = 25
    Caption = #25171#24320
    TabOrder = 2
    OnClick = btn_openClick
  end
  object btn_input: TcxButton
    Left = 417
    Top = 21
    Width = 75
    Height = 25
    Caption = #23548#20837
    Enabled = False
    TabOrder = 3
    OnClick = btn_inputClick
  end
  object btn_close: TcxButton
    Left = 200
    Top = 87
    Width = 75
    Height = 25
    Caption = #20851#38381
    TabOrder = 4
    OnClick = btn_closeClick
  end
  object lbl_info: TcxLabel
    Left = 8
    Top = 64
    Transparent = True
  end
  object open_excel: TOpenDialog
    Filter = 'Excel'#25991#20214'(*.xls)|*.xls'
    Left = 160
    Top = 16
  end
  object ADOConnection_excel: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 56
    Top = 8
  end
  object qry_sheet: TADOQuery
    Connection = ADOConnection_excel
    ParamCheck = False
    Parameters = <>
    Left = 56
    Top = 64
  end
end
