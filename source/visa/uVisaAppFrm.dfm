inherited VisaAppFrm: TVisaAppFrm
  Caption = #31614#35777#31649#29702
  ClientHeight = 555
  ClientWidth = 1049
  OnClose = FormClose
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  ExplicitWidth = 1065
  ExplicitHeight = 594
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 1049
    Height = 529
    ExplicitWidth = 1049
    ExplicitHeight = 529
    ClientRectBottom = 529
    ClientRectRight = 1049
    object cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 269
      Height = 529
      Align = alLeft
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 529
      ClientRectRight = 269
      ClientRectTop = 0
      object cxTabControl3: TcxTabControl
        Left = 0
        Top = 0
        Width = 269
        Height = 72
        Align = alTop
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 72
        ClientRectRight = 269
        ClientRectTop = 0
        object CB_Act: TcxLookupComboBox
          Left = 80
          Top = 30
          Properties.KeyFieldNames = 'act_id'
          Properties.ListColumns = <
            item
              Fixed = True
              FieldName = 'act_name'
            end
            item
              FieldName = 'act_name_aar'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSelCountry
          Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
          TabOrder = 0
          Width = 183
        end
        object cb_country: TcxCheckBox
          Left = 3
          Top = 30
          AutoSize = False
          Caption = #31614#35777#22269#23478':'
          Properties.OnEditValueChanged = cb_countryPropertiesEditValueChanged
          State = cbsChecked
          TabOrder = 1
          Transparent = True
          Height = 21
          Width = 79
        end
        object cb_area: TcxCheckBox
          Left = 3
          Top = 3
          AutoSize = False
          Caption = #31614#35777#21306#22495':'
          Properties.OnEditValueChanged = cb_areaPropertiesEditValueChanged
          TabOrder = 2
          Transparent = True
          Height = 21
          Width = 79
        end
        object ltv_area: TdxLookupTreeView
          Left = 80
          Top = 6
          Width = 183
          Height = 18
          CanSelectParents = True
          Ctl3D = False
          DropDownRows = 22
          Enabled = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 3
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
          OnCloseUp = ltv_areaCloseUp
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
        object rb_sign_st: TcxRadioButton
          Left = 3
          Top = 52
          Width = 102
          Height = 17
          Caption = #30003#35831'/'#20986#21457#26085#26399
          Checked = True
          TabOrder = 4
          TabStop = True
          OnClick = rb_sign_stClick
          Transparent = True
        end
        object rb_send_rtn: TcxRadioButton
          Left = 115
          Top = 52
          Width = 108
          Height = 17
          Caption = #36865#31614'/'#20986#31614#26085#26399
          TabOrder = 5
          OnClick = rb_sign_stClick
          Transparent = True
        end
        object btn_date_clear: TcxButton
          Left = 239
          Top = 50
          Width = 24
          Height = 20
          Hint = #28165#31354#26085#26399#36873#25321
          Caption = 'X'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btn_date_clearClick
        end
      end
      object cxTabControl4: TcxTabControl
        Left = 0
        Top = 307
        Width = 269
        Height = 222
        Align = alClient
        TabOrder = 1
        Properties.CustomButtons.Buttons = <>
        Properties.TabIndex = 0
        Properties.Tabs.Strings = (
          #31614#35777#36164#26009)
        ClientRectBottom = 222
        ClientRectRight = 269
        ClientRectTop = 23
        object cxGrid3: TcxGrid
          Left = 0
          Top = 23
          Width = 269
          Height = 199
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnFocusedRecordChanged = cxGridDBTableView2FocusedRecordChanged
            DataController.DataSource = dsVisaM
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
            OptionsSelection.MultiSelect = True
            OptionsView.DataRowHeight = 32
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 18
            OnCustomDrawIndicatorCell = cxGridDBTableView2CustomDrawIndicatorCell
            object cxGridDBTableView2avg_date_sign: TcxGridDBColumn
              Caption = #30003#35831#26085#26399
              DataBinding.FieldName = 'avg_date_sign'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 75
            end
            object cxGridDBTableView2avg_id_act: TcxGridDBColumn
              Caption = #22269#23478
              DataBinding.FieldName = 'act_name'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 45
            end
            object cxGridDBTableView2avg_id_type: TcxGridDBColumn
              Caption = #31867#22411
              DataBinding.FieldName = 'avt_Name'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 40
            end
            object cxGridDBTableView2avg_state: TcxGridDBColumn
              Caption = #29366#24577
              DataBinding.FieldName = 'avg_state'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 70
            end
            object cxGridDBTableView2avg_id: TcxGridDBColumn
              DataBinding.FieldName = 'avg_id'
              Visible = False
              Width = 60
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
      object cxTabControl5: TcxTabControl
        Left = 0
        Top = 72
        Width = 269
        Height = 235
        Align = alTop
        TabOrder = 2
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 235
        ClientRectRight = 269
        ClientRectTop = 0
        object cxTabControl6: TcxTabControl
          Left = 135
          Top = 0
          Width = 134
          Height = 235
          Align = alClient
          TabOrder = 0
          Properties.CustomButtons.Buttons = <>
          Properties.TabIndex = 0
          Properties.Tabs.Strings = (
            #20986#21457#26085#26399)
          ClientRectBottom = 235
          ClientRectRight = 134
          ClientRectTop = 23
          object cxGrid2: TcxGrid
            Left = 0
            Top = 43
            Width = 134
            Height = 192
            Align = alClient
            TabOrder = 0
            ExplicitTop = 44
            ExplicitHeight = 191
            object cxGridDBTableView1: TcxGridDBTableView
              OnMouseUp = cxGridDBTableView1MouseUp
              Navigator.Buttons.CustomButtons = <>
              OnSelectionChanged = cxGridDBTableView1SelectionChanged
              DataController.DataSource = dsStartdate
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Header = False
              object cxGridDBTableView1avg_date_start: TcxGridDBColumn
                Caption = #20986#21457#26085#26399
                DataBinding.FieldName = '_date'
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object DE_Start: TcxDateEdit
            Left = 0
            Top = 23
            Align = alTop
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
            TabOrder = 1
            Width = 134
          end
        end
        object cxTabControl7: TcxTabControl
          Left = 0
          Top = 0
          Width = 135
          Height = 235
          Align = alLeft
          TabOrder = 1
          Properties.CustomButtons.Buttons = <>
          Properties.TabIndex = 0
          Properties.Tabs.Strings = (
            #30003#35831#26085#26399)
          ClientRectBottom = 235
          ClientRectRight = 135
          ClientRectTop = 23
          object cxGrid1: TcxGrid
            Left = 0
            Top = 43
            Width = 135
            Height = 192
            Align = alClient
            TabOrder = 0
            ExplicitTop = 44
            ExplicitHeight = 191
            object cxGrid1DBTableView1: TcxGridDBTableView
              OnMouseUp = cxGrid1DBTableView1MouseUp
              Navigator.Buttons.CustomButtons = <>
              OnSelectionChanged = cxGrid1DBTableView1SelectionChanged
              DataController.DataSource = dsSigndate
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Header = False
              object cxGrid1DBTableView1avg_date_sign: TcxGridDBColumn
                Caption = #30003#35831#26085#26399
                DataBinding.FieldName = '_date'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object DE_Sign: TcxDateEdit
            Left = 0
            Top = 23
            Align = alTop
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
            TabOrder = 1
            Width = 135
          end
        end
      end
    end
    object cxTabControl8: TcxTabControl
      Left = 272
      Top = 0
      Width = 777
      Height = 529
      Align = alClient
      TabOrder = 1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 529
      ClientRectRight = 777
      ClientRectTop = 0
    end
    object cxSplitter1: TcxSplitter
      Left = 269
      Top = 0
      Width = 3
      Height = 529
      Control = cxTabControl2
    end
  end
  object Memo1: TMemo [1]
    Left = 232
    Top = 380
    Width = 241
    Height = 121
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
    Visible = False
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_open'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_fanyi'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_fuyin'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_booking'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_zhengli'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_before_send'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnLingGuanBuLiao'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnLingGuanShenHe'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_refuse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_xiaoqian'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_refund'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_split_orders'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_GroupEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ApplicationEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_list'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_add'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Close'
        end>
    end
    object dxBarButton1: TdxBarButton [9]
      Tag = 5
      Caption = #36865#31614
      Category = 0
      Hint = #36865#31614
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton [10]
      Tag = 6
      Caption = #21462#22238
      Category = 0
      Hint = #21462#22238
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton3: TdxBarButton [11]
      Tag = 7
      Caption = #21457#25918
      Category = 0
      Hint = #21457#25918
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton4: TdxBarButton [12]
      Tag = 2
      Caption = #34917#36164#26009
      Category = 0
      Hint = #34917#36164#26009
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_booking: TdxBarButton [13]
      Tag = 3
      Caption = #39044#32422
      Category = 0
      Hint = #39044#32422
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_refund: TdxBarButton [14]
      Tag = 8
      Caption = #36864#25913
      Category = 0
      Hint = #36864#25913
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_before_send: TdxBarButton [15]
      Tag = 4
      Caption = #24453#36865
      Category = 0
      Hint = #24453#36865
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_GroupEdit: TdxBarButton [16]
      Tag = 10
      Caption = #20462#25913#35746#21333
      Category = 0
      Hint = #20462#25913#35746#21333
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_ApplicationEdit: TdxBarButton [17]
      Tag = 11
      Caption = #20462#25913#23458#20154#20449#24687
      Category = 0
      Hint = #20462#25913#23458#20154#20449#24687
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_list: TdxBarButton [18]
      Tag = 12
      Caption = #31614#35777#21517#21333
      Category = 0
      Hint = #31614#35777#21517#21333
      Visible = ivAlways
      OnClick = btn_listClick
    end
    object btn_split_orders: TdxBarButton [19]
      Tag = 9
      Caption = #25286#20998#35746#21333
      Category = 0
      Hint = #25286#20998#35746#21333
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_open: TdxBarButton [20]
      Tag = 1
      Caption = #25286#20214
      Category = 0
      Hint = #25286#20214
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_add: TdxBarButton [21]
      Tag = 13
      Caption = #36861#21152
      Category = 0
      Hint = #36861#21152
      Visible = ivAlways
      OnClick = btn_addClick
    end
    object btn_refuse: TdxBarButton [22]
      Tag = 14
      Caption = #25298#31614
      Category = 0
      Hint = #25298#31614
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btnLingGuanBuLiao: TdxBarButton [23]
      Tag = 15
      Caption = #39046#39302#34917#26009
      Category = 0
      Hint = #39046#39302#34917#26009
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_fanyi: TdxBarButton [24]
      Tag = 16
      Caption = #32763#35793
      Category = 0
      Hint = #32763#35793
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_fuyin: TdxBarButton [25]
      Tag = 17
      Caption = #22797#21360
      Category = 0
      Hint = #22797#21360
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_zhengli: TdxBarButton [26]
      Tag = 18
      Caption = #25972#29702
      Category = 0
      Hint = #25972#29702
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_xiaoqian: TdxBarButton [27]
      Tag = 19
      Caption = #38144#31614
      Category = 0
      Hint = #38144#31614
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btnLingGuanShenHe: TdxBarButton [28]
      Tag = 20
      Caption = #39046#39302#23457#26680
      Category = 0
      Hint = #39046#39302#23457#26680
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
  end
  object ADOSP_GetSignDate: TADOStoredProc
    CacheSize = 100
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    ProcedureName = 'uspGetOrderDate'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@iareaid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@icountryid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@itype'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 46
    Top = 156
  end
  object dsSigndate: TDataSource
    AutoEdit = False
    DataSet = ADOSP_GetSignDate
    Left = 43
    Top = 201
  end
  object ADOSP_GetStartDate: TADOStoredProc
    CacheSize = 100
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    ProcedureName = 'uspGetOrderDate'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@iareaid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@icountryid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@itype'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 188
    Top = 157
  end
  object dsStartdate: TDataSource
    AutoEdit = False
    DataSet = ADOSP_GetStartDate
    Left = 187
    Top = 201
  end
  object qryVisaM: TADOQuery
    CacheSize = 1000
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'select avg_id, avg_date_sign,avg_id_act,avg_id_type,avg_state,ac' +
        't_name,avt_Name '
      'from avg_visa_group,act_country,avt_visa_type '
      'where avg_id_act=act_id and avt_id=avg_id_type'
      'and 1<>1'
      '')
    Left = 96
    Top = 416
  end
  object dsVisaM: TDataSource
    AutoEdit = False
    DataSet = qryVisaM
    Left = 96
    Top = 464
  end
  object dsSelCountry: TDataSource
    AutoEdit = False
    DataSet = qrySelCountry
    Left = 344
    Top = 160
  end
  object qrySelCountry: TADOQuery
    CacheSize = 100
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'aus_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select act_id,act_name,act_name_aar'
      'from act_country,s_tree_power'
      'where act_status<>'#39'D'#39
      'and  act_id = s_id_act and s_power=2'
      'and s_id_aus = :aus_id'
      'order by act_id_aar'
      '')
    Left = 344
    Top = 112
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
    Left = 340
    Top = 224
  end
  object ds_area: TDataSource
    AutoEdit = False
    DataSet = qry_area
    Left = 340
    Top = 272
  end
end
