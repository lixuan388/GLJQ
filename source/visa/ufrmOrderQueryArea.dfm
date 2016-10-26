inherited frmOrderQueryArea: TfrmOrderQueryArea
  Caption = #35746#21333#25253#34920'-'#21306#22495#32479#35745
  ClientHeight = 332
  ClientWidth = 770
  OnClose = FormClose
  ExplicitWidth = 786
  ExplicitHeight = 371
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Top = 50
    Width = 770
    Height = 282
    ExplicitTop = 51
    ExplicitWidth = 770
    ExplicitHeight = 281
    ClientRectBottom = 282
    ClientRectRight = 770
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 770
      Height = 282
      Align = alClient
      Properties.Tabs.Strings = (
        #35746#21333#21306#22495#32479#35745#25968#25454)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 770
      ExplicitHeight = 281
      ClientRectBottom = 282
      ClientRectRight = 770
      inherited cxGrid1: TcxGrid
        Width = 770
        Height = 259
        ExplicitWidth = 770
        ExplicitHeight = 258
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skSum
              Column = cxGrid1DBTableView1_count
            end
            item
              Format = '0'
              Kind = skSum
              Column = cxGrid1DBTableView1_avg_num
            end
            item
              Format = '0'
              Kind = skSum
              Column = cxGrid1DBTableView1_avg_amount
            end>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnHorzSizing = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.IndicatorWidth = 32
          object cxGrid1DBTableView1avg_id_aar: TcxGridDBColumn
            DataBinding.FieldName = 'avg_id_aar'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1avg_name_aar: TcxGridDBColumn
            Caption = #21306#22495#65288#27954#65289
            DataBinding.FieldName = 'avg_name_aar'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1_count: TcxGridDBColumn
            Caption = #35746#21333#25968
            DataBinding.FieldName = '_count'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1_avg_num: TcxGridDBColumn
            Caption = #31614#35777#20154#25968
            DataBinding.FieldName = '_avg_num'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1_avg_amount: TcxGridDBColumn
            Caption = #37329#39069#21512#35745
            DataBinding.FieldName = '_avg_amount'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
        end
      end
      object edt_user_enter: TcxTextEdit
        Left = 400
        Top = 190
        TabOrder = 1
        Width = 80
      end
    end
  end
  object cb_date: TcxComboBox [1]
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
    TabOrder = 5
    Text = #20837#21333#26085#26399
    Width = 85
  end
  object ltv_type: TdxLookupTreeView [2]
    Left = 148
    Top = 280
    Width = 85
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
  object edt_SourceName: TcxTextEdit [3]
    Left = 264
    Top = 240
    TabOrder = 7
    Width = 121
  end
  object cb_source: TcxComboBox [4]
    Left = 148
    Top = 240
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '-='#20840#37096'=-')
    TabOrder = 8
    Text = '-='#20840#37096'=-'
    Width = 85
  end
  object cb_state: TcxComboBox [5]
    Left = 40
    Top = 240
    Properties.DropDownListStyle = lsFixedList
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
    TabOrder = 9
    Text = '-='#20840#37096'=-'
    Width = 85
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    SQL.Strings = (
      
        'select avg_id_aar,avg_name_aar,count(0) as _count,sum(avg_num) a' +
        's _avg_num,sum(avg_amount) as _avg_amount'
      'from avg_visa_group with(nolock)'
      'where avg_status<>'#39'D'#39
      'and avg_date_enter between '#39'2014-11-01'#39' and '#39'2014-11-01'#39
      'group by avg_id_aar,avg_name_aar')
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
          ItemName = 'dxBarControlContainerItem1'
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
          ItemName = 'dxBarStatic5'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem6'
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
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Approve'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_excel'
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
      FloatLeft = 804
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
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem2'
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
    object btn_excel: TdxBarButton [10]
      Caption = 'Excel'#23548#20986
      Category = 0
      Hint = 'Excel'#23548#20986
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_excelClick
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem [11]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_date
    end
    object datebegin: TdxBarDateCombo [12]
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
      ShowClearButton = False
      ShowDayText = False
    end
    object dateend: TdxBarDateCombo [13]
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
      ShowClearButton = False
      ShowDayText = False
    end
    object dxBarStatic1: TdxBarStatic [14]
      Caption = #29366#24577#65306
      Category = 0
      Hint = #29366#24577#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem [15]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_state
    end
    object dxBarStatic2: TdxBarStatic [16]
      Caption = #23458#25143#31867#21035#65306
      Category = 0
      Hint = #23458#25143#31867#21035#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem3: TdxBarControlContainerItem [17]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_source
    end
    object dxBarStatic3: TdxBarStatic [18]
      Caption = #23458#25143#21517#31216#65306
      Category = 0
      Hint = #23458#25143#21517#31216#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem4: TdxBarControlContainerItem [19]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_SourceName
    end
    object dxBarStatic4: TdxBarStatic [20]
      Caption = #21150#29702#31867#22411#65306
      Category = 0
      Hint = #21150#29702#31867#22411#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem5: TdxBarControlContainerItem [21]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_type
    end
    object dxBarStatic5: TdxBarStatic [22]
      Caption = #20837#21333#20154#65306
      Category = 0
      Hint = #20837#21333#20154#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem6: TdxBarControlContainerItem [23]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_user_enter
    end
  end
  object sd_1: TSaveDialog
    DefaultExt = 'xls'
    FileName = #35746#21333#25253#34920
    Filter = 'Excel(*.xls)|*.xls|ALL(*.*)|*.*'
    Left = 184
    Top = 186
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
end
