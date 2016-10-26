object VisaAppSelectGuestListFrm: TVisaAppSelectGuestListFrm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #31614#35777#25805#20316
  ClientHeight = 371
  ClientWidth = 955
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
    Width = 955
    Height = 33
    Align = alTop
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 33
    ClientRectRight = 955
    ClientRectTop = 0
    object cxLabel1: TcxLabel
      Left = 8
      Top = 8
      Caption = 'cxLabel1'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 112
      Top = 13
      Caption = 'cxLabel2'
      Transparent = True
    end
    object btn_select_all: TcxButton
      Left = 273
      Top = 5
      Width = 64
      Height = 25
      Caption = #20840#36873
      TabOrder = 2
      OnClick = btn_select_allClick
    end
    object btn_select_none: TcxButton
      Left = 343
      Top = 5
      Width = 64
      Height = 25
      Caption = #20840#19981#36873
      TabOrder = 3
      OnClick = btn_select_noneClick
    end
    object btn_selet_not: TcxButton
      Left = 413
      Top = 5
      Width = 64
      Height = 25
      Caption = #21453#36873
      TabOrder = 4
      OnClick = btn_selet_notClick
    end
    object lbl_select: TcxLabel
      Left = 752
      Top = 7
      Caption = #31579#36873#65306
      Transparent = True
      Visible = False
    end
    object cb_select: TcxComboBox
      Left = 793
      Top = 6
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '-='#20840#37096'=-'
        #38750#36865#31614#29366#24577)
      Properties.OnChange = cb_selectPropertiesChange
      TabOrder = 6
      Text = #38750#36865#31614#29366#24577
      Visible = False
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 504
      Top = 7
      Caption = #22995#21517#65306
      Transparent = True
    end
    object edt_name: TcxTextEdit
      Left = 545
      Top = 6
      TabOrder = 8
      Width = 80
    end
    object btn_search: TcxButton
      Left = 635
      Top = 5
      Width = 64
      Height = 25
      Caption = #25628#32034
      TabOrder = 9
      OnClick = btn_searchClick
    end
  end
  object cxTabControl2: TcxTabControl
    Left = 0
    Top = 331
    Width = 955
    Height = 40
    Align = alBottom
    TabOrder = 1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 40
    ClientRectRight = 955
    ClientRectTop = 0
    object Btn_Save: TcxButton
      Left = 368
      Top = 12
      Width = 75
      Height = 25
      Caption = #20445#23384#25805#20316
      TabOrder = 0
      OnClick = Btn_SaveClick
    end
    object btn_Close: TcxButton
      Left = 488
      Top = 12
      Width = 75
      Height = 25
      Caption = #20851#38381
      TabOrder = 1
      OnClick = btn_CloseClick
    end
  end
  object cxTabControl3: TcxTabControl
    Left = 0
    Top = 33
    Width = 955
    Height = 61
    Align = alTop
    TabOrder = 2
    Visible = False
    Properties.CustomButtons.Buttons = <>
    Properties.TabIndex = 0
    Properties.Tabs.Strings = (
      #36865#31614)
    ClientRectBottom = 61
    ClientRectRight = 955
    ClientRectTop = 24
    object lbl_SendDate: TcxLabel
      Left = 8
      Top = 32
      Caption = #36865#31614#26085#26399':'
      Transparent = True
    end
    object lbl_SendName: TcxLabel
      Left = 426
      Top = 32
      Caption = #36865#31614#20154#21592':'
      Transparent = True
    end
    object DE_SendDate: TcxDateEdit
      Left = 65
      Top = 34
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = DE_SendDatePropertiesEditValueChanged
      TabOrder = 2
      Width = 121
    end
    object Edt_SendName: TcxTextEdit
      Left = 488
      Top = 32
      TabOrder = 3
      Width = 121
    end
    object lbl_BackDate: TcxLabel
      Left = 192
      Top = 34
      Caption = #20986#31614#26085#26399':'
      Transparent = True
    end
    object DE_BackDate: TcxDateEdit
      Left = 248
      Top = 34
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 5
      Width = 121
    end
    object lbl_BookingDateTime: TcxLabel
      Left = 642
      Top = 32
      Caption = #39044#32422#26085#26399#26102#38388':'
      Transparent = True
    end
    object DE_BookingDateTime: TcxDateEdit
      Left = 728
      Top = 34
      Properties.Kind = ckDateTime
      TabOrder = 7
      Width = 150
    end
    object rb_sign: TcxRadioButton
      Left = 24
      Top = 30
      Width = 113
      Height = 17
      Caption = #26174#31034#25253#21517#29366#24577#30340#35760#24405
      Checked = True
      TabOrder = 8
      TabStop = True
      Visible = False
      OnClick = rb_signClick
      Transparent = True
    end
    object rb_refund: TcxRadioButton
      Left = 224
      Top = 32
      Width = 113
      Height = 17
      Caption = #26174#31034#36864#22242#29366#24577#30340#35760#24405
      TabOrder = 9
      Visible = False
      OnClick = rb_signClick
      Transparent = True
    end
  end
  object cxTabControl4: TcxTabControl
    Left = 0
    Top = 94
    Width = 955
    Height = 173
    Align = alClient
    TabOrder = 3
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 173
    ClientRectRight = 955
    ClientRectTop = 0
    object cxTabControl6: TcxTabControl
      Left = 0
      Top = 0
      Width = 666
      Height = 173
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      Properties.TabIndex = 0
      Properties.Tabs.Strings = (
        #23458#20154#20449#24687)
      ClientRectBottom = 173
      ClientRectRight = 666
      ClientRectTop = 24
      object cxGrid1: TcxGrid
        Left = 0
        Top = 24
        Width = 666
        Height = 149
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DS_ava
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          OnCustomDrawIndicatorCell = cxGrid1DBTableView1CustomDrawIndicatorCell
          object cxGrid1DBTableView1_ava_state: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'ava_state'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1ava_name_c: TcxGridDBColumn
            Caption = #20013#25991#22995#21517
            DataBinding.FieldName = 'ava_name_c'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_name_e: TcxGridDBColumn
            Caption = #33521#25991#22995#21517
            DataBinding.FieldName = 'ava_name_e'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 93
          end
          object cxGrid1DBTableView1ava_name_p: TcxGridDBColumn
            Caption = #25340#38899
            DataBinding.FieldName = 'ava_name_p'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 95
          end
          object cxGrid1DBTableView1ava_PassPortNo: TcxGridDBColumn
            Caption = #25252#29031#21495#30721
            DataBinding.FieldName = 'ava_PassPortNo'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_sex: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'ava_sex'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #30007
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = #22899
                Value = '2'
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 43
          end
          object cxGrid1DBTableView1ava_date_birth: TcxGridDBColumn
            Caption = #20986#29983#24180#26376
            DataBinding.FieldName = 'ava_date_birth'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_Date_Sign: TcxGridDBColumn
            Caption = #31614#21457#26085#26399
            DataBinding.FieldName = 'ava_Date_Sign'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_Date_End: TcxGridDBColumn
            Caption = #26377#25928#26399#33267
            DataBinding.FieldName = 'ava_Date_End'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn
            Caption = #35746#21333#29366#24577
            DataBinding.FieldName = 'ava_StatusType'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_Remark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'ava_Remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_id: TcxGridDBColumn
            DataBinding.FieldName = 'ava_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1_ava_index: TcxGridDBColumn
            DataBinding.FieldName = 'ava_index'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Memo1: TMemo
        Left = 128
        Top = 56
        Width = 289
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
        Visible = False
      end
    end
    object cxTabControl5: TcxTabControl
      Left = 666
      Top = 0
      Width = 289
      Height = 173
      Align = alRight
      TabOrder = 1
      Visible = False
      Properties.CustomButtons.Buttons = <>
      Properties.TabIndex = 0
      Properties.Tabs.Strings = (
        #34917#36164#26009)
      ClientRectBottom = 173
      ClientRectRight = 289
      ClientRectTop = 24
      object CB_BuZhiLiao: TcxCheckListBox
        Left = 0
        Top = 24
        Width = 289
        Height = 149
        Align = alClient
        Items = <>
        TabOrder = 0
      end
    end
  end
  object cxTabControl7: TcxTabControl
    Left = 0
    Top = 267
    Width = 955
    Height = 64
    Align = alBottom
    TabOrder = 4
    Visible = False
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 64
    ClientRectRight = 955
    ClientRectTop = 0
    object cxLabel4: TcxLabel
      Left = 8
      Top = 6
      Caption = #22791#27880#65306
      Transparent = True
    end
    object memo_remark: TcxMemo
      Left = 54
      Top = 6
      Properties.ScrollBars = ssVertical
      TabOrder = 1
      Height = 56
      Width = 393
    end
  end
  object qry_ava: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ava_id_avg'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'ava_id, ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,' +
        'ava_date_birth,ava_Date_Sign,ava_Date_End,ava_StatusType,ava_Rem' +
        'ark,ava_state,ava_index'
      ' from ava_visa_application '
      ' where ava_id_avg=:ava_id_avg'
      'and ava_status<>'#39'D'#39
      'and ava_state<>'#39#36864#22242#39
      'order by ava_index')
    Left = 507
    Top = 64
  end
  object DS_ava: TDataSource
    AutoEdit = False
    DataSet = qry_ava
    Left = 507
    Top = 120
  end
  object Qry_avi: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select avi_id,avi_name from avi_visa_info where avi_status<>'#39'D'#39)
    Left = 579
    Top = 64
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
    Left = 104
    Top = 152
  end
  object qry_avs: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from avs_visa_speed with(nolock),act_country with(nolock)'
      ' where avs_id_act=act_id'
      ' and avs_id=1'
      'and avs_id_act=11')
    Left = 184
    Top = 152
  end
  object qry_ahd: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select top 7 * '
      'from ahd_hoilday with(nolock)'
      'where ahd_status<>'#39'D'#39
      'and ahd_date>'#39'2014-10-11'#39
      'and ahd_IsHoilday=-0'
      'and ahd_id_act=1'
      'order by ahd_date')
    Left = 264
    Top = 152
  end
  object qry_avg: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avg_id,avg_id_act,avg_id_avs'
      'from avg_visa_group with(nolock)'
      'where avg_id=1'
      '')
    Left = 328
    Top = 152
  end
end
