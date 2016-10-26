inherited frmAppLimitSetting: TfrmAppLimitSetting
  Caption = #25805#20316#29366#24577#35774#32622
  ClientHeight = 328
  ClientWidth = 984
  OnClose = FormClose
  ExplicitWidth = 1000
  ExplicitHeight = 367
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 984
    Height = 302
    ExplicitWidth = 128
    ExplicitHeight = 302
    ClientRectBottom = 302
    ClientRectRight = 984
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Height = 302
      Align = alLeft
      Properties.Tabs.Strings = (
        #25805#20316#31867#22411)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 302
      ClientRectBottom = 302
      inherited cxGrid1: TcxGrid
        Height = 279
        ExplicitHeight = 279
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.IndicatorWidth = 22
          object cxGrid1DBTableView1alm_id: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'alm_id'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 32
          end
          object cxGrid1DBTableView1alm_name: TcxGridDBColumn
            Caption = #25805#20316#21517#31216
            DataBinding.FieldName = 'alm_name'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1alm_active_flg: TcxGridDBColumn
            Caption = #21551#29992#26631#35760
            DataBinding.FieldName = 'alm_active_flg'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
          end
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 299
      Top = 0
      Width = 3
      Height = 302
      Control = cxTabControl2
    end
    object pc_main: TcxPageControl
      Left = 302
      Top = 0
      Width = 682
      Height = 302
      Align = alClient
      TabOrder = 2
      Properties.ActivePage = ts_main
      Properties.CustomButtons.Buttons = <>
      ExplicitWidth = 463
      ClientRectBottom = 302
      ClientRectRight = 682
      ClientRectTop = 23
      object ts_main: TcxTabSheet
        Caption = #20801#35768#25191#34892#35813#25805#20316#30340#29366#24577
        ImageIndex = 0
        ExplicitWidth = 463
        object grd_state: TcxGrid
          Left = 0
          Top = 32
          Width = 682
          Height = 247
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 463
          object grd_state_tv: TcxGridDBTableView
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
            DataController.DataSource = ds_ald
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 22
            OnCustomDrawIndicatorCell = cxGrid1DBTableView1CustomDrawIndicatorCell
            object grd_state_tvald_name: TcxGridDBColumn
              Caption = #29366#24577
              DataBinding.FieldName = 'ald_name'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 80
            end
            object grd_state_tvald_app_flg: TcxGridDBColumn
              Caption = #20801#35768#25805#20316
              DataBinding.FieldName = 'ald_app_flg'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 70
            end
            object grd_state_tvald_id: TcxGridDBColumn
              DataBinding.FieldName = 'ald_id'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 70
            end
            object grd_state_tvald_user_ins: TcxGridDBColumn
              Caption = #21019#24314#20154
              DataBinding.FieldName = 'ald_user_ins'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = CommonDM.cxStyleMoneyGreen
              Width = 60
            end
            object grd_state_tvald_date_ins: TcxGridDBColumn
              Caption = #21019#24314#26102#38388
              DataBinding.FieldName = 'ald_date_ins'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = CommonDM.cxStyleMoneyGreen
              Width = 135
            end
            object grd_state_tvald_user_lst: TcxGridDBColumn
              Caption = #20462#25913#20154
              DataBinding.FieldName = 'ald_user_lst'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = CommonDM.cxStyleMoneyGreen
              Width = 60
            end
            object grd_state_tvald_date_lst: TcxGridDBColumn
              Caption = #20462#25913#26102#38388
              DataBinding.FieldName = 'ald_date_lst'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = CommonDM.cxStyleMoneyGreen
              Width = 135
            end
            object grd_state_tvald_status: TcxGridDBColumn
              DataBinding.FieldName = 'ald_status'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 70
            end
            object grd_state_tvald_id_alm: TcxGridDBColumn
              DataBinding.FieldName = 'ald_id_alm'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 70
            end
          end
          object grd_state_lv: TcxGridLevel
            GridView = grd_state_tv
          end
        end
        object tc_top: TcxTabControl
          Left = 0
          Top = 0
          Width = 682
          Height = 32
          Align = alTop
          TabOrder = 1
          Properties.CustomButtons.Buttons = <>
          ExplicitWidth = 463
          ClientRectBottom = 32
          ClientRectRight = 682
          ClientRectTop = 0
          object cxDBLabel1: TcxDBLabel
            Left = 16
            Top = 5
            DataBinding.DataField = 'alm_name'
            DataBinding.DataSource = DS_Module
            Transparent = True
            Height = 21
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 160
            Top = 5
            Caption = #21551#29992#26631#35760
            DataBinding.DataField = 'alm_active_flg'
            DataBinding.DataSource = DS_Module
            Properties.NullStyle = nssUnchecked
            TabOrder = 1
            Transparent = True
            Width = 121
          end
        end
      end
    end
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    AfterEdit = Qry_ModuleAfterEdit
    SQL.Strings = (
      'select *'
      'from alm_app_limit_m'
      'where alm_status<>'#39'D'#39)
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited Btn_Query: TdxBarButton
      Caption = #21047#26032
      Hint = #21047#26032
    end
  end
  object qry_ald: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterEdit = qry_aldAfterEdit
    Parameters = <
      item
        Name = 'ald_id_alm'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from ald_app_limit_d'
      'where ald_status<>'#39'D'#39
      'and ald_id_alm=:ald_id_alm')
    Left = 366
    Top = 161
  end
  object ds_ald: TDataSource
    AutoEdit = False
    DataSet = qry_ald
    Left = 366
    Top = 217
  end
end
