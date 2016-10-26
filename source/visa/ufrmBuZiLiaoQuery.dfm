inherited frmBuZiLiaoQuery: TfrmBuZiLiaoQuery
  Caption = #34917#36164#26009#26597#35810
  ClientHeight = 404
  ClientWidth = 984
  OnClose = FormClose
  ExplicitLeft = -211
  ExplicitTop = 2
  ExplicitWidth = 1000
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Top = 51
    Width = 984
    Height = 353
    TabOrder = 11
    ExplicitTop = 0
    ExplicitWidth = 984
    ExplicitHeight = 330
    ClientRectBottom = 353
    ClientRectRight = 984
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 984
      Height = 353
      Align = alClient
      Properties.Tabs.Strings = (
        #34917#36164#26009#26126#32454'('#34920')')
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 984
      ExplicitHeight = 353
      ClientRectBottom = 353
      ClientRectRight = 984
      inherited cxGrid1: TcxGrid
        Width = 984
        Height = 330
        Visible = False
        ExplicitWidth = 984
        ExplicitHeight = 330
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.IndicatorWidth = 22
          object cxGrid1DBTableView1avg_id: TcxGridDBColumn
            DataBinding.FieldName = 'avg_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn
            Caption = #21463#29702#32534#21495
            DataBinding.FieldName = 'avg_invoiceno'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_state: TcxGridDBColumn
            Caption = #35746#21333#29366#24577
            DataBinding.FieldName = 'avg_state'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_id_act: TcxGridDBColumn
            Caption = #22269#23478
            DataBinding.FieldName = 'avg_id_act'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'act_id'
            Properties.ListColumns = <
              item
                FieldName = 'act_Name'
              end>
            Properties.ListSource = ds_act
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_id_type: TcxGridDBColumn
            Caption = #21150#29702#31867#22411
            DataBinding.FieldName = 'avg_id_type'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'avt_id'
            Properties.ListColumns = <
              item
                FieldName = 'avt_Name'
              end>
            Properties.ListSource = ds_avt
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_id_avs: TcxGridDBColumn
            Caption = #21150#29702#31181#31867
            DataBinding.FieldName = 'avg_id_avs'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'avs_id'
            Properties.ListColumns = <
              item
                FieldName = 'avs_Name'
              end>
            Properties.ListSource = DS_avs
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_source: TcxGridDBColumn
            DataBinding.FieldName = 'avg_source'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_num: TcxGridDBColumn
            DataBinding.FieldName = 'avg_num'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_SourceName: TcxGridDBColumn
            Caption = #23458#25143#21517#31216
            DataBinding.FieldName = 'avg_SourceName'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn
            Caption = #20837#21333#20154
            DataBinding.FieldName = 'avg_user_enter'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn
            Caption = #20837#21333#26085#26399
            DataBinding.FieldName = 'avg_date_enter'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avg_user_send: TcxGridDBColumn
            Caption = #36865#31614#20154
            DataBinding.FieldName = 'avg_user_send'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_date_send: TcxGridDBColumn
            Caption = #36865#31614#26085#26399
            DataBinding.FieldName = 'avg_date_send'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avg_date_rtn: TcxGridDBColumn
            DataBinding.FieldName = 'avg_date_rtn'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_amount: TcxGridDBColumn
            DataBinding.FieldName = 'avg_amount'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_remark: TcxGridDBColumn
            DataBinding.FieldName = 'avg_remark'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_price: TcxGridDBColumn
            DataBinding.FieldName = 'avg_price'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avgh_id: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avgh_User_op: TcxGridDBColumn
            Caption = #25805#20316#20154
            DataBinding.FieldName = 'avgh_User_op'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avgh_Date_op: TcxGridDBColumn
            Caption = #25805#20316#26085#26399
            DataBinding.FieldName = 'avgh_Date_op'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avgh_GuestName: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_GuestName'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avgh_type: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_type'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avgh_num: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'avgh_num'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 56
          end
          object cxGrid1DBTableView1avgh_remark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'avgh_remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
          end
          object cxGrid1DBTableView1avgh_number: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_number'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avgh_id_aus_op: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_id_aus_op'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
        end
        object cxGrid1DBTableView2: TcxGridDBTableView [1]
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          DataController.DataSource = ds_avb
          DataController.DetailKeyFieldNames = 'avb_number_avgh'
          DataController.MasterKeyFieldNames = 'avgh_number'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnHorzSizing = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 16
          OnCustomDrawIndicatorCell = cxGrid1DBTableView1CustomDrawIndicatorCell
          object cxGrid1DBTableView2avb_id: TcxGridDBColumn
            DataBinding.FieldName = 'avb_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView2avb_user_ins: TcxGridDBColumn
            DataBinding.FieldName = 'avb_user_ins'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView2avb_date_ins: TcxGridDBColumn
            DataBinding.FieldName = 'avb_date_ins'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView2avb_status: TcxGridDBColumn
            DataBinding.FieldName = 'avb_status'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView2avb_number_avgh: TcxGridDBColumn
            DataBinding.FieldName = 'avb_number_avgh'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView2avb_id_ava: TcxGridDBColumn
            DataBinding.FieldName = 'avb_id_ava'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView2avb_name_ava: TcxGridDBColumn
            Caption = #20013#25991#22995#21517
            DataBinding.FieldName = 'avb_name_ava'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView2avb_id_avi: TcxGridDBColumn
            DataBinding.FieldName = 'avb_id_avi'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView2avb_name_avi: TcxGridDBColumn
            Caption = #35777#20214#31867#22411
            DataBinding.FieldName = 'avb_name_avi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 250
          end
          object cxGrid1DBTableView2avb_remark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'avb_remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 250
          end
          object cxGrid1DBTableView2avb_state: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'avb_state'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #26410#25805#20316
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #24050#20132
                Value = 1
              end
              item
                Description = #25298#20132
                Value = 2
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView2avb_note: TcxGridDBColumn
            Caption = #35828#26126
            DataBinding.FieldName = 'avb_note'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView2avb_user_lst: TcxGridDBColumn
            Caption = #26356#26032#20154
            DataBinding.FieldName = 'avb_user_lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView2avb_date_lst: TcxGridDBColumn
            Caption = #26368#21518#26356#26032#26085#26399
            DataBinding.FieldName = 'avb_date_lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
          end
        end
        inherited cxGrid1Level1: TcxGridLevel
          object cxGrid1Level2: TcxGridLevel
            GridView = cxGrid1DBTableView2
          end
        end
      end
      object grd_list: TcxGrid
        Left = 0
        Top = 23
        Width = 984
        Height = 330
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 96
        ExplicitTop = 20
        object grd_list_tv: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          DataController.DataSource = ds_bzl
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
          OptionsSelection.CellSelect = False
          OptionsSelection.InvertSelect = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 28
          OnCustomDrawIndicatorCell = cxGrid1DBTableView1CustomDrawIndicatorCell
          object grd_list_tvavg_id: TcxGridDBColumn
            DataBinding.FieldName = 'avg_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavg_invoiceno: TcxGridDBColumn
            Caption = #21463#29702#32534#21495
            DataBinding.FieldName = 'avg_invoiceno'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object grd_list_tvavg_id_act: TcxGridDBColumn
            Caption = #22269#23478
            DataBinding.FieldName = 'avg_id_act'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'act_id'
            Properties.ListColumns = <
              item
                FieldName = 'act_Name'
              end>
            Properties.ListSource = ds_act
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object grd_list_tvavg_id_type: TcxGridDBColumn
            Caption = #21150#29702#31867#22411
            DataBinding.FieldName = 'avg_id_type'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'avt_id'
            Properties.ListColumns = <
              item
                FieldName = 'avt_Name'
              end>
            Properties.ListSource = ds_avt
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavg_state: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'avg_state'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavg_source: TcxGridDBColumn
            DataBinding.FieldName = 'avg_source'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavg_num: TcxGridDBColumn
            DataBinding.FieldName = 'avg_num'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavg_id_avs: TcxGridDBColumn
            Caption = #21150#29702#31181#31867
            DataBinding.FieldName = 'avg_id_avs'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'avs_id'
            Properties.ListColumns = <
              item
                FieldName = 'avs_Name'
              end>
            Properties.ListSource = DS_avs
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavg_user_enter: TcxGridDBColumn
            Caption = #20837#21333#20154
            DataBinding.FieldName = 'avg_user_enter'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
          end
          object grd_list_tvavg_date_enter: TcxGridDBColumn
            Caption = #20837#21333#26085#26399
            DataBinding.FieldName = 'avg_date_enter'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
          end
          object grd_list_tvavg_user_send: TcxGridDBColumn
            Caption = #36865#31614#20154
            DataBinding.FieldName = 'avg_user_send'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 55
          end
          object grd_list_tvavg_date_send: TcxGridDBColumn
            Caption = #36865#31614#26085#26399
            DataBinding.FieldName = 'avg_date_send'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object grd_list_tvavg_date_rtn: TcxGridDBColumn
            DataBinding.FieldName = 'avg_date_rtn'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavg_amount: TcxGridDBColumn
            DataBinding.FieldName = 'avg_amount'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavg_remark: TcxGridDBColumn
            DataBinding.FieldName = 'avg_remark'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavg_SourceName: TcxGridDBColumn
            Caption = #23458#25143#21517#31216
            DataBinding.FieldName = 'avg_SourceName'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object grd_list_tvavg_price: TcxGridDBColumn
            DataBinding.FieldName = 'avg_price'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavgh_id: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavgh_User_op: TcxGridDBColumn
            Caption = #25805#20316#20154
            DataBinding.FieldName = 'avgh_User_op'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
          end
          object grd_list_tvavgh_Date_op: TcxGridDBColumn
            Caption = #25805#20316#26085#26399
            DataBinding.FieldName = 'avgh_Date_op'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
          end
          object grd_list_tvavgh_GuestName: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_GuestName'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavgh_type: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_type'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavgh_remark: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_remark'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavgh_number: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_number'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavgh_num: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_num'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavgh_id_aus_op: TcxGridDBColumn
            DataBinding.FieldName = 'avgh_id_aus_op'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavb_id: TcxGridDBColumn
            DataBinding.FieldName = 'avb_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object grd_list_tvavb_name_ava: TcxGridDBColumn
            Caption = #20013#25991#22995#21517
            DataBinding.FieldName = 'avb_name_ava'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object grd_list_tvavb_name_avi: TcxGridDBColumn
            Caption = #35777#20214#31867#22411
            DataBinding.FieldName = 'avb_name_avi'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object grd_list_tvavb_remark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'avb_remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
          end
          object grd_list_tvavb_state: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'avb_state'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #26410#25805#20316
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #24050#20132
                Value = 1
              end
              item
                Description = #25298#20132
                Value = 2
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 55
          end
          object grd_list_tvavb_note: TcxGridDBColumn
            Caption = #35828#26126
            DataBinding.FieldName = 'avb_note'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
        end
        object grd_list_lv: TcxGridLevel
          GridView = grd_list_tv
        end
      end
    end
  end
  object cb_avb_state: TcxComboBox [1]
    Left = 304
    Top = 296
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '-='#20840#37096'=-'
      #26410#25805#20316
      #24050#20132
      #25298#20132)
    TabOrder = 4
    Text = '-='#20840#37096'=-'
    Width = 85
  end
  object cb_enter: TcxCheckBox [2]
    Left = 438
    Top = 119
    Caption = #26412#20154#20837#21333
    Properties.OnEditValueChanged = cb_enterPropertiesEditValueChanged
    TabOrder = 5
    Transparent = True
    Width = 80
  end
  object cb_op: TcxCheckBox [3]
    Left = 438
    Top = 146
    Caption = #26412#20154#25805#20316
    Properties.OnEditValueChanged = cb_opPropertiesEditValueChanged
    TabOrder = 6
    Transparent = True
    Width = 80
  end
  object edt_enter: TcxTextEdit [4]
    Left = 304
    Top = 120
    TabOrder = 7
    Width = 125
  end
  object edt_op: TcxTextEdit [5]
    Left = 304
    Top = 146
    TabOrder = 8
    Width = 125
  end
  object edt_SourceName: TcxTextEdit [6]
    Left = 304
    Top = 172
    TabOrder = 9
    Width = 121
  end
  object ltv_area: TdxLookupTreeView [7]
    Left = 72
    Top = 84
    Width = 125
    Height = 18
    CanSelectParents = True
    Ctl3D = False
    DropDownRows = 22
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 10
    TabStop = True
    Text = ''
    TreeViewColor = clWindow
    TreeViewCursor = crDefault
    TreeViewFont.Charset = DEFAULT_CHARSET
    TreeViewFont.Color = clWindowText
    TreeViewFont.Height = -11
    TreeViewFont.Name = 'Tahoma'
    TreeViewFont.Style = []
    TreeViewIndent = 19
    TreeViewReadOnly = False
    TreeViewShowButtons = True
    TreeViewShowHint = False
    TreeViewShowLines = True
    TreeViewShowRoot = True
    TreeViewSortType = stNone
    DividedChar = '.'
    ListSource = ds_area
    KeyField = '_id'
    ListField = '_name'
    Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
    ParentField = '_parentid'
    RootValue = Null
    TextStyle = tvtsShort
    Alignment = taLeftJustify
  end
  object cb_show: TcxComboBox [8]
    Left = 304
    Top = 322
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #34920#26684
      #26641#22411)
    Properties.OnChange = cb_showPropertiesChange
    TabOrder = 12
    Text = #34920#26684
    Width = 75
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    SQL.Strings = (
      
        'select avg_id,avg_id_act,avg_id_type,avg_state,avg_source,avg_nu' +
        'm,avg_user_enter,avg_date_enter,'
      
        'avg_user_send,avg_date_send,avg_date_rtn,avg_amount,avg_invoicen' +
        'o,avg_remark,avg_SourceName,avg_id_avs,avg_price,'
      
        'avgh_id,avgh_Date_op,avgh_User_op,avgh_GuestName,avgh_type,avgh_' +
        'remark,avgh_number,avgh_num,avgh_id_aus_op'
      'from avg_visa_group with(nolock),'
      '     avgh_visa_group_history with(nolock)'
      'where avg_id=avgh_id_avg'
      'and avg_status<>'#39'D'#39
      'and avgh_status<>'#39'D'#39
      'and avgh_type='#39#34917#36164#26009#39
      ''
      'and avgh_date_op between '#39'2014-12-01'#39' and '#39'2014-12-31'#39
      'and avg_user_enter='#39#39
      'and avgh_User_op='#39#39)
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      51
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          Visible = True
          ItemName = 'date_begin'
        end
        item
          Visible = True
          ItemName = 'date_end'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic6'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem8'
        end
        item
          Visible = True
          ItemName = 'Btn_Query'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_excel'
        end
        item
          Visible = True
          ItemName = 'Btn_Insert'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Delete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Edit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Save'
        end
        item
          Visible = True
          ItemName = 'Btn_Cancel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Approve'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Close'
        end>
    end
    object dxBarManager1Bar2: TdxBar [1]
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 1018
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem5'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem6'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem7'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    inherited Btn_Edit: TdxBarButton
      Caption = #35814#32454#24773#20917
      Hint = #35814#32454#24773#20917
    end
    object dxBarStatic1: TdxBarStatic [10]
      Caption = #21306#22495'/'#22269#23478#65306
      Category = 0
      Hint = #21306#22495'/'#22269#23478#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem [11]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_area
    end
    object date_begin: TdxBarDateCombo [12]
      Caption = #19994#21153#26085#26399#65306
      Category = 0
      Hint = #19994#21153#26085#26399#65306
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
      Width = 85
      ShowClearButton = False
      ShowDayText = False
    end
    object date_end: TdxBarDateCombo [13]
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
      Width = 85
      ShowClearButton = False
      ShowDayText = False
    end
    object btn_excel: TdxBarButton [14]
      Caption = #23548#20986'Excel'
      Category = 0
      Hint = #23548#20986'Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_excelClick
    end
    object dxBarStatic2: TdxBarStatic [15]
      Caption = #20837#21333#20154#65306
      Category = 0
      Hint = #20837#21333#20154#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem [16]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_enter
    end
    object dxBarControlContainerItem3: TdxBarControlContainerItem [17]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_enter
    end
    object dxBarStatic3: TdxBarStatic [18]
      Caption = #25805#20316#20154#65306
      Category = 0
      Hint = #25805#20316#20154#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem4: TdxBarControlContainerItem [19]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_op
    end
    object dxBarControlContainerItem5: TdxBarControlContainerItem [20]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_op
    end
    object dxBarStatic4: TdxBarStatic [21]
      Caption = #23458#25143#21517#31216#65306
      Category = 0
      Hint = #23458#25143#21517#31216#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem6: TdxBarControlContainerItem [22]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_SourceName
    end
    object dxBarStatic5: TdxBarStatic [23]
      Caption = #34917#36164#26009#29366#24577#65306
      Category = 0
      Hint = #34917#36164#26009#29366#24577#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem7: TdxBarControlContainerItem [24]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_avb_state
    end
    object dxBarStatic6: TdxBarStatic [25]
      Caption = #26174#31034#26041#24335#65306
      Category = 0
      Hint = #26174#31034#26041#24335#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem8: TdxBarControlContainerItem [26]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_show
    end
  end
  object qry_area: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select cast(-1 as int) as _id,cast('#39'-='#20840#37096'=-'#39' as nvarchar(20)) as ' +
        '_name,cast(-2 as int) as _parentid,cast(0 as int) as _level'
      'union all'
      
        'select aar_id as _id,cast(aar_name as nvarchar(20)) as _name,cas' +
        't(-1 as int) as _parentid,cast(1 as int) as _level from aar_area' +
        ' where aar_status<>'#39'D'#39
      'union all'
      
        'select act_id as _id,cast(act_name as nvarchar(20)) as _name,cas' +
        't(act_id_aar as int) as _parentid,cast(2 as int) as _level from ' +
        'act_country where act_status<>'#39'D'#39)
    Left = 428
    Top = 176
  end
  object ds_area: TDataSource
    AutoEdit = False
    DataSet = qry_area
    Left = 428
    Top = 224
  end
  object sd_1: TSaveDialog
    DefaultExt = 'xls'
    FileName = #35746#21333#25253#34920
    Filter = 'Excel(*.xls)|*.xls|ALL(*.*)|*.*'
    Left = 184
    Top = 186
  end
  object ds_avt: TDataSource
    AutoEdit = False
    DataSet = qry_avt
    Left = 668
    Top = 176
  end
  object ds_act: TDataSource
    AutoEdit = False
    DataSet = qry_act
    Left = 604
    Top = 176
  end
  object DS_avs: TDataSource
    AutoEdit = False
    DataSet = Qry_avs
    Left = 540
    Top = 176
  end
  object qry_avt: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avt_id,avt_Name from avt_visa_type with(nolock)')
    Left = 668
    Top = 128
  end
  object qry_act: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select act_id,act_Name from act_country with(nolock)')
    Left = 604
    Top = 128
  end
  object Qry_avs: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avs_id,avs_Name from avs_visa_speed with(nolock)'
      '')
    Left = 540
    Top = 128
  end
  object qry_avb: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from avb_visa_buziliao'
      'where avb_status<>'#39'D'#39
      'and avb_date_ins between '#39'2014-12-01'#39' and '#39'2014-12-31'#39
      'order by avb_number_avgh')
    Left = 788
    Top = 120
  end
  object ds_avb: TDataSource
    AutoEdit = False
    DataSet = qry_avb
    Left = 788
    Top = 168
  end
  object ds_bzl: TDataSource
    AutoEdit = False
    DataSet = qry_bzl
    Left = 876
    Top = 216
  end
  object qry_bzl: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select avg_id,avg_id_act,avg_id_type,avg_state,avg_source,avg_nu' +
        'm,avg_user_enter,avg_date_enter,'
      
        ' avg_user_send,avg_date_send,avg_date_rtn,avg_amount,avg_invoice' +
        'no,avg_remark,avg_SourceName,avg_id_avs,avg_price,'
      
        ' avgh_id,avgh_Date_op,avgh_User_op,avgh_GuestName,avgh_type,avgh' +
        '_remark,avgh_number,avgh_num,avgh_id_aus_op,'
      ' avb_id,avb_name_ava,avb_name_avi,avb_remark,avb_state,avb_note'
      ' from avg_visa_group with(nolock),'
      '      avgh_visa_group_history with(nolock),'
      #9'  avb_visa_buziliao with(nolock)'
      ' where avg_id=avgh_id_avg'
      ' and avg_status<>'#39'D'#39
      ' and avgh_status<>'#39'D'#39
      ' and avb_status<>'#39'D'#39
      ' and avgh_type='#39#34917#36164#26009#39
      ' and avgh_number=avb_number_avgh'
      ' and avgh_date_op between '#39'2014-11-01'#39' and '#39'2015-01-01'#39)
    Left = 876
    Top = 168
  end
end
