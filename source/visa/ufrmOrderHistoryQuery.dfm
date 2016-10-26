inherited frmOrderHistoryQuery: TfrmOrderHistoryQuery
  Caption = #35746#21333#25805#20316#32479#35745
  ClientHeight = 382
  ClientWidth = 984
  OnClose = FormClose
  ExplicitWidth = 1000
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Top = 50
    Width = 984
    Height = 332
    ExplicitTop = 51
    ExplicitWidth = 984
    ExplicitHeight = 331
    ClientRectBottom = 332
    ClientRectRight = 984
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 984
      Height = 332
      Align = alClient
      Properties.Tabs.Strings = (
        #35746#21333#25805#20316)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 984
      ExplicitHeight = 331
      ClientRectBottom = 332
      ClientRectRight = 984
      inherited cxGrid1: TcxGrid
        Width = 984
        Height = 309
        ExplicitWidth = 984
        ExplicitHeight = 308
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skSum
              Column = cxGrid1DBTableView1avgh_num
            end>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.IndicatorWidth = 28
          object cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn
            Caption = #21463#29702#32534#21495
            DataBinding.FieldName = 'avg_invoiceno'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_source: TcxGridDBColumn
            Caption = #23458#25143#31867#21035
            DataBinding.FieldName = 'avg_source'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_SourceName: TcxGridDBColumn
            Caption = #23458#25143#21517#31216
            DataBinding.FieldName = 'avg_SourceName'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
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
            Width = 70
          end
          object cxGrid1DBTableView1avgh_type: TcxGridDBColumn
            Caption = #19994#21153#31867#22411
            DataBinding.FieldName = 'avgh_type'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avgh_Date_op: TcxGridDBColumn
            Caption = #25805#20316#26085#26399
            DataBinding.FieldName = 'avgh_Date_op'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avgh_User_op: TcxGridDBColumn
            Caption = #25805#20316#20154
            DataBinding.FieldName = 'avgh_User_op'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avgh_GuestName: TcxGridDBColumn
            Caption = #25805#20316#23458#20154#21517
            DataBinding.FieldName = 'avgh_GuestName'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 120
          end
          object cxGrid1DBTableView1avgh_num: TcxGridDBColumn
            Caption = #20154#25968
            DataBinding.FieldName = 'avgh_num'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
          end
          object cxGrid1DBTableView1avgh_remark: TcxGridDBColumn
            Caption = #25805#20316#22791#27880
            DataBinding.FieldName = 'avgh_remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 200
          end
          object cxGrid1DBTableView1avg_id_type: TcxGridDBColumn
            Caption = #31614#35777#31867#22411
            DataBinding.FieldName = 'avg_id_type'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'avt_id'
            Properties.ListColumns = <
              item
                FieldName = 'avt_Name'
              end>
            Properties.ListSource = ds_avt
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_id_avs: TcxGridDBColumn
            Caption = #31614#35777#31181#31867
            DataBinding.FieldName = 'avg_id_avs'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'avs_id'
            Properties.ListColumns = <
              item
                FieldName = 'avs_Name'
              end>
            Properties.ListSource = DS_avs
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_num: TcxGridDBColumn
            Caption = #35746#21333#20154#25968
            DataBinding.FieldName = 'avg_num'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1avg_price: TcxGridDBColumn
            Caption = #21333#20215
            DataBinding.FieldName = 'avg_price'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1avg_amount: TcxGridDBColumn
            Caption = #24212#25910#37329#39069
            DataBinding.FieldName = 'avg_amount'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn
            Caption = #20837#21333#20154
            DataBinding.FieldName = 'avg_user_enter'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn
            Caption = #20837#21333#26085#26399
            DataBinding.FieldName = 'avg_date_enter'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avg_date_st: TcxGridDBColumn
            Caption = #20986#21457#26085#26399
            DataBinding.FieldName = 'avg_date_st'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
        end
      end
      object cb_state: TcxComboBox
        Left = 40
        Top = 200
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
        TabOrder = 1
        Text = '-='#20840#37096'=-'
        Width = 85
      end
      object cb_source: TcxComboBox
        Left = 148
        Top = 200
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '-='#20840#37096'=-')
        TabOrder = 2
        Text = '-='#20840#37096'=-'
        Width = 85
      end
      object edt_SourceName: TcxTextEdit
        Left = 264
        Top = 200
        TabOrder = 3
        Width = 121
      end
      object ltv_type: TdxLookupTreeView
        Left = 148
        Top = 240
        Width = 85
        Height = 18
        CanSelectParents = True
        Ctl3D = False
        DropDownRows = 18
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 4
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
      object ltv_avs: TdxLookupTreeView
        Left = 488
        Top = 240
        Width = 175
        Height = 18
        CanSelectParents = True
        Ctl3D = False
        DropDownRows = 18
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
        ListSource = ds_avs_select
        KeyField = 'avs_id'
        ListField = 'avs_Name'
        Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
        ParentField = 'avs_id'
        RootValue = Null
        TextStyle = tvtsShort
        Alignment = taLeftJustify
      end
    end
  end
  object ltv_area: TdxLookupTreeView [1]
    Left = 200
    Top = 112
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
    Left = 368
    Top = 112
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      #25805#20316#26085#26399
      #20837#21333#26085#26399
      #20986#21457#26085#26399
      #39044#32422#26085#26399
      #36865#31614#26085#26399
      #20986#31614#26085#26399)
    TabOrder = 6
    Text = #25805#20316#26085#26399
    Width = 85
  end
  object edt_name: TcxTextEdit [3]
    Left = 488
    Top = 113
    TabOrder = 7
    Width = 85
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    ParamCheck = False
    SQL.Strings = (
      
        'select avgh_id,avgh_Date_op,avgh_User_op,avgh_GuestName,avgh_typ' +
        'e,avgh_remark,avgh_number,avgh_num,'
      
        'avg_id,avg_invoiceno,avg_source,avg_SourceName,avg_id_act,avg_id' +
        '_type,avg_id_avs,'
      
        'avg_num,avg_price,avg_amount,avg_user_enter,avg_date_enter,avg_d' +
        'ate_st'
      'from avgh_visa_group_history with(nolock),'
      'avg_visa_group with(nolock)'
      'where avgh_id_avg=avg_id'
      'and avgh_status<>'#39'D'#39
      'and avg_status<>'#39'D'#39
      ''
      'and avgh_Date_op between '#39'2014-12-01'#39' and '#39'2014-12-01'#39
      'and avgh_type='#39#34917#36164#26009#39
      'and avgh_User_op='#39#31649#29702#21592#39)
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      50
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
          ItemName = 'datebegin'
        end
        item
          Visible = True
          ItemName = 'dateend'
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
          Visible = True
          ItemName = 'btn_excel'
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
      FloatLeft = 799
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
      Caption = #22269#23478'/'#21306#22495#65306
      Category = 0
      Hint = #22269#23478'/'#21306#22495#65306
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
    object datebegin: TdxBarDateCombo [13]
      Caption = #65306
      Category = 0
      Hint = #65306
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
      ImageIndex = 0
      ShowCaption = True
      Width = 85
      ShowClearButton = False
      ShowDayText = False
    end
    object dateend: TdxBarDateCombo [14]
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
    object dxBarStatic2: TdxBarStatic [15]
      Caption = #25805#20316#20154#65306
      Category = 0
      Hint = #25805#20316#20154#65306
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
      Caption = #19994#21153#31867#22411#65306
      Category = 0
      Hint = #19994#21153#31867#22411#65306
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
    object btn_excel: TdxBarButton [25]
      Caption = #23548#20986'Excel'
      Category = 0
      Hint = #23548#20986'Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_excelClick
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
    Left = 232
    Top = 154
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
    Left = 564
    Top = 144
  end
  object DS_avs: TDataSource
    AutoEdit = False
    DataSet = Qry_avs
    Left = 564
    Top = 192
  end
  object qry_act: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select act_id,act_Name from act_country with(nolock)')
    Left = 628
    Top = 144
  end
  object ds_act: TDataSource
    AutoEdit = False
    DataSet = qry_act
    Left = 628
    Top = 192
  end
  object qry_avt: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avt_id,avt_Name from avt_visa_type with(nolock)')
    Left = 692
    Top = 144
  end
  object ds_avt: TDataSource
    AutoEdit = False
    DataSet = qry_avt
    Left = 692
    Top = 192
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
    Left = 500
    Top = 176
  end
  object ds_avs_select: TDataSource
    AutoEdit = False
    DataSet = qry_avs_select
    Left = 500
    Top = 224
  end
end
