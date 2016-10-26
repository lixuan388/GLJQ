inherited frmOrderQuery_anh: TfrmOrderQuery_anh
  Caption = #35746#21333#25253#34920
  ClientHeight = 401
  ClientWidth = 984
  OnClose = FormClose
  ExplicitTop = 5
  ExplicitWidth = 1000
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 12
  object ltv_area: TdxLookupTreeView [0]
    Left = 96
    Top = 152
    Width = 145
    Height = 18
    CanSelectParents = True
    Ctl3D = False
    DropDownRows = 22
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
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
  object cb_date: TcxComboBox [1]
    Left = 28
    Top = 254
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #20837#21333#26085#26399
      #39044#32422#26085#26399
      #36865#31614#26085#26399
      #20986#31614#26085#26399
      #38144#31614#26085#26399
      #20986#21457#26085#26399
      #36820#31243#26085#26399
      #19994#21153#26085#26399)
    Properties.OnEditValueChanged = cb_datePropertiesEditValueChanged
    TabOrder = 1
    Text = #20837#21333#26085#26399
    Width = 85
  end
  object edt_name_enter: TcxTextEdit [2]
    Left = 119
    Top = 253
    TabOrder = 2
    Width = 85
  end
  object cb_state: TcxComboBox [3]
    Left = 28
    Top = 320
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 16
    Properties.Items.Strings = (
      '-='#20840#37096'=-'
      #24405#20837
      #39044#32422
      #34917#36164#26009
      #24453#36865
      #36865#31614
      #21462#22238
      #21457#25918
      #25298#31614)
    TabOrder = 3
    Text = '-='#20840#37096'=-'
    Width = 100
  end
  object cb_source: TcxComboBox [4]
    Left = 210
    Top = 320
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '-='#20840#37096'=-')
    TabOrder = 4
    Text = '-='#20840#37096'=-'
    Width = 100
  end
  object edt_SourceName: TcxTextEdit [5]
    Left = 356
    Top = 320
    TabOrder = 5
    Width = 125
  end
  object ltv_type: TdxLookupTreeView [6]
    Left = 476
    Top = 152
    Width = 125
    Height = 18
    CanSelectParents = True
    Ctl3D = False
    DropDownRows = 18
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 6
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
    ListSource = ds_avt_select
    KeyField = 'avt_id'
    ListField = 'avt_Name'
    Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
    ParentField = 'avt_id'
    RootValue = Null
    TextStyle = tvtsShort
    Alignment = taLeftJustify
  end
  object ltv_avs: TdxLookupTreeView [7]
    Left = 256
    Top = 152
    Width = 200
    Height = 18
    CanSelectParents = True
    Ctl3D = False
    DropDownRows = 18
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 7
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
    ListSource = ds_avs_select
    KeyField = 'avs_id'
    ListField = 'avs_Name'
    Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
    ParentField = 'avs_id'
    RootValue = Null
    TextStyle = tvtsShort
    Alignment = taLeftJustify
  end
  object cb_type_op: TcxComboBox [8]
    Left = 320
    Top = 252
    Enabled = False
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 16
    Properties.Items.Strings = (
      '-='#20840#37096'=-'
      #34917#36164#26009
      #39044#32422
      #24453#36865
      #25286#20998#24405#20837
      #36865#31614
      #20462#25913#23458#20154#20449#24687
      #21462#22238
      #24405#20837
      #21457#25918
      #25286#20998#35746#21333
      #36864#25913
      #20462#25913#35746#21333
      #25298#31614)
    TabOrder = 8
    Text = '-='#20840#37096'=-'
    Width = 125
  end
  inherited cxTabControl1: TcxTabControl
    Top = 76
    Width = 984
    Height = 325
    TabOrder = 13
    ExplicitTop = 77
    ExplicitWidth = 984
    ExplicitHeight = 324
    ClientRectBottom = 325
    ClientRectRight = 984
    object pc_main: TcxPageControl
      Left = 0
      Top = 0
      Width = 984
      Height = 325
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = ts_order
      Properties.CustomButtons.Buttons = <>
      ExplicitHeight = 324
      ClientRectBottom = 325
      ClientRectRight = 984
      ClientRectTop = 23
      object ts_order: TcxTabSheet
        Caption = #35746#21333#21015#34920
        ImageIndex = 0
        ExplicitHeight = 301
        object tc_remark: TcxTabControl
          Left = 0
          Top = 122
          Width = 984
          Height = 180
          Align = alBottom
          TabOrder = 0
          Visible = False
          Properties.CustomButtons.Buttons = <>
          ExplicitTop = 121
          ClientRectBottom = 180
          ClientRectRight = 984
          ClientRectTop = 0
          object gb_remark: TcxGroupBox
            Left = 0
            Top = 59
            Align = alClient
            Caption = #22791#27880#20449#24687
            TabOrder = 0
            Height = 62
            Width = 984
            object memo_remark: TcxMemo
              Left = 2
              Top = 17
              Align = alClient
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 43
              Width = 980
            end
            object edt_name_send: TcxTextEdit
              Left = 210
              Top = 26
              TabOrder = 1
              Width = 85
            end
            object edt_name_op: TcxTextEdit
              Left = 476
              Top = 26
              Enabled = False
              TabOrder = 2
              Width = 85
            end
          end
          object gb_list_avgh: TcxGroupBox
            Left = 0
            Top = 124
            Align = alBottom
            Caption = #25805#20316#35760#24405
            TabOrder = 1
            Height = 56
            Width = 984
            object memo_avgh: TcxMemo
              Left = 2
              Top = 17
              Align = alClient
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 37
              Width = 980
            end
          end
          object cxSplitter2: TcxSplitter
            Left = 0
            Top = 121
            Width = 984
            Height = 3
            AlignSplitter = salBottom
            Control = gb_list_avgh
          end
          object gb_list_ava: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = #23458#20154#20449#24687
            TabOrder = 3
            Height = 56
            Width = 984
            object memo_ava: TcxMemo
              Left = 2
              Top = 17
              Align = alClient
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 37
              Width = 980
            end
            object cb_show: TcxComboBox
              Left = 768
              Top = 24
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                #19994#21153#20449#24687
                #36865#31614#20449#24687
                #35746#21333#20449#24687
                #35814#32454#20449#24687)
              Properties.OnChange = cb_showPropertiesChange
              TabOrder = 1
              Text = #19994#21153#20449#24687
              Width = 85
            end
          end
          object cxSplitter3: TcxSplitter
            Left = 0
            Top = 56
            Width = 984
            Height = 3
            AlignSplitter = salTop
            Control = gb_list_ava
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 0
          Top = 119
          Width = 984
          Height = 3
          AlignSplitter = salBottom
          Control = tc_remark
        end
        object grd_list: TcxGrid
          Left = 0
          Top = 0
          Width = 984
          Height = 119
          Align = alClient
          TabOrder = 2
          object grd_list_btv: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = grd_list_btvCellDblClick
            OnFocusedRecordChanged = grd_list_btvFocusedRecordChanged
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Column = grd_list_btv_avg_amount
              end
              item
                Format = '0'
                Kind = skSum
                Column = grd_list_btv_avg_num
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 28
            OnCustomDrawIndicatorCell = grd_list_btvCustomDrawIndicatorCell
            Bands = <
              item
              end
              item
                Caption = #19994#21153#20449#24687
              end
              item
                Caption = #36865#31614#20449#24687
                Visible = False
              end
              item
                Caption = #35746#21333#20449#24687
                Visible = False
              end
              item
                Caption = #35814#32454#20449#24687
                Visible = False
              end>
            object grd_list_btv_select: TcxGridBandedColumn
              Caption = #36873#25321
              DataBinding.ValueType = 'Boolean'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_id: TcxGridBandedColumn
              Caption = #35746#21333'ID'
              DataBinding.ValueType = 'Integer'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_invoiceno: TcxGridBandedColumn
              Caption = #21463#29702#21495
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_groupcode: TcxGridBandedColumn
              Caption = #35746#21333#32534#21495
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_state: TcxGridBandedColumn
              Caption = #29366#24577
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_source: TcxGridBandedColumn
              Caption = #23458#25143#31867#21035
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_sourceName: TcxGridBandedColumn
              Caption = #23458#25143#21517#31216
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_name_aar: TcxGridBandedColumn
              Caption = #21306#22495
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_id_act: TcxGridBandedColumn
              Caption = #21150#29702#22269#23478
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'act_id'
              Properties.ListColumns = <
                item
                  FieldName = 'act_Name'
                end>
              Properties.ListSource = ds_act
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_id_type: TcxGridBandedColumn
              Caption = #21150#29702#31867#22411
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'avt_id'
              Properties.ListColumns = <
                item
                  FieldName = 'avt_Name'
                end>
              Properties.ListSource = ds_avt
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_id_avs: TcxGridBandedColumn
              Caption = #21150#29702#31181#31867
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'avs_id'
              Properties.ListColumns = <
                item
                  FieldName = 'avs_Name'
                end>
              Properties.ListSource = DS_avs
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object grd_list_btv_list_ava: TcxGridBandedColumn
              Caption = #23458#20154#20449#24687
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_num: TcxGridBandedColumn
              Caption = #20154#25968
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxSpinEditProperties'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 50
              Position.BandIndex = 1
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_price: TcxGridBandedColumn
              Caption = #21333#20215
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0;-,0'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 56
              Position.BandIndex = 1
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_amount: TcxGridBandedColumn
              Caption = #24212#25910#37329#39069
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0;-,0'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_user_enter: TcxGridBandedColumn
              Caption = #20837#21333#20154
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 56
              Position.BandIndex = 1
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_date_enter: TcxGridBandedColumn
              Caption = #20837#21333#26085#26399
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_date_Meet: TcxGridBandedColumn
              Caption = #39044#32422#26085#26399
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_date_send: TcxGridBandedColumn
              Caption = #36865#31614#26085#26399
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_date_rtn: TcxGridBandedColumn
              Caption = #20986#31614#26085#26399
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_user_send: TcxGridBandedColumn
              Caption = #36865#31614#20154
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_date_st: TcxGridBandedColumn
              Caption = #20986#21457#26085#26399
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_date_re: TcxGridBandedColumn
              Caption = #36820#31243#26085#26399
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_date_cancel: TcxGridBandedColumn
              Caption = #38144#31614#26085#26399
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object grd_list_btv_avg_remark: TcxGridBandedColumn
              Caption = #35746#21333#22791#27880
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 100
              Position.BandIndex = 1
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object grd_list_btv_list_avgh: TcxGridBandedColumn
              Caption = #25805#20316#35760#24405
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 150
              Position.BandIndex = 1
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object grd_list_btv_cj: TcxGridBandedColumn
              Caption = #25286#20214
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object grd_list_btv_bzl: TcxGridBandedColumn
              Caption = #34917#36164#26009
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object grd_list_btv_yy: TcxGridBandedColumn
              Caption = #39044#32422
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object grd_list_btv_ds: TcxGridBandedColumn
              Caption = #24453#36865
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object grd_list_btv_lgbl: TcxGridBandedColumn
              Caption = #39046#39302#34917#26009
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object grd_list_btv_qh: TcxGridBandedColumn
              Caption = #21462#22238
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object grd_list_btv_jq: TcxGridBandedColumn
              Caption = #25298#31614
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object grd_list_btv_ff: TcxGridBandedColumn
              Caption = #21457#25918
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 35
              Position.RowIndex = 0
            end
            object grd_list_btv_tg: TcxGridBandedColumn
              Caption = #36864#25913
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 36
              Position.RowIndex = 0
            end
            object grd_list_btv_cfdd: TcxGridBandedColumn
              Caption = #25286#20998#35746#21333
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 37
              Position.RowIndex = 0
            end
            object grd_list_btv_cflr: TcxGridBandedColumn
              Caption = #25286#20998#24405#20837
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 38
              Position.RowIndex = 0
            end
            object grd_list_btv_xgdd: TcxGridBandedColumn
              Caption = #20462#25913#35746#21333
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 39
              Position.RowIndex = 0
            end
            object grd_list_btv_xgkrxx: TcxGridBandedColumn
              Caption = #20462#25913#23458#20154
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 40
              Position.RowIndex = 0
            end
            object grd_list_btv_zj: TcxGridBandedColumn
              Caption = #36861#21152
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 60
              Position.BandIndex = 1
              Position.ColIndex = 41
              Position.RowIndex = 0
            end
            object grd_list_btv_ava_remark: TcxGridBandedColumn
              Caption = #22791#27880
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object grd_list_btv_ava_remark1: TcxGridBandedColumn
              Caption = #22791#27880'1'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object grd_list_btv_ava_remark2: TcxGridBandedColumn
              Caption = #22791#27880'2'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
          end
          object grd_list_lv: TcxGridLevel
            GridView = grd_list_btv
          end
        end
      end
      object ts_ava: TcxTabSheet
        Caption = #21517#21333#21015#34920
        ImageIndex = 1
        object grd_name: TcxGrid
          Left = 0
          Top = 0
          Width = 984
          Height = 302
          Align = alClient
          TabOrder = 0
          object grd_name_tv: TcxGridTableView
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
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = grd_name_tv_avg_invoiceno
              end
              item
                Kind = skSum
                Column = grd_name_tv_avg_price
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 20
            OnCustomDrawIndicatorCell = grd_list_btvCustomDrawIndicatorCell
            object grd_name_tv_select: TcxGridColumn
              Caption = #36873#25321
              DataBinding.ValueType = 'Boolean'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 40
            end
            object grd_name_tv_avg_id: TcxGridColumn
              Caption = #35746#21333'ID'
              DataBinding.ValueType = 'Integer'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_avg_invoiceno: TcxGridColumn
              Caption = #21463#29702#21495
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_avg_groupcode: TcxGridColumn
              Caption = #35746#21333#32534#21495
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_avg_id_act: TcxGridColumn
              Caption = #22269#23478
              DataBinding.ValueType = 'Integer'
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
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_avg_id_type: TcxGridColumn
              Caption = #21150#29702#31867#22411
              DataBinding.ValueType = 'Integer'
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
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_avg_id_avs: TcxGridColumn
              Caption = #21150#29702#31181#31867
              DataBinding.ValueType = 'Integer'
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
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 125
            end
            object grd_name_tv_avg_price: TcxGridColumn
              Caption = #20215#26684
              DataBinding.ValueType = 'Currency'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_avg_SourceName: TcxGridColumn
              Caption = #23458#25143#21517#31216
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 75
            end
            object grd_name_tv_avg_user_enter: TcxGridColumn
              Caption = #20837#21333#20154
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_avg_date_enter: TcxGridColumn
              Caption = #20837#21333#26085#26399
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 135
            end
            object grd_name_tv_avg_user_send: TcxGridColumn
              Caption = #36865#31614#20154
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_avg_date_send: TcxGridColumn
              Caption = #36865#31614#26085#26399
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 135
            end
            object grd_name_tv_ava_id: TcxGridColumn
              Caption = #21517#21333'ID'
              DataBinding.ValueType = 'Integer'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_ava_name_c: TcxGridColumn
              Caption = #20013#25991#22995#21517
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_ava_name_e: TcxGridColumn
              Caption = #33521#25991#21517
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 65
            end
            object grd_name_tv_ava_idcard: TcxGridColumn
              Caption = #36523#20221#35777
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 80
            end
            object grd_name_tv_ava_PassPortNo: TcxGridColumn
              Caption = #25252#29031#21495#30721
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 75
            end
            object grd_name_tv_ava_sex: TcxGridColumn
              Caption = #24615#21035
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxImageComboBoxProperties'
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
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 50
            end
            object grd_name_tv_ava_remark: TcxGridColumn
              Caption = #22791#27880
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 100
            end
            object grd_name_tv_ava_remark1: TcxGridColumn
              Caption = #22791#27880'1'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 80
            end
            object grd_name_tv_ava_remark2: TcxGridColumn
              Caption = #22791#27880'2'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.IgnoreTimeForFiltering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 80
            end
          end
          object grd_name_lv: TcxGridLevel
            GridView = grd_name_tv
          end
        end
      end
    end
  end
  object cb_show_remark: TcxCheckBox [10]
    Left = 296
    Top = 149
    Caption = #26174#31034#22791#27880
    Properties.OnEditValueChanged = cb_show_remarkPropertiesEditValueChanged
    TabOrder = 14
    Transparent = True
    Width = 85
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    SQL.Strings = (
      
        'select avg_id,avg_groupcode,avg_invoiceno,avg_source,avg_sourceN' +
        'ame,avg_id_act,avg_id_type,avg_id_avs,'
      
        'avg_user_enter,avg_date_enter,avg_num,avg_state,avg_amount,avg_p' +
        'rice,'
      
        'avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,avg_date_' +
        'st,avg_date_re,avg_date_cancel,'
      'avg_remark,avg_id_aar,avg_name_aar'
      'from avg_visa_group with(nolock) '
      'where avg_status<>'#39'D'#39
      'and avg_id=-1')
    Top = 184
  end
  inherited dxBarManager1: TdxBarManager
    Left = 792
    Top = 104
    DockControlHeights = (
      0
      0
      76
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
          ItemName = 'dxBarStatic7'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem8'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic6'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Query'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_excel_name'
        end
        item
          BeginGroup = True
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
          Visible = True
          ItemName = 'btn_excel'
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
      FloatLeft = 1054
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
          ItemName = 'dxBarControlContainerItem2'
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
          Visible = True
          ItemName = 'bs_user_l'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem9'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic8'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem11'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic9'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem10'
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
    object dxBarManager1Bar3: TdxBar [2]
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 50
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
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem5'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic10'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem13'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic11'
        end
        item
          Visible = True
          ItemName = 'btn_select_all'
        end
        item
          Visible = True
          ItemName = 'btn_select_none'
        end
        item
          Visible = True
          ItemName = 'btn_select_not'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 2
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarStatic1: TdxBarStatic [11]
      Caption = #21306#22495'/'#22269#23478#65306
      Category = 0
      Hint = #21306#22495'/'#22269#23478#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem [12]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_area
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem [13]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_date
    end
    object date_begin: TdxBarDateCombo [14]
      Caption = ':'
      Category = 0
      Hint = ':'
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
      Width = 90
      ShowClearButton = False
      ShowDayText = False
    end
    object date_end: TdxBarDateCombo [15]
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
      Width = 90
      ShowClearButton = False
      ShowDayText = False
    end
    object bs_user_l: TdxBarStatic [16]
      Caption = #20837#21333#20154#65306
      Category = 0
      Hint = #20837#21333#20154#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem3: TdxBarControlContainerItem [17]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_name_enter
    end
    object dxBarStatic3: TdxBarStatic [18]
      Caption = #29366#24577#65306
      Category = 0
      Hint = #29366#24577#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem4: TdxBarControlContainerItem [19]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_state
    end
    object dxBarStatic4: TdxBarStatic [20]
      Caption = #23458#25143#31867#21035#65306
      Category = 0
      Hint = #23458#25143#31867#21035#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem5: TdxBarControlContainerItem [21]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_source
    end
    object dxBarStatic5: TdxBarStatic [22]
      Caption = #23458#25143#21517#31216#65306
      Category = 0
      Hint = #23458#25143#21517#31216#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem6: TdxBarControlContainerItem [23]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_SourceName
    end
    object dxBarStatic6: TdxBarStatic [24]
      Caption = #21150#29702#31867#22411#65306
      Category = 0
      Hint = #21150#29702#31867#22411#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem7: TdxBarControlContainerItem [25]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_type
    end
    object dxBarStatic7: TdxBarStatic [26]
      Caption = #21150#29702#31181#31867#65306
      Category = 0
      Hint = #21150#29702#31181#31867#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem8: TdxBarControlContainerItem [27]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_avs
    end
    object btn_excel: TdxBarButton [28]
      Caption = #23548#20986'Excel'
      Category = 0
      Hint = #23548#20986'Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_excelClick
    end
    object dxBarStatic2: TdxBarStatic [29]
      Caption = #36865#31614#20154#65306
      Category = 0
      Hint = #36865#31614#20154#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem9: TdxBarControlContainerItem [30]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_name_send
    end
    object dxBarStatic8: TdxBarStatic [31]
      Caption = #19994#21153#31867#22411#65306
      Category = 0
      Hint = #19994#21153#31867#22411#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem10: TdxBarControlContainerItem [32]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_name_op
    end
    object dxBarStatic9: TdxBarStatic [33]
      Caption = #32463#21150#20154#65306
      Category = 0
      Hint = #32463#21150#20154#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem11: TdxBarControlContainerItem [34]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_type_op
    end
    object btn_excel_name: TdxBarButton [35]
      Caption = #23548#20986#21517#21333
      Category = 0
      Hint = #23548#20986#21517#21333
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_excel_nameClick
    end
    object dxBarControlContainerItem12: TdxBarControlContainerItem [36]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_show_remark
    end
    object dxBarStatic10: TdxBarStatic [37]
      Caption = #26174#31034#26041#24335#65306
      Category = 0
      Hint = #26174#31034#26041#24335#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem13: TdxBarControlContainerItem [38]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_show
    end
    object dxBarStatic11: TdxBarStatic [39]
      Caption = #23548#20986#39033#30446#36873#25321':'
      Category = 0
      Hint = #23548#20986#39033#30446#36873#25321':'
      Visible = ivAlways
    end
    object btn_select_all: TdxBarButton [40]
      Caption = #20840#36873
      Category = 0
      Hint = #20840#36873
      Visible = ivAlways
      OnClick = btn_select_allClick
    end
    object btn_select_none: TdxBarButton [41]
      Caption = #20840#19981#36873
      Category = 0
      Hint = #20840#19981#36873
      Visible = ivAlways
      OnClick = btn_select_noneClick
    end
    object btn_select_not: TdxBarButton [42]
      Caption = #21453#36873
      Category = 0
      Hint = #21453#36873
      Visible = ivAlways
      OnClick = btn_select_notClick
    end
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
  object ds_avs_select: TDataSource
    AutoEdit = False
    DataSet = qry_avs_select
    Left = 428
    Top = 336
  end
  object qry_avs_select: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select -1 as avs_id,'#39'-='#20840#37096'=-'#39' as avs_Name,-1 as avs_id_act,0 as a' +
        'vs_day'
      'union all'
      'select avs_id,avs_Name,avs_id_act,avs_day '
      'from avs_visa_speed with(nolock)'
      'where avs_status<>'#39'D'#39)
    Left = 428
    Top = 288
  end
  object ds_area: TDataSource
    AutoEdit = False
    DataSet = qry_area
    Left = 428
    Top = 224
  end
  object qry_area: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qry_areaAfterScroll
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
  object DS_avs: TDataSource
    AutoEdit = False
    DataSet = Qry_avs
    Left = 540
    Top = 176
  end
  object ds_act: TDataSource
    AutoEdit = False
    DataSet = qry_act
    Left = 604
    Top = 176
  end
  object ds_avt: TDataSource
    AutoEdit = False
    DataSet = qry_avt
    Left = 668
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
    Left = 144
    Top = 104
  end
  object ds_avt_select: TDataSource
    AutoEdit = False
    DataSet = qry_avt_select
    Left = 36
    Top = 160
  end
  object qry_avt_select: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select -1 as avt_id,'#39'-='#20840#37096'=-'#39' as avt_Name '
      'union all'
      'select avt_id,avt_Name '
      'from avt_visa_type with(nolock)'
      'where avt_status<>'#39'D'#39
      '')
    Left = 36
    Top = 112
  end
  object sd_1: TSaveDialog
    DefaultExt = 'xls'
    FileName = #35746#21333#25253#34920
    Filter = 'Excel(*.xls)|*.xls|ALL(*.*)|*.*'
    Left = 544
    Top = 282
  end
  object qry_avgh: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select avgh_id,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestN' +
        'ame,'
      
        'avgh_type,avgh_remark,avgh_number,avgh_num,avgh_date_meet,avgh_d' +
        'ate_send,avgh_date_rtn'
      'from avgh_visa_group_history with(nolock)'
      'where avgh_status<>'#39'D'#39
      'and avgh_id_avg in (90816,90806)'
      'order by avgh_id_avg,avgh_id ')
    Left = 616
    Top = 280
  end
  object qry_ava: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select ava_id,ava_id_avg,ava_name_c,ava_PassPortNo,ava_StatusTyp' +
        'e,ava_Remark,ava_index,ava_name_e,ava_sex,ava_idcard,ava_remark1' +
        ',ava_remark2 '
      'from ava_visa_application with(nolock)'
      'where ava_status<>'#39'D'#39
      'and ava_state<>'#39#36864#22242#39
      'and ava_id_avg in (90816,90806)'
      'order by ava_id_avg,ava_index ')
    Left = 680
    Top = 280
  end
end
