object frmGroupEdit: TfrmGroupEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #20462#25913#35746#21333#20449#24687
  ClientHeight = 349
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #35746#21333#20449#24687
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    Style.LookAndFeel.Kind = lfOffice11
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Height = 155
    Width = 869
    object cxTabControl1: TcxTabControl
      Left = 2
      Top = 18
      Width = 865
      Height = 135
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 135
      ClientRectRight = 865
      ClientRectTop = 0
      object cxLabel1: TcxLabel
        Left = 17
        Top = 7
        Caption = #21463#29702#21495':'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 194
        Top = 7
        Caption = #23458#25143#31867#21035':'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 338
        Top = 7
        Caption = #23458#25143#21517#31216':'
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 3
        Top = 27
        Caption = #21150#29702#22269#23478':'
        Transparent = True
      end
      object cxLabel6: TcxLabel
        Left = 3
        Top = 50
        Caption = #21150#29702#31867#22411':'
        Transparent = True
      end
      object cxLabel7: TcxLabel
        Left = 194
        Top = 27
        Caption = #21150#29702#31181#31867':'
        Transparent = True
      end
      object cxLabel8: TcxLabel
        Left = 543
        Top = 27
        Caption = #20132#35777#26085#26399':'
        Transparent = True
      end
      object cxLabel9: TcxLabel
        Left = 29
        Top = 72
        Caption = #22791#27880':'
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 67
        Top = 3
        DataBinding.DataField = 'avg_invoiceno'
        DataBinding.DataSource = DS_Avg
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 8
        Width = 121
      end
      object cb_sourcetype: TcxDBComboBox
        Left = 250
        Top = 3
        DataBinding.DataField = 'avg_source'
        DataBinding.DataSource = DS_Avg
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #21516#34892
          #25955#23458)
        Properties.ReadOnly = False
        TabOrder = 9
        Width = 82
      end
      object cxDBButtonEdit1: TcxDBButtonEdit
        Left = 400
        Top = 3
        DataBinding.DataField = 'avg_SourceName'
        DataBinding.DataSource = DS_Avg
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        TabOrder = 10
        Width = 137
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 67
        Top = 24
        DataBinding.DataField = 'avg_id_act'
        DataBinding.DataSource = DS_Avg
        Properties.KeyFieldNames = 'act_id'
        Properties.ListColumns = <
          item
            FieldName = 'act_name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_act
        Properties.OnEditValueChanged = cxDBLookupComboBox1PropertiesEditValueChanged
        TabOrder = 11
        Width = 120
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 67
        Top = 49
        DataBinding.DataField = 'avg_id_type'
        DataBinding.DataSource = DS_Avg
        Properties.KeyFieldNames = 'avt_id'
        Properties.ListColumns = <
          item
            FieldName = 'avt_Name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = CommonDM.DS_Avt
        TabOrder = 12
        Width = 120
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 605
        Top = 24
        DataBinding.DataField = 'avg_date_sign'
        DataBinding.DataSource = DS_Avg
        TabOrder = 13
        Width = 137
      end
      object cxDBMemo1: TcxDBMemo
        Left = 65
        Top = 72
        DataBinding.DataField = 'avg_remark'
        DataBinding.DataSource = DS_Avg
        Properties.ScrollBars = ssVertical
        TabOrder = 14
        Height = 63
        Width = 783
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 250
        Top = 24
        DataBinding.DataField = 'avg_id_avs'
        DataBinding.DataSource = DS_Avg
        Properties.KeyFieldNames = 'avs_id'
        Properties.ListColumns = <
          item
            FieldName = 'avs_Name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_avs
        TabOrder = 15
        Width = 286
      end
      object cxLabel18: TcxLabel
        Left = 543
        Top = 50
        Caption = #25152#23646#21306#22495':'
        Transparent = True
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 605
        Top = 49
        DataBinding.DataField = 'avg_name_aar'
        DataBinding.DataSource = DS_Avg
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 17
        Width = 137
      end
      object cxLabel23: TcxLabel
        Left = 338
        Top = 50
        Caption = #24212#25910#37329#39069#65306
        Transparent = True
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 400
        Top = 49
        DataBinding.DataField = 'avg_amount'
        DataBinding.DataSource = DS_Avg
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 19
        Width = 137
      end
      object cxLabel4: TcxLabel
        Left = 193
        Top = 50
        Caption = #31614#35777#21333#20215#65306
        Transparent = True
      end
      object cxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 250
        Top = 49
        DataBinding.DataField = 'avg_price'
        DataBinding.DataSource = DS_Avg
        TabOrder = 21
        Width = 82
      end
      object cxLabel11: TcxLabel
        Left = 543
        Top = 7
        Caption = #35746#21333#32534#21495':'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 605
        Top = 3
        DataBinding.DataField = 'avg_groupcode'
        DataBinding.DataSource = DS_Avg
        TabOrder = 23
        Width = 137
      end
    end
  end
  object cxTabControl2: TcxTabControl
    Left = 0
    Top = 317
    Width = 869
    Height = 32
    Align = alBottom
    TabOrder = 1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 32
    ClientRectRight = 869
    ClientRectTop = 0
    object btn_close: TcxButton
      Left = 439
      Top = 3
      Width = 75
      Height = 25
      Caption = #20851#38381
      TabOrder = 0
      OnClick = btn_closeClick
    end
    object btn_save: TcxButton
      Left = 336
      Top = 3
      Width = 75
      Height = 25
      Caption = #20445#23384#25805#20316
      TabOrder = 1
      OnClick = btn_saveClick
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 203
    Align = alClient
    Caption = #34892#31243#20449#24687
    TabOrder = 2
    Height = 55
    Width = 869
    object cxTabControl3: TcxTabControl
      Left = 2
      Top = 18
      Width = 865
      Height = 35
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 35
      ClientRectRight = 865
      ClientRectTop = 0
      object cxLabel15: TcxLabel
        Left = 3
        Top = 5
        Caption = #20986#21457#26085#26399':'
        Transparent = True
      end
      object cxLabel16: TcxLabel
        Left = 167
        Top = 5
        Caption = #36820#31243#26085#26399':'
        Transparent = True
      end
      object cxLabel17: TcxLabel
        Left = 343
        Top = 5
        Caption = #38144#31614#26085#26399':'
        Transparent = True
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 65
        Top = 3
        DataBinding.DataField = 'avg_date_st'
        DataBinding.DataSource = DS_Avg
        TabOrder = 3
        Width = 106
      end
      object cxDBDateEdit5: TcxDBDateEdit
        Left = 231
        Top = 3
        DataBinding.DataField = 'avg_date_re'
        DataBinding.DataSource = DS_Avg
        TabOrder = 4
        Width = 106
      end
      object cxDBDateEdit6: TcxDBDateEdit
        Left = 407
        Top = 3
        DataBinding.DataField = 'avg_date_cancel'
        DataBinding.DataSource = DS_Avg
        TabOrder = 5
        Width = 106
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 535
        Top = 3
        Caption = #38656#21407#20214
        DataBinding.DataField = 'avg_need1'
        DataBinding.DataSource = DS_Avg
        Properties.NullStyle = nssUnchecked
        TabOrder = 6
        Transparent = True
        Width = 58
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 599
        Top = 3
        Caption = #38656#25276#37329
        DataBinding.DataField = 'avg_need2'
        DataBinding.DataSource = DS_Avg
        Properties.NullStyle = nssUnchecked
        TabOrder = 7
        Transparent = True
        Width = 58
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 655
        Top = 3
        Caption = #38656#38144#31614
        DataBinding.DataField = 'avg_need3'
        DataBinding.DataSource = DS_Avg
        Properties.NullStyle = nssUnchecked
        TabOrder = 8
        Transparent = True
        Width = 58
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 719
        Top = 3
        Caption = #38656#25285#20445#20989
        DataBinding.DataField = 'avg_need4'
        DataBinding.DataSource = DS_Avg
        Properties.NullStyle = nssUnchecked
        TabOrder = 9
        Transparent = True
        Width = 83
      end
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 0
    Top = 258
    Align = alBottom
    Caption = #23458#25143#20449#24687
    TabOrder = 3
    Height = 59
    Width = 869
    object cxTabControl4: TcxTabControl
      Left = 2
      Top = 18
      Width = 865
      Height = 39
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 39
      ClientRectRight = 865
      ClientRectTop = 0
      object cxLabel20: TcxLabel
        Left = 3
        Top = 6
        Caption = #32852#31995#20154':'
        Transparent = True
      end
      object cxLabel21: TcxLabel
        Left = 215
        Top = 6
        Caption = #32852#31995#30005#35805':'
        Transparent = True
      end
      object cxLabel22: TcxLabel
        Left = 431
        Top = 6
        Caption = #32852#31995#22320#22336':'
        Transparent = True
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 67
        Top = 4
        DataBinding.DataField = 'avg_Source_link'
        DataBinding.DataSource = DS_Avg
        TabOrder = 3
        Width = 142
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 271
        Top = 4
        DataBinding.DataField = 'avg_Source_tel'
        DataBinding.DataSource = DS_Avg
        TabOrder = 4
        Width = 154
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 487
        Top = 4
        DataBinding.DataField = 'avg_Source_addr'
        DataBinding.DataSource = DS_Avg
        TabOrder = 5
        Width = 474
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 155
    Align = alTop
    Caption = #36865#31614#20449#24687
    PanelStyle.BorderWidth = 1
    TabOrder = 4
    Height = 48
    Width = 869
    object cxTabControl5: TcxTabControl
      Left = 2
      Top = 18
      Width = 865
      Height = 28
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 28
      ClientRectRight = 865
      ClientRectTop = 0
      object cxLabel12: TcxLabel
        Left = 3
        Top = 3
        Caption = #39044#32422#26085#26399':'
        Transparent = True
      end
      object cxLabel13: TcxLabel
        Left = 345
        Top = 3
        Caption = #20986#31614#26085#26399':'
        Transparent = True
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 231
        Top = 3
        DataBinding.DataField = 'avg_date_send'
        DataBinding.DataSource = DS_Avg
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 2
        Width = 108
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 407
        Top = 3
        DataBinding.DataField = 'avg_date_rtn'
        DataBinding.DataSource = DS_Avg
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 3
        Width = 108
      end
      object cxLabel10: TcxLabel
        Left = 169
        Top = 3
        Caption = #36865#31614#26085#26399':'
        Transparent = True
      end
      object cxDBDateEdit7: TcxDBDateEdit
        Left = 65
        Top = 3
        DataBinding.DataField = 'avg_date_Meet'
        DataBinding.DataSource = DS_Avg
        Properties.Kind = ckDateTime
        TabOrder = 5
        Width = 106
      end
      object cxLabel14: TcxLabel
        Left = 543
        Top = 3
        Caption = #36865#31614#20154#21592':'
        Transparent = True
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 605
        Top = 3
        DataBinding.DataField = 'avg_user_send'
        DataBinding.DataSource = DS_Avg
        TabOrder = 7
        Width = 137
      end
    end
  end
  object DS_avs: TDataSource
    AutoEdit = False
    DataSet = Qry_avs
    Left = 621
    Top = 80
  end
  object Qry_avs: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    Filter = 'avs_status<>'#39'D'#39
    Filtered = True
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'avs_id_act'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from avs_visa_speed where avs_status<>'#39'D'#39
      'and avs_id_act=:avs_id_act')
    Left = 573
    Top = 80
  end
  object ds_act: TDataSource
    AutoEdit = False
    DataSet = qry_act
    Left = 312
    Top = 112
  end
  object qry_act: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select act_id,act_name,act_code,act_no,act_name_aar,act_id_aar'
      'from act_country'
      'where act_status<>'#39'D'#39)
    Left = 272
    Top = 112
  end
  object qry_ast: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select ast_id,ast_name'
      'from ast_source_type'
      'where ast_status<>'#39'D'#39)
    Left = 216
    Top = 88
  end
  object Qry_Avg: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'avg_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'select avg_id,avg_status,avg_user_lst,avg_date_lst,avg_date_sign' +
        ',avg_groupcode,'
      
        'avg_invoiceno,avg_source,avg_SourceName,avg_date_Meet,avg_date_s' +
        'end,avg_date_rtn,avg_user_send,'
      
        'avg_id_act,avg_id_type,avg_id_avs,avg_name_aar,avg_id_aar,avg_re' +
        'mark,'
      
        'avg_date_st,avg_date_re,avg_date_cancel,avg_need1,avg_need2,avg_' +
        'need3,avg_need4,avg_amount,'
      
        'avg_Source_link,avg_Source_tel,avg_Source_addr,avg_username_lst,' +
        'avg_price,avg_num'
      'from avg_visa_group'
      'where avg_id= :avg_id')
    Left = 461
    Top = 112
  end
  object DS_Avg: TDataSource
    DataSet = Qry_Avg
    Left = 509
    Top = 112
  end
  object qry_avg_old: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'avg_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'select avg_id,avg_status,avg_user_lst,avg_date_lst,avg_date_sign' +
        ',avg_groupcode,'
      
        'avg_invoiceno,avg_source,avg_SourceName,avg_date_Meet,avg_date_s' +
        'end,avg_date_rtn,avg_user_send,'
      
        'avg_id_act,avg_id_type,avg_id_avs,avg_name_aar,avg_id_aar,avg_re' +
        'mark,'
      
        'avg_date_st,avg_date_re,avg_date_cancel,avg_need1,avg_need2,avg_' +
        'need3,avg_need4,avg_amount,'
      
        'avg_Source_link,avg_Source_tel,avg_Source_addr,avg_username_lst,' +
        'avg_price,avg_num'
      'from avg_visa_group'
      'where avg_id= :avg_id')
    Left = 373
    Top = 112
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
    Left = 781
    Top = 80
  end
  object qry_avt: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avt_id,avt_Name'
      'from avt_visa_type'
      'where avt_status<>'#39'D'#39)
    Left = 80
    Top = 88
  end
  object qry_avs_all: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avs_id,avs_Name'
      'from avs_visa_speed'
      'where avs_status<>'#39'D'#39)
    Left = 136
    Top = 88
  end
  object qry_avg_user_info: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avg_id,avg_invoiceno,avg_user_enter,aus_id'
      'from avg_visa_group with(nolock),aus_users with(nolock)'
      'where avg_id=90729'
      'and aus_status<>'#39'D'#39
      'and aus_username=avg_user_enter')
    Left = 696
    Top = 72
  end
end
