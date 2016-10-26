inherited frmOrderQuery_avgh: TfrmOrderQuery_avgh
  Caption = #35746#21333#25253#34920'-'#25805#20316#35760#24405
  ClientHeight = 348
  ClientWidth = 984
  OnClose = FormClose
  ExplicitLeft = -194
  ExplicitWidth = 1000
  ExplicitHeight = 387
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Top = 51
    Width = 984
    Height = 297
    ExplicitTop = 51
    ExplicitWidth = 984
    ExplicitHeight = 297
    ClientRectBottom = 297
    ClientRectRight = 984
    object tc_remark: TcxTabControl
      Left = 0
      Top = 173
      Width = 984
      Height = 125
      Align = alBottom
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ExplicitTop = 172
      ClientRectBottom = 125
      ClientRectRight = 984
      ClientRectTop = 0
      object gb_remark: TcxGroupBox
        Left = 0
        Top = 0
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
      end
      object gb_list: TcxGroupBox
        Left = 0
        Top = 65
        Align = alBottom
        Caption = #25805#20316#35760#24405
        TabOrder = 1
        Height = 60
        Width = 984
        object memo_list: TcxMemo
          Left = 2
          Top = 17
          Align = alClient
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 41
          Width = 980
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 62
        Width = 984
        Height = 3
        AlignSplitter = salBottom
        Control = gb_list
        ExplicitTop = 57
      end
    end
    object grd_list: TcxGrid
      Left = 0
      Top = 0
      Width = 984
      Height = 169
      Align = alClient
      TabOrder = 1
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
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 28
        OnCustomDrawIndicatorCell = grd_list_btvCustomDrawIndicatorCell
        Bands = <
          item
            Caption = #35746#21333#20449#24687
          end
          item
            Caption = #25805#20316#35760#24405
          end>
        object grd_list_btv_avg_id: TcxGridBandedColumn
          Caption = #35746#21333'ID'
          DataBinding.ValueType = 'Integer'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_invoiceno: TcxGridBandedColumn
          Caption = #21463#29702#32534#21495
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_source: TcxGridBandedColumn
          Caption = #23458#25143#31867#21035
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_sourceName: TcxGridBandedColumn
          Caption = #23458#25143#21517#31216
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 4
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
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 6
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
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 7
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
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_user_enter: TcxGridBandedColumn
          Caption = #20837#21333#20154
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_date_enter: TcxGridBandedColumn
          Caption = #20837#21333#26085#26399
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_num: TcxGridBandedColumn
          Caption = #20154#25968
          DataBinding.ValueType = 'Integer'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_state: TcxGridBandedColumn
          Caption = #29366#24577
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_amount: TcxGridBandedColumn
          Caption = #24212#25910#37329#39069
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_price: TcxGridBandedColumn
          Caption = #21333#20215
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_date_Meet: TcxGridBandedColumn
          Caption = #39044#32422#26085#26399
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_date_send: TcxGridBandedColumn
          Caption = #36865#31614#26085#26399
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_date_rtn: TcxGridBandedColumn
          Caption = #20986#31614#26085#26399
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_user_send: TcxGridBandedColumn
          Caption = #36865#31614#20154
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_date_st: TcxGridBandedColumn
          Caption = #20986#21457#26085#26399
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_date_re: TcxGridBandedColumn
          Caption = #36820#31243#26085#26399
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_date_cancel: TcxGridBandedColumn
          Caption = #38144#31614#26085#26399
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_remark: TcxGridBandedColumn
          Caption = #35746#21333#22791#27880
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object grd_list_btv_avg_name_aar: TcxGridBandedColumn
          Caption = #21306#22495
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grd_list_btv_list: TcxGridBandedColumn
          Caption = #25805#20316#35760#24405
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 150
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object grd_list_lv: TcxGridLevel
        GridView = grd_list_btv
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 0
      Top = 169
      Width = 984
      Height = 3
      AlignSplitter = salBottom
      Control = tc_remark
    end
  end
  object ltv_area: TdxLookupTreeView [1]
    Left = 96
    Top = 152
    Width = 145
    Height = 18
    CanSelectParents = True
    Ctl3D = False
    DropDownRows = 22
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 5
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
  object cb_date: TcxComboBox [2]
    Left = 264
    Top = 152
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #20837#21333#26085#26399
      #39044#32422#26085#26399
      #36865#31614#26085#26399
      #20986#31614#26085#26399
      #38144#31614#26085#26399
      #20986#21457#26085#26399
      #36820#31243#26085#26399)
    TabOrder = 6
    Text = #20837#21333#26085#26399
    Width = 85
  end
  object edt_name: TcxTextEdit [3]
    Left = 384
    Top = 153
    TabOrder = 7
    Width = 85
  end
  object cb_state: TcxComboBox [4]
    Left = 48
    Top = 248
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
    TabOrder = 8
    Text = '-='#20840#37096'=-'
    Width = 85
  end
  object cb_source: TcxComboBox [5]
    Left = 156
    Top = 248
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '-='#20840#37096'=-')
    TabOrder = 9
    Text = '-='#20840#37096'=-'
    Width = 85
  end
  object edt_SourceName: TcxTextEdit [6]
    Left = 272
    Top = 248
    TabOrder = 10
    Width = 121
  end
  object ltv_type: TdxLookupTreeView [7]
    Left = 156
    Top = 288
    Width = 85
    Height = 18
    CanSelectParents = True
    Ctl3D = False
    DropDownRows = 18
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 11
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
  object ltv_avs: TdxLookupTreeView [8]
    Left = 552
    Top = 232
    Width = 175
    Height = 18
    CanSelectParents = True
    Ctl3D = False
    DropDownRows = 18
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 12
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
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    SQL.Strings = (
      
        'select avg_id,avg_invoiceno,avg_source,avg_sourceName,avg_id_act' +
        ',avg_id_type,avg_id_avs,'
      
        'avg_user_enter,avg_date_enter,avg_num,avg_state,avg_amount,avg_p' +
        'rice,'
      
        'avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,avg_date_' +
        'st,avg_date_re,avg_date_cancel,'
      'avg_remark,avg_id_aar,avg_name_aar'
      'from avg_visa_group with(nolock) '
      'where avg_status<>'#39'D'#39
      'and avg_id=-1')
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
          BeginGroup = True
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
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem3'
        end
        item
          Visible = True
          ItemName = 'Btn_Query'
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
          Visible = True
          ItemName = 'dxBarStatic6'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem7'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic7'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem8'
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
    object dxBarControlContainerItem2: TdxBarControlContainerItem [12]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_date
    end
    object date_begin: TdxBarDateCombo [13]
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
    object date_end: TdxBarDateCombo [14]
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
    object dxBarStatic2: TdxBarStatic [15]
      Caption = #20837#21333#20154#65306
      Category = 0
      Hint = #20837#21333#20154#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem3: TdxBarControlContainerItem [16]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_name
    end
    object dxBarStatic3: TdxBarStatic [17]
      Caption = #29366#24577#65306
      Category = 0
      Hint = #29366#24577#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem4: TdxBarControlContainerItem [18]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_state
    end
    object dxBarStatic4: TdxBarStatic [19]
      Caption = #23458#25143#31867#21035#65306
      Category = 0
      Hint = #23458#25143#31867#21035#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem5: TdxBarControlContainerItem [20]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_source
    end
    object dxBarStatic5: TdxBarStatic [21]
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
    object dxBarStatic6: TdxBarStatic [23]
      Caption = #21150#29702#31867#22411#65306
      Category = 0
      Hint = #21150#29702#31867#22411#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem7: TdxBarControlContainerItem [24]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_type
    end
    object dxBarStatic7: TdxBarStatic [25]
      Caption = #21150#29702#31181#31867#65306
      Category = 0
      Hint = #21150#29702#31181#31867#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem8: TdxBarControlContainerItem [26]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_avs
    end
    object btn_excel: TdxBarButton [27]
      Caption = #23548#20986'Excel'
      Category = 0
      Hint = #23548#20986'Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_excelClick
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
end
