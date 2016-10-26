object VisaSignFrm: TVisaSignFrm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'VisaSignFrm'
  ClientHeight = 583
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object cxScrollBox1: TcxScrollBox
    Left = 0
    Top = 0
    Width = 1000
    Height = 583
    Align = alClient
    TabOrder = 0
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
      Width = 998
      object cxTabControl1: TcxTabControl
        Left = 2
        Top = 17
        Width = 994
        Height = 136
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ExplicitLeft = 3
        ExplicitTop = 13
        ClientRectBottom = 136
        ClientRectRight = 994
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
          Top = 3
          Caption = #23458#25143#21517#31216':'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 338
          Top = 50
          Caption = #21150#29702#20154#25968':'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 3
          Top = 27
          Caption = #21150#29702#22269#23478':'
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 10
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
          Left = 549
          Top = 5
          Caption = #35746#21333#32534#21495':'
          Transparent = True
        end
        object cxLabel9: TcxLabel
          Left = 31
          Top = 72
          Caption = #22791#27880':'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 67
          Top = 3
          DataBinding.DataField = 'avg_invoiceno'
          DataBinding.DataSource = DS_Avg
          TabOrder = 9
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
          TabOrder = 10
          Width = 82
        end
        object cxDBButtonEdit1: TcxDBButtonEdit
          Left = 392
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
          TabOrder = 11
          Width = 151
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 392
          Top = 49
          DataBinding.DataField = 'avg_num'
          DataBinding.DataSource = DS_Avg
          Properties.ReadOnly = True
          Style.Color = clMoneyGreen
          TabOrder = 12
          Width = 40
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
          TabOrder = 13
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
          TabOrder = 14
          Width = 121
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 605
          Top = 24
          DataBinding.DataField = 'avg_date_sign'
          DataBinding.DataSource = DS_Avg
          TabOrder = 15
          Width = 139
        end
        object cxDBMemo1: TcxDBMemo
          Left = 67
          Top = 72
          DataBinding.DataField = 'avg_remark'
          DataBinding.DataSource = DS_Avg
          Properties.ScrollBars = ssVertical
          TabOrder = 16
          Height = 63
          Width = 476
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
          TabOrder = 17
          Width = 293
        end
        object cxLabel18: TcxLabel
          Left = 549
          Top = 99
          Caption = #25152#23646#21306#22495':'
          Transparent = True
        end
        object cxLabel19: TcxLabel
          Left = 549
          Top = 50
          Caption = #24405#20837#21333#20154':'
          Transparent = True
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 605
          Top = 50
          DataBinding.DataField = 'avg_user_enter'
          DataBinding.DataSource = DS_Avg
          Properties.ReadOnly = True
          Style.Color = clMoneyGreen
          TabOrder = 20
          Width = 139
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 605
          Top = 99
          DataBinding.DataField = 'avg_name_aar'
          DataBinding.DataSource = DS_Avg
          Properties.ReadOnly = True
          Style.Color = clMoneyGreen
          TabOrder = 21
          Width = 68
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 250
          Top = 50
          DataBinding.DataField = 'avg_price'
          DataBinding.DataSource = DS_Avg
          Properties.DisplayFormat = ',0.00;-,0.00'
          TabOrder = 22
          Width = 82
        end
        object cxLabel23: TcxLabel
          Left = 194
          Top = 49
          Caption = #21333#20215#65306
          Transparent = True
        end
        object cxLabel24: TcxLabel
          Left = 438
          Top = 50
          Caption = #24212#25910#65306
          Transparent = True
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 472
          Top = 50
          DataBinding.DataField = 'avg_amount'
          DataBinding.DataSource = DS_Avg
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.ReadOnly = True
          Style.Color = clMoneyGreen
          TabOrder = 25
          Width = 71
        end
        object cxLabel25: TcxLabel
          Left = 549
          Top = 72
          Caption = #24405#20837#26085#26399':'
          Transparent = True
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 605
          Top = 72
          DataBinding.DataField = 'avg_date_enter'
          DataBinding.DataSource = DS_Avg
          Properties.ReadOnly = True
          Style.Color = clMoneyGreen
          TabOrder = 27
          Width = 139
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 679
          Top = 99
          Caption = #33258#30001#25805#20316
          DataBinding.DataField = 'avg_op_order_flg'
          DataBinding.DataSource = DS_Avg
          ParentBackground = False
          ParentColor = False
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Style.Color = clMoneyGreen
          TabOrder = 28
          Width = 82
        end
        object cxLabel26: TcxLabel
          Left = 549
          Top = 27
          Caption = #20132#35777#26085#26399':'
          Transparent = True
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 605
          Top = 3
          DataBinding.DataField = 'avg_groupcode'
          DataBinding.DataSource = DS_Avg
          TabOrder = 30
          Width = 139
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 0
      Top = 155
      Align = alTop
      Caption = #36865#31614#20449#24687
      PanelStyle.BorderWidth = 1
      TabOrder = 1
      Height = 48
      Width = 998
      object cxTabControl2: TcxTabControl
        Left = 2
        Top = 17
        Width = 994
        Height = 29
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 29
        ClientRectRight = 994
        ClientRectTop = 0
        object cxLabel10: TcxLabel
          Left = 0
          Top = 3
          Caption = #35746#21333#29366#24577':'
          Transparent = True
        end
        object cxLabel11: TcxLabel
          Left = 141
          Top = 3
          Caption = #39044#32422#26085#26399':'
          Transparent = True
        end
        object cxLabel12: TcxLabel
          Left = 296
          Top = 3
          Caption = #36865#31614#26085#26399':'
          Transparent = True
        end
        object cxLabel13: TcxLabel
          Left = 451
          Top = 3
          Caption = #20986#31614#26085#26399':'
          Transparent = True
        end
        object cxLabel14: TcxLabel
          Left = 605
          Top = 3
          Caption = #36865#31614#20154#21592':'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 55
          Top = 5
          DataBinding.DataField = 'avg_state'
          DataBinding.DataSource = DS_Avg
          Properties.ReadOnly = True
          TabOrder = 5
          Width = 80
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 350
          Top = 5
          DataBinding.DataField = 'avg_date_send'
          DataBinding.DataSource = DS_Avg
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 6
          Width = 95
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 504
          Top = 5
          DataBinding.DataField = 'avg_date_rtn'
          DataBinding.DataSource = DS_Avg
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 7
          Width = 95
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 661
          Top = 5
          DataBinding.DataField = 'avg_user_send'
          DataBinding.DataSource = DS_Avg
          TabOrder = 8
          Width = 83
        end
        object cxDBDateEdit7: TcxDBDateEdit
          Left = 195
          Top = 5
          DataBinding.DataField = 'avg_date_Meet'
          DataBinding.DataSource = DS_Avg
          Properties.Kind = ckDateTime
          TabOrder = 9
          Width = 95
        end
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 0
      Top = 203
      Align = alTop
      Caption = #34892#31243#20449#24687
      TabOrder = 2
      Height = 48
      Width = 998
      object cxTabControl3: TcxTabControl
        Left = 2
        Top = 17
        Width = 994
        Height = 29
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 29
        ClientRectRight = 994
        ClientRectTop = 0
        object cxLabel15: TcxLabel
          Left = 0
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
          Left = 328
          Top = 5
          Caption = #38144#31614#26085#26399':'
          Transparent = True
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 55
          Top = 5
          DataBinding.DataField = 'avg_date_st'
          DataBinding.DataSource = DS_Avg
          TabOrder = 3
          Width = 95
        end
        object cxDBDateEdit5: TcxDBDateEdit
          Left = 223
          Top = 3
          DataBinding.DataField = 'avg_date_re'
          DataBinding.DataSource = DS_Avg
          TabOrder = 4
          Width = 95
        end
        object cxDBDateEdit6: TcxDBDateEdit
          Left = 384
          Top = 3
          DataBinding.DataField = 'avg_date_cancel'
          DataBinding.DataSource = DS_Avg
          TabOrder = 5
          Width = 95
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 477
          Top = 4
          Caption = #38656#21407#20214
          DataBinding.DataField = 'avg_need1'
          DataBinding.DataSource = DS_Avg
          Properties.NullStyle = nssUnchecked
          TabOrder = 6
          Transparent = True
          Width = 58
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 541
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
          Left = 605
          Top = 4
          Caption = #38656#38144#31614
          DataBinding.DataField = 'avg_need3'
          DataBinding.DataSource = DS_Avg
          Properties.NullStyle = nssUnchecked
          TabOrder = 8
          Transparent = True
          Width = 58
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 669
          Top = 4
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
      Top = 251
      Align = alTop
      Caption = #23458#25143#20449#24687
      TabOrder = 3
      Height = 49
      Width = 998
      object cxTabControl4: TcxTabControl
        Left = 2
        Top = 17
        Width = 994
        Height = 30
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 30
        ClientRectRight = 994
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
          Left = 55
          Top = 4
          DataBinding.DataField = 'avg_Source_link'
          DataBinding.DataSource = DS_Avg
          TabOrder = 3
          Width = 154
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
          Width = 257
        end
      end
    end
    object cxGroupBox5: TcxGroupBox
      Left = 0
      Top = 407
      Align = alBottom
      Caption = #36130#21153#20449#24687
      TabOrder = 4
      Visible = False
      Height = 35
      Width = 998
      object cxTabControl5: TcxTabControl
        Left = 2
        Top = 17
        Width = 994
        Height = 102
        Align = alTop
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 102
        ClientRectRight = 994
        ClientRectTop = 0
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 994
          Height = 102
          Align = alClient
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
    end
    object cxGroupBox7: TcxGroupBox
      Left = 0
      Top = 300
      Align = alClient
      Caption = #23458#20154#20449#24687
      TabOrder = 5
      Height = 107
      Width = 998
      object cxTabControl6: TcxTabControl
        Left = 2
        Top = 17
        Width = 994
        Height = 88
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 88
        ClientRectRight = 994
        ClientRectTop = 0
        object cxGrid1: TcxGrid
          Left = 48
          Top = 0
          Width = 946
          Height = 88
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = True
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = DS_ava
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Appending = True
            OptionsData.CancelOnExit = False
            OptionsData.DeletingConfirmation = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 25
            OnCustomDrawIndicatorCell = cxGrid1DBTableView1CustomDrawIndicatorCell
            object cxGrid1DBTableView1_ava_state: TcxGridDBColumn
              Caption = #29366#24577
              DataBinding.FieldName = 'ava_state'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 60
            end
            object cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn
              Caption = #35746#21333#29366#24577
              DataBinding.FieldName = 'ava_StatusType'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
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
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 95
            end
            object cxGrid1DBTableView1_ava_idcard: TcxGridDBColumn
              Caption = #36523#20221#35777
              DataBinding.FieldName = 'ava_idcard'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
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
            object cxGrid1DBTableView1ava_home_addr: TcxGridDBColumn
              Caption = #24120#20303#22320#22336
              DataBinding.FieldName = 'ava_home_addr'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 75
            end
            object cxGrid1DBTableView1ava_mobile: TcxGridDBColumn
              Caption = #30005#35805#21495#30721
              DataBinding.FieldName = 'ava_mobile'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 75
            end
            object cxGrid1DBTableView1_ava_age: TcxGridDBColumn
              Caption = #24180#40836
              DataBinding.FieldName = 'ava_age'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 50
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
            object cxGrid1DBTableView1ava_id_avg: TcxGridDBColumn
              DataBinding.FieldName = 'ava_id_avg'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_date_app: TcxGridDBColumn
              DataBinding.FieldName = 'ava_date_app'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_no_app: TcxGridDBColumn
              DataBinding.FieldName = 'ava_no_app'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_lastname_c: TcxGridDBColumn
              DataBinding.FieldName = 'ava_lastname_c'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_lastname_e: TcxGridDBColumn
              DataBinding.FieldName = 'ava_lastname_e'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_lastname_p: TcxGridDBColumn
              DataBinding.FieldName = 'ava_lastname_p'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_firstname_c: TcxGridDBColumn
              DataBinding.FieldName = 'ava_firstname_c'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_firstname_e: TcxGridDBColumn
              DataBinding.FieldName = 'ava_firstname_e'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_firstname_p: TcxGridDBColumn
              DataBinding.FieldName = 'ava_firstname_p'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_alias: TcxGridDBColumn
              DataBinding.FieldName = 'ava_alias'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_name_ever: TcxGridDBColumn
              DataBinding.FieldName = 'ava_name_ever'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_no_iden: TcxGridDBColumn
              DataBinding.FieldName = 'ava_no_iden'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_ntn_now: TcxGridDBColumn
              DataBinding.FieldName = 'ava_ntn_now'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_ntn_birth: TcxGridDBColumn
              DataBinding.FieldName = 'ava_ntn_birth'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_pvc_birth: TcxGridDBColumn
              DataBinding.FieldName = 'ava_pvc_birth'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_cty_birth: TcxGridDBColumn
              DataBinding.FieldName = 'ava_cty_birth'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_fathername: TcxGridDBColumn
              DataBinding.FieldName = 'ava_fathername'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_mothername: TcxGridDBColumn
              DataBinding.FieldName = 'ava_mothername'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_marriage: TcxGridDBColumn
              DataBinding.FieldName = 'ava_marriage'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_tel_addr: TcxGridDBColumn
              DataBinding.FieldName = 'ava_tel_addr'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_fax_addr: TcxGridDBColumn
              DataBinding.FieldName = 'ava_fax_addr'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_tel_work: TcxGridDBColumn
              DataBinding.FieldName = 'ava_tel_work'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_fax_work: TcxGridDBColumn
              DataBinding.FieldName = 'ava_fax_work'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_bbc: TcxGridDBColumn
              DataBinding.FieldName = 'ava_bbc'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_email: TcxGridDBColumn
              DataBinding.FieldName = 'ava_email'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_status: TcxGridDBColumn
              DataBinding.FieldName = 'ava_status'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_ntn_province: TcxGridDBColumn
              DataBinding.FieldName = 'ava_ntn_province'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_ntn_city: TcxGridDBColumn
              DataBinding.FieldName = 'ava_ntn_city'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_ntn_county: TcxGridDBColumn
              DataBinding.FieldName = 'ava_ntn_county'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_ntn_address: TcxGridDBColumn
              DataBinding.FieldName = 'ava_ntn_address'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_ntn_before: TcxGridDBColumn
              DataBinding.FieldName = 'ava_ntn_before'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_now_province: TcxGridDBColumn
              DataBinding.FieldName = 'ava_now_province'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_now_city: TcxGridDBColumn
              DataBinding.FieldName = 'ava_now_city'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_now_county: TcxGridDBColumn
              DataBinding.FieldName = 'ava_now_county'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_now_address: TcxGridDBColumn
              DataBinding.FieldName = 'ava_now_address'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_home_post: TcxGridDBColumn
              DataBinding.FieldName = 'ava_home_post'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_now_post: TcxGridDBColumn
              DataBinding.FieldName = 'ava_now_post'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_liaison_addr: TcxGridDBColumn
              DataBinding.FieldName = 'ava_liaison_addr'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_liaison_mobile: TcxGridDBColumn
              DataBinding.FieldName = 'ava_liaison_mobile'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_liaison_tel: TcxGridDBColumn
              DataBinding.FieldName = 'ava_liaison_tel'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_liaison_fax: TcxGridDBColumn
              DataBinding.FieldName = 'ava_liaison_fax'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_liaison_post: TcxGridDBColumn
              DataBinding.FieldName = 'ava_liaison_post'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_liaison_email: TcxGridDBColumn
              DataBinding.FieldName = 'ava_liaison_email'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_citizenship: TcxGridDBColumn
              DataBinding.FieldName = 'ava_citizenship'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_commercial: TcxGridDBColumn
              DataBinding.FieldName = 'ava_commercial'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_id_act: TcxGridDBColumn
              DataBinding.FieldName = 'ava_id_act'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_code: TcxGridDBColumn
              DataBinding.FieldName = 'ava_code'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1ava_update1: TcxGridDBColumn
              DataBinding.FieldName = 'ava_update1'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object cxGrid1DBTableView1_ava_index: TcxGridDBColumn
              DataBinding.FieldName = 'ava_index'
              Visible = False
            end
            object cxGrid1DBTableView1_ava_remark1: TcxGridDBColumn
              Caption = #22791#27880'1'
              DataBinding.FieldName = 'ava_remark1'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
            end
            object cxGrid1DBTableView1_ava_remark2: TcxGridDBColumn
              Caption = #22791#27880'2'
              DataBinding.FieldName = 'ava_remark2'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object tc_up_down: TcxTabControl
          Left = 0
          Top = 0
          Width = 48
          Height = 88
          Align = alLeft
          TabOrder = 1
          Visible = False
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 88
          ClientRectRight = 48
          ClientRectTop = 0
          object btn_up: TcxButton
            Left = 6
            Top = 11
            Width = 36
            Height = 25
            Caption = #19978#31227
            TabOrder = 0
            OnClick = btn_upClick
          end
          object btn_down: TcxButton
            Left = 6
            Top = 39
            Width = 36
            Height = 25
            Caption = #19979#31227
            TabOrder = 1
            OnClick = btn_downClick
          end
        end
      end
    end
    object cxGroupBox6: TcxGroupBox
      Left = 0
      Top = 442
      Align = alBottom
      Caption = #25805#20316#35760#24405
      TabOrder = 6
      Height = 139
      Width = 998
      object cxTabControl7: TcxTabControl
        Left = 2
        Top = 17
        Width = 994
        Height = 100
        Align = alTop
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 100
        ClientRectRight = 994
        ClientRectTop = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 994
          Height = 100
          Align = alClient
          TabOrder = 0
          ExplicitLeft = -40
          ExplicitTop = -11
          object cxGrid2DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxGrid2DBTableView1CellDblClick
            DataController.DataSource = DS_avgh
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 40
            OnCustomDrawIndicatorCell = cxGrid2DBTableView1CustomDrawIndicatorCell
            object cxGrid2DBTableView1avgh_Date_op: TcxGridDBColumn
              Caption = #19994#21153#26085#26399
              DataBinding.FieldName = 'avgh_Date_op'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              SortIndex = 0
              SortOrder = soAscending
              Width = 130
            end
            object cxGrid2DBTableView1avgh_User_op: TcxGridDBColumn
              Caption = #32463#21150#20154
              DataBinding.FieldName = 'avgh_User_op'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 75
            end
            object cxGrid2DBTableView1avgh_GuestName: TcxGridDBColumn
              Caption = #23458#20154#22995#21517
              DataBinding.FieldName = 'avgh_GuestName'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 95
            end
            object cxGrid2DBTableView1avgh_type: TcxGridDBColumn
              Caption = #19994#21153#31867#22411
              DataBinding.FieldName = 'avgh_type'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 85
            end
            object cxGrid2DBTableView1avgh_remark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'avgh_remark'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 585
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
  end
  object Qry_Avg: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = Qry_AvgAfterInsert
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
      'select * from avg_visa_group'
      'where avg_id= :avg_id')
    Left = 952
    Top = 40
  end
  object DS_Avg: TDataSource
    AutoEdit = False
    DataSet = Qry_Avg
    OnStateChange = DS_AvgStateChange
    Left = 952
    Top = 96
  end
  object qry_ava: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qry_avaAfterInsert
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
      'select * from ava_visa_application where ava_id_avg=:ava_id_avg'
      'and ava_status<>'#39'D'#39
      'and ava_state<>'#39#36864#22242#39
      'order by ava_index')
    Left = 960
    Top = 272
  end
  object DS_ava: TDataSource
    AutoEdit = False
    DataSet = qry_ava
    Left = 960
    Top = 320
  end
  object Qry_avgh: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'avgh_id_avg'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from avgh_visa_group_history where avgh_id_avg=:avgh_id' +
        '_avg'
      'and avgh_status<>'#39'D'#39)
    Left = 896
    Top = 272
  end
  object DS_avgh: TDataSource
    AutoEdit = False
    DataSet = Qry_avgh
    Left = 896
    Top = 328
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
    Left = 632
    Top = 104
  end
  object DS_avs: TDataSource
    AutoEdit = False
    DataSet = Qry_avs
    Left = 704
    Top = 104
  end
  object sp_ava_up_down: TADOStoredProc
    Connection = CommonDM.ConVisa
    ProcedureName = 'usp_ava_up_down;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ava1_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ava1_index'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ava2_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ava2_index'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 226
    Top = 347
  end
  object sp_get_invoiceno: TADOStoredProc
    Connection = CommonDM.ConVisa
    ProcedureName = 'usp_get_invoiceno'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@act_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 82
    Top = 19
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
    Left = 424
    Top = 96
  end
  object ds_act: TDataSource
    AutoEdit = False
    DataSet = qry_act
    Left = 488
    Top = 96
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
    Left = 296
    Top = 96
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
      'select * from avg_visa_group'
      'where avg_id= :avg_id')
    Left = 552
    Top = 104
  end
  object qry_avgh_split_orders: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select * from avgh_visa_group_history where avgh_id=-1')
    Left = 672
    Top = 56
  end
  object qry_avb_old: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from avb_visa_buziliao'
      'where avb_id_ava in (-1)'
      'order by avb_number_avgh'
      '')
    Left = 88
    Top = 88
  end
  object qry_avb_new: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from avb_visa_buziliao'
      'where avb_id=-1')
    Left = 176
    Top = 88
  end
  object sp_app_limit: TADOStoredProc
    Connection = CommonDM.ConVisa
    ProcedureName = 'usp_app_limit'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@avg_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 330
    Top = 347
  end
end
