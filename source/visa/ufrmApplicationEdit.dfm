object frmApplicationEdit: TfrmApplicationEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #20462#25913#21517#21333
  ClientHeight = 441
  ClientWidth = 529
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
  object cxTabControl1: TcxTabControl
    Left = 0
    Top = 0
    Width = 529
    Height = 409
    Align = alClient
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    ExplicitHeight = 347
    ClientRectBottom = 409
    ClientRectRight = 529
    ClientRectTop = 0
    object cxLabel1: TcxLabel
      Left = 3
      Top = 24
      Caption = #20013#25991#22995#21517#65306
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 3
      Top = 56
      Caption = #33521#25991#22995#21517#65306
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 88
      Caption = #36523#20221#35777#65306
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 3
      Top = 120
      Caption = #25252#29031#21495#30721#65306
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 267
      Top = 24
      Caption = #24615#21035#65306
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 267
      Top = 56
      Caption = #20986#29983#24180#26376#65306
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 267
      Top = 88
      Caption = #31614#21457#26085#26399#65306
      Transparent = True
    end
    object cxLabel8: TcxLabel
      Left = 267
      Top = 120
      Caption = #26377#25928#26399#33267#65306
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 3
      Top = 232
      Caption = #22791#27880#65306
      Transparent = True
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 73
      Top = 23
      DataBinding.DataField = 'ava_name_c'
      DataBinding.DataSource = DS_Ava
      TabOrder = 9
      Width = 168
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 73
      Top = 55
      DataBinding.DataField = 'ava_name_e'
      DataBinding.DataSource = DS_Ava
      TabOrder = 10
      Width = 168
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 73
      Top = 87
      DataBinding.DataField = 'ava_idcard'
      DataBinding.DataSource = DS_Ava
      TabOrder = 11
      Width = 168
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 73
      Top = 119
      DataBinding.DataField = 'ava_PassPortNo'
      DataBinding.DataSource = DS_Ava
      TabOrder = 12
      Width = 168
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 337
      Top = 23
      DataBinding.DataField = 'ava_sex'
      DataBinding.DataSource = DS_Ava
      Properties.Items = <
        item
          Description = #30007
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #22899
          Value = 2
        end>
      TabOrder = 13
      Width = 168
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 337
      Top = 55
      DataBinding.DataField = 'ava_date_birth'
      DataBinding.DataSource = DS_Ava
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 14
      Width = 168
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 337
      Top = 87
      DataBinding.DataField = 'ava_Date_Sign'
      DataBinding.DataSource = DS_Ava
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 15
      Width = 168
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 337
      Top = 119
      DataBinding.DataField = 'ava_Date_End'
      DataBinding.DataSource = DS_Ava
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 16
      Width = 168
    end
    object cxDBMemo1: TcxDBMemo
      Left = 73
      Top = 231
      DataBinding.DataField = 'ava_Remark'
      DataBinding.DataSource = DS_Ava
      Properties.ScrollBars = ssVertical
      TabOrder = 17
      Height = 64
      Width = 432
    end
    object cxLabel10: TcxLabel
      Left = 3
      Top = 302
      Caption = #22791#27880'1'#65306
      Transparent = True
    end
    object cxDBMemo2: TcxDBMemo
      Left = 73
      Top = 301
      DataBinding.DataField = 'ava_remark1'
      DataBinding.DataSource = DS_Ava
      Properties.ScrollBars = ssVertical
      TabOrder = 19
      Height = 44
      Width = 432
    end
    object cxLabel11: TcxLabel
      Left = 3
      Top = 352
      Caption = #22791#27880'2'#65306
      Transparent = True
    end
    object cxDBMemo3: TcxDBMemo
      Left = 73
      Top = 351
      DataBinding.DataField = 'ava_remark2'
      DataBinding.DataSource = DS_Ava
      Properties.ScrollBars = ssVertical
      TabOrder = 21
      Height = 44
      Width = 432
    end
    object cxLabel12: TcxLabel
      Left = 3
      Top = 152
      Caption = #30005#35805#21495#30721#65306
      Transparent = True
    end
    object cxLabel13: TcxLabel
      Left = 3
      Top = 191
      Caption = #24120#20303#22320#22336#65306
      Transparent = True
    end
    object cxLabel14: TcxLabel
      Left = 267
      Top = 152
      Caption = #24180'  '#40836#65306
      Transparent = True
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 73
      Top = 151
      DataBinding.DataField = 'ava_mobile'
      DataBinding.DataSource = DS_Ava
      TabOrder = 25
      Width = 168
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 73
      Top = 190
      DataBinding.DataField = 'ava_home_addr'
      DataBinding.DataSource = DS_Ava
      TabOrder = 26
      Width = 432
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 337
      Top = 151
      DataBinding.DataField = 'ava_age'
      DataBinding.DataSource = DS_Ava
      TabOrder = 27
      Width = 168
    end
  end
  object cxTabControl2: TcxTabControl
    Left = 0
    Top = 409
    Width = 529
    Height = 32
    Align = alBottom
    TabOrder = 1
    Properties.CustomButtons.Buttons = <>
    ExplicitTop = 347
    ClientRectBottom = 32
    ClientRectRight = 529
    ClientRectTop = 0
    object btn_close: TcxButton
      Left = 267
      Top = 6
      Width = 75
      Height = 25
      Caption = #20851#38381
      TabOrder = 0
      OnClick = btn_closeClick
    end
    object btn_save: TcxButton
      Left = 139
      Top = 6
      Width = 75
      Height = 25
      Caption = #20445#23384#25805#20316
      TabOrder = 1
      OnClick = btn_saveClick
    end
  end
  object qry_ava_old: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ava_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select ava_id,ava_status,ava_user_lst,ava_date_lst,ava_remark1,a' +
        'va_remark2,ava_id_avg,ava_home_addr,ava_mobile,ava_age,'
      
        'ava_name_c,ava_name_e,ava_idcard,ava_PassPortNo,ava_sex,ava_date' +
        '_birth,ava_Date_Sign,ava_Date_End,ava_Remark'
      'from ava_visa_application'
      'where ava_id= :ava_id')
    Left = 139
    Top = 80
  end
  object qry_ava: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ava_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select ava_id,ava_status,ava_user_lst,ava_date_lst,ava_remark1,a' +
        'va_remark2,ava_home_addr,ava_mobile,ava_age,'
      
        'ava_name_c,ava_name_e,ava_idcard,ava_PassPortNo,ava_sex,ava_date' +
        '_birth,ava_Date_Sign,ava_Date_End,ava_Remark'
      'from ava_visa_application'
      'where ava_id= :ava_id')
    Left = 411
    Top = 24
  end
  object DS_Ava: TDataSource
    DataSet = qry_ava
    Left = 411
    Top = 80
  end
  object qry_avgh: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from avgh_visa_group_history'
      'where avgh_id_avg=-1')
    Left = 139
    Top = 24
  end
end
