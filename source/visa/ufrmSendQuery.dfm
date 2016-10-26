inherited frmSendQuery: TfrmSendQuery
  Caption = #36865#31614#26597#35810
  ClientHeight = 399
  ClientWidth = 984
  OnClose = FormClose
  ExplicitLeft = -49
  ExplicitWidth = 1000
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Top = 50
    Width = 984
    Height = 349
    ExplicitTop = 51
    ExplicitWidth = 984
    ExplicitHeight = 348
    ClientRectBottom = 349
    ClientRectRight = 984
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 984
      Height = 349
      Align = alClient
      Properties.Tabs.Strings = (
        #36865#31614#35760#24405)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 984
      ExplicitHeight = 348
      ClientRectBottom = 349
      ClientRectRight = 984
      inherited cxGrid1: TcxGrid
        Width = 984
        Height = 326
        Visible = False
        ExplicitWidth = 984
        ExplicitHeight = 325
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.IndicatorWidth = 28
          object cxGrid1DBTableView1avg_id: TcxGridDBColumn
            DataBinding.FieldName = 'avg_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn
            DataBinding.FieldName = 'avg_user_enter'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn
            DataBinding.FieldName = 'avg_date_enter'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_state: TcxGridDBColumn
            DataBinding.FieldName = 'avg_state'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_date_send: TcxGridDBColumn
            DataBinding.FieldName = 'avg_date_send'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_date_rtn: TcxGridDBColumn
            DataBinding.FieldName = 'avg_date_rtn'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_user_send: TcxGridDBColumn
            DataBinding.FieldName = 'avg_user_send'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn
            DataBinding.FieldName = 'avg_invoiceno'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_source: TcxGridDBColumn
            DataBinding.FieldName = 'avg_source'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_SourceName: TcxGridDBColumn
            DataBinding.FieldName = 'avg_SourceName'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_date_sign: TcxGridDBColumn
            DataBinding.FieldName = 'avg_date_sign'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_id_act: TcxGridDBColumn
            DataBinding.FieldName = 'avg_id_act'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_id_type: TcxGridDBColumn
            DataBinding.FieldName = 'avg_id_type'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_id_avs: TcxGridDBColumn
            DataBinding.FieldName = 'avg_id_avs'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1avg_amount: TcxGridDBColumn
            DataBinding.FieldName = 'avg_amount'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1_send: TcxGridDBColumn
            Caption = #35746#21333
            DataBinding.FieldName = '_send'
            Visible = False
            GroupIndex = 0
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            SortIndex = 0
            SortOrder = soAscending
            Width = 70
          end
          object cxGrid1DBTableView1ava_id: TcxGridDBColumn
            DataBinding.FieldName = 'ava_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1ava_index: TcxGridDBColumn
            DataBinding.FieldName = 'ava_index'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'ava_StatusType'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
          end
          object cxGrid1DBTableView1ava_name_c: TcxGridDBColumn
            Caption = #20013#25991#22995#21517
            DataBinding.FieldName = 'ava_name_c'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
          end
          object cxGrid1DBTableView1ava_name_e: TcxGridDBColumn
            DataBinding.FieldName = 'ava_name_e'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1ava_name_p: TcxGridDBColumn
            DataBinding.FieldName = 'ava_name_p'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
          end
          object cxGrid1DBTableView1ava_idcard: TcxGridDBColumn
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
            Width = 80
          end
          object cxGrid1DBTableView1ava_sex: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'ava_sex'
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
            Width = 40
          end
          object cxGrid1DBTableView1ava_date_birth: TcxGridDBColumn
            Caption = #20986#29983#24180#26376
            DataBinding.FieldName = 'ava_date_birth'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1ava_Date_Sign: TcxGridDBColumn
            Caption = #31614#21457#26085#26399
            DataBinding.FieldName = 'ava_Date_Sign'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1ava_Date_End: TcxGridDBColumn
            Caption = #26377#25928#26399#33267
            DataBinding.FieldName = 'ava_Date_End'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1ava_Remark: TcxGridDBColumn
            Caption = #23458#20154#22791#27880
            DataBinding.FieldName = 'ava_Remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1avg_remark: TcxGridDBColumn
            Caption = #35746#21333#22791#27880
            DataBinding.FieldName = 'avg_remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.CellMerging = True
            Width = 200
          end
          object cxGrid1DBTableView1ava_remark1: TcxGridDBColumn
            Caption = #22791#27880'1'
            DataBinding.FieldName = 'ava_remark1'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1ava_remark2: TcxGridDBColumn
            Caption = #22791#27880'2'
            DataBinding.FieldName = 'ava_remark2'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
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
        TabOrder = 2
        Text = '-='#20840#37096'=-'
        Width = 85
      end
      object cb_source: TcxComboBox
        Left = 148
        Top = 200
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '-='#20840#37096'=-')
        TabOrder = 3
        Text = '-='#20840#37096'=-'
        Width = 85
      end
      object edt_SourceName: TcxTextEdit
        Left = 264
        Top = 200
        TabOrder = 4
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
        ListSource = ds_avt_select
        KeyField = 'avt_id'
        ListField = 'avt_Name'
        Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
        ParentField = 'avt_id'
        RootValue = Null
        TextStyle = tvtsShort
        Alignment = taLeftJustify
      end
      object ssb_sheet: TcxSpreadSheetBook
        Left = 0
        Top = 23
        Width = 984
        Height = 326
        Align = alClient
        DefaultStyle.Font.Name = 'Tahoma'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        ExplicitHeight = 325
      end
      object cb_show: TcxComboBox
        Left = 776
        Top = 128
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #34920#26684
          #26641#24418)
        Properties.OnChange = cb_showPropertiesChange
        TabOrder = 7
        Text = #34920#26684
        Width = 55
      end
      object edt_name: TcxTextEdit
        Left = 248
        Top = 120
        TabOrder = 1
        Width = 80
      end
      object cb_order_by: TcxCheckBox
        Left = 624
        Top = 144
        Caption = #22269#23478#26085#26399#25490#24207
        TabOrder = 8
        Transparent = True
        Width = 105
      end
    end
  end
  object ltv_area: TdxLookupTreeView [1]
    Left = 184
    Top = 104
    Width = 135
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
  object ltv_avs: TdxLookupTreeView [2]
    Left = 592
    Top = 104
    Width = 150
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
    ParamCheck = False
    SQL.Strings = (
      'select avg_id,avg_user_enter,avg_date_enter,avg_state,'
      'avg_date_send,avg_date_rtn,avg_user_send,'
      'avg_invoiceno,avg_source,avg_SourceName,avg_date_sign,'
      'avg_id_act,avg_id_type,avg_id_avs,avg_remark,avg_amount,'
      #39'['#39'+isnull(avg_invoiceno,'#39#39')+'#39':'#39'+isnull(avg_state,'#39#39')+'#39'] '#39'+'
      
        'isnull(act_name,'#39#39')+'#39'-'#39'+isnull(avt_Name,'#39#39')+'#39'-'#39'+isnull(avs_Name,' +
        #39#39')+'
      #39' '#23458#25143#65306#39'+isnull(avg_source,'#39#39')+'#39'-'#39'+isnull(avg_SourceName,'#39#39')+'
      
        #39' '#36865#31614#65306#39'+isnull(avg_user_send,'#39#39')+'#39' '#39'+CONVERT(varchar(10),avg_date' +
        '_send,120) as _send,'
      'avg_name_aar,act_name,avg_num,'
      'ava_id,ava_index,ava_StatusType,'
      
        'ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date' +
        '_birth,ava_Date_Sign,ava_Date_End,ava_Remark,ava_idcard,ava_rema' +
        'rk1,ava_remark2'
      
        'from ava_visa_application with(nolock),avg_visa_group with(noloc' +
        'k)'
      'left join act_country on act_id=avg_id_act'
      'left join avt_visa_type on avt_id=avg_id_type'
      'left join avs_visa_speed on avs_id=avg_id_avs'
      'where avg_id=ava_id_avg'
      'and avg_id=-1'
      'order by avg_id,ava_index')
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
          ItemName = 'dxBarStatic2'
        end
        item
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
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarControlContainerItem9'
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem5'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic6'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem6'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic7'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem7'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic8'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem8'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object datebegin: TdxBarDateCombo [10]
      Caption = #36865#31614#26085#26399#65306
      Category = 0
      Hint = #36865#31614#26085#26399#65306
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
    object dateend: TdxBarDateCombo [11]
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
    object dxBarStatic1: TdxBarStatic [12]
      Caption = #36865#31614#20154#21592#65306
      Category = 0
      Hint = #36865#31614#20154#21592#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem [13]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_name
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
      Caption = #21306#22495'/'#22269#23478#65306
      Category = 0
      Hint = #21306#22495'/'#22269#23478#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem [16]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_area
    end
    object dxBarStatic3: TdxBarStatic [17]
      Caption = #21150#29702#31181#31867#65306
      Category = 0
      Hint = #21150#29702#31181#31867#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem3: TdxBarControlContainerItem [18]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_avs
    end
    object dxBarStatic4: TdxBarStatic [19]
      Caption = #29366#24577#65306
      Category = 0
      Hint = #29366#24577#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem4: TdxBarControlContainerItem [20]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_state
    end
    object dxBarStatic5: TdxBarStatic [21]
      Caption = #23458#25143#31867#21035#65306
      Category = 0
      Hint = #23458#25143#31867#21035#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem5: TdxBarControlContainerItem [22]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_source
    end
    object dxBarStatic6: TdxBarStatic [23]
      Caption = #23458#25143#21517#31216#65306
      Category = 0
      Hint = #23458#25143#21517#31216#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem6: TdxBarControlContainerItem [24]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_SourceName
    end
    object dxBarStatic7: TdxBarStatic [25]
      Caption = #21150#29702#31867#22411#65306
      Category = 0
      Hint = #21150#29702#31867#22411#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem7: TdxBarControlContainerItem [26]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_type
    end
    object dxBarStatic8: TdxBarStatic [27]
      Caption = #26174#31034':'
      Category = 0
      Hint = #26174#31034':'
      Visible = ivAlways
    end
    object dxBarControlContainerItem8: TdxBarControlContainerItem [28]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_show
    end
    object dxBarControlContainerItem9: TdxBarControlContainerItem [29]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_order_by
    end
  end
  object sd_1: TSaveDialog
    DefaultExt = 'xls'
    FileName = #35746#21333#25253#34920
    Filter = 'Excel(*.xls)|*.xls|ALL(*.*)|*.*'
    Left = 184
    Top = 186
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
    Left = 516
    Top = 104
  end
  object ds_avs_select: TDataSource
    AutoEdit = False
    DataSet = qry_avs_select
    Left = 516
    Top = 152
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
end
