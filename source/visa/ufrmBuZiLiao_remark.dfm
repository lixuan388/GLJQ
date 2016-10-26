object frmBuZiLiao_remark: TfrmBuZiLiao_remark
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #20462#25913#25805#20316#35760#24405#22791#27880
  ClientHeight = 129
  ClientWidth = 828
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
  object memo_remark: TcxMemo
    Left = 110
    Top = 8
    Properties.ScrollBars = ssVertical
    TabOrder = 0
    Height = 80
    Width = 695
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 9
    Caption = #25805#20316#35760#24405#22791#27880#65306
  end
  object btn_cancel: TcxButton
    Left = 730
    Top = 94
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = btn_cancelClick
  end
  object btn_ok: TcxButton
    Left = 624
    Top = 94
    Width = 75
    Height = 25
    Caption = #30830#35748
    TabOrder = 3
    OnClick = btn_okClick
  end
  object sp_avgh_remark_edit: TADOStoredProc
    Connection = CommonDM.ConVisa
    ProcedureName = 'usp_avgh_remark_edit'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@avgh_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@username'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 16
      end
      item
        Name = '@remark'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 3200
      end>
    Left = 112
    Top = 56
  end
end
