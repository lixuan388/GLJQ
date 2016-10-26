inherited frmOrderQuery: TfrmOrderQuery
  Caption = #35746#21333#25253#34920
  ClientHeight = 424
  ClientWidth = 776
  OnClose = FormClose
  ExplicitWidth = 792
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Top = 50
    Width = 776
    Height = 374
    ExplicitTop = 51
    ExplicitWidth = 776
    ExplicitHeight = 373
    ClientRectBottom = 374
    ClientRectRight = 776
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 776
      Height = 374
      Align = alClient
      Properties.Tabs.Strings = (
        #35746#21333#21015#34920)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 776
      ExplicitHeight = 373
      ClientRectBottom = 374
      ClientRectRight = 776
      inherited cxGrid1: TcxGrid
        Width = 776
        Height = 287
        ExplicitWidth = 776
        ExplicitHeight = 286
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skSum
              Column = cxGrid1DBTableView1avg_num
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1avg_amount
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
          OptionsSelection.InvertSelect = False
          OptionsView.DataRowHeight = 32
          OptionsView.Footer = True
          OptionsView.IndicatorWidth = 27
          object cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn
            Caption = #21463#29702#21495
            DataBinding.FieldName = 'avg_invoiceno'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
          end
          object cxGrid1DBTableView1avg_state: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'avg_state'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_source: TcxGridDBColumn
            Caption = #23458#25143#31867#21035
            DataBinding.FieldName = 'avg_source'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_sourceName: TcxGridDBColumn
            Caption = #23458#25143#21517#31216
            DataBinding.FieldName = 'avg_sourceName'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1avg_area: TcxGridDBColumn
            Caption = #21306#22495
            DataBinding.FieldName = 'avg_name_aar'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1act_name: TcxGridDBColumn
            Caption = #21150#29702#22269#23478
            DataBinding.FieldName = 'avg_id_act'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'act_id'
            Properties.ListColumns = <
              item
                FieldName = 'act_Name'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = ds_act
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avt_Name: TcxGridDBColumn
            Caption = #21150#29702#31867#22411
            DataBinding.FieldName = 'avg_id_type'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'avt_id'
            Properties.ListColumns = <
              item
                FieldName = 'avt_Name'
              end>
            Properties.ListOptions.ShowHeader = False
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
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_avs
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1avg_num: TcxGridDBColumn
            Caption = #20154#25968
            DataBinding.FieldName = 'avg_num'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 55
          end
          object cxGrid1DBTableView1avg_price: TcxGridDBColumn
            Caption = #21333#20215
            DataBinding.FieldName = 'avg_price'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1avg_amount: TcxGridDBColumn
            Caption = #24212#25910#37329#39069
            DataBinding.FieldName = 'avg_amount'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
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
          object cxGrid1DBTableView1avg_date_Meet: TcxGridDBColumn
            Caption = #39044#32422#26085#26399
            DataBinding.FieldName = 'avg_date_Meet'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avg_date_send: TcxGridDBColumn
            Caption = #36865#31614#26085#26399
            DataBinding.FieldName = 'avg_date_send'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avg_date_rtn: TcxGridDBColumn
            Caption = #20986#31614#26085#26399
            DataBinding.FieldName = 'avg_date_rtn'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avg_date_cancel: TcxGridDBColumn
            Caption = #38144#31614#26085#26399
            DataBinding.FieldName = 'avg_date_cancel'
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
          object cxGrid1DBTableView1avg_date_st: TcxGridDBColumn
            Caption = #20986#21457#26085#26399
            DataBinding.FieldName = 'avg_date_st'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avg_date_re: TcxGridDBColumn
            Caption = #36820#31243#26085#26399
            DataBinding.FieldName = 'avg_date_re'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avg_remark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'avg_remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
        end
      end
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 310
        Align = alBottom
        DataBinding.DataField = 'avg_remark'
        DataBinding.DataSource = DS_Module
        TabOrder = 1
        ExplicitTop = 309
        Height = 64
        Width = 776
      end
      object ltv_area: TdxLookupTreeView
        Left = 88
        Top = 104
        Width = 145
        Height = 18
        CanSelectParents = True
        Ctl3D = False
        DropDownRows = 22
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 2
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
      object cb_date: TcxComboBox
        Left = 256
        Top = 104
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #20837#21333#26085#26399
          #39044#32422#26085#26399
          #36865#31614#26085#26399
          #20986#31614#26085#26399
          #38144#31614#26085#26399
          #20986#21457#26085#26399
          #36820#31243#26085#26399)
        TabOrder = 3
        Text = #20837#21333#26085#26399
        Width = 85
      end
      object edt_name: TcxTextEdit
        Left = 376
        Top = 105
        TabOrder = 4
        Width = 85
      end
      object cb_state: TcxComboBox
        Left = 40
        Top = 200
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
        TabOrder = 5
        Text = '-='#20840#37096'=-'
        Width = 85
      end
      object cb_source: TcxComboBox
        Left = 148
        Top = 200
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '-='#20840#37096'=-')
        TabOrder = 6
        Text = '-='#20840#37096'=-'
        Width = 85
      end
      object edt_SourceName: TcxTextEdit
        Left = 264
        Top = 200
        TabOrder = 7
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
        TabOrder = 8
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
        Left = 544
        Top = 184
        Width = 175
        Height = 18
        CanSelectParents = True
        Ctl3D = False
        DropDownRows = 18
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 9
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
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    ParamCheck = False
    SQL.Strings = (
      
        'select avg_id,avg_invoiceno,avg_source,avg_sourceName,avg_id_act' +
        ',avg_id_type,avg_id_avs,'
      
        '       avg_user_enter,avg_date_enter,avg_num,avg_state,avg_amoun' +
        't,avg_price,'
      
        #9'   avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,avg_d' +
        'ate_st,avg_date_re,'
      'avg_date_cancel, avg_remark,avg_id_aar,avg_name_aar'
      'from avg_visa_group with(nolock)'
      'where avg_invoiceno='#39'1060'#39)
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
      FloatLeft = 810
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
          ItemName = 'dxbrcntrlcntnrtm1'
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
    object btn_excel: TdxBarButton [17]
      Caption = #23548#20986'Excel'
      Category = 0
      Hint = #23548#20986'Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_excelClick
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
    object dxbrcntrlcntnrtm1: TdxBarControlContainerItem [27]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_avs
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
  object DS_avs: TDataSource
    AutoEdit = False
    DataSet = Qry_avs
    Left = 540
    Top = 176
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
  object ds_act: TDataSource
    AutoEdit = False
    DataSet = qry_act
    Left = 604
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
  object ds_avt: TDataSource
    AutoEdit = False
    DataSet = qry_avt
    Left = 668
    Top = 176
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
    Left = 184
    Top = 186
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
  object ds_avt_select: TDataSource
    AutoEdit = False
    DataSet = qry_avt_select
    Left = 36
    Top = 160
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
  object ds_avs_select: TDataSource
    AutoEdit = False
    DataSet = qry_avs_select
    Left = 428
    Top = 336
  end
end
