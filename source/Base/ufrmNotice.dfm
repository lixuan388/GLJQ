inherited frmNotice: TfrmNotice
  Caption = #36890#30693#20013#24515
  ClientHeight = 561
  ClientWidth = 984
  OnClose = FormClose
  ExplicitLeft = -211
  ExplicitWidth = 1000
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 984
    Height = 535
    ExplicitWidth = 984
    ExplicitHeight = 535
    ClientRectBottom = 535
    ClientRectRight = 984
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 984
      Height = 535
      Align = alClient
      Properties.Tabs.Strings = (
        #25105#25910#21040#30340#36890#30693)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 984
      ExplicitHeight = 535
      ClientRectBottom = 535
      ClientRectRight = 984
      inherited cxGrid1: TcxGrid
        Width = 984
        Height = 512
        ExplicitWidth = 984
        ExplicitHeight = 512
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
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
          OptionsView.IndicatorWidth = 27
          object cxGrid1DBTableView1cnt_id: TcxGridDBColumn
            DataBinding.FieldName = 'cnt_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1cnt_user_from: TcxGridDBColumn
            Caption = #21457#36215#20154
            DataBinding.FieldName = 'cnt_user_from'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1cnt_user_ins: TcxGridDBColumn
            Caption = #21457#36215#26102#38388
            DataBinding.FieldName = 'cnt_date_ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
          end
          object cxGrid1DBTableView1cnt_date_ins: TcxGridDBColumn
            DataBinding.FieldName = 'cnt_date_ins'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1cnt_user_lst: TcxGridDBColumn
            DataBinding.FieldName = 'cnt_user_lst'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1cnt_user_to: TcxGridDBColumn
            Caption = #25509#25910#20154
            DataBinding.FieldName = 'cnt_user_to'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1cnt_date_lst: TcxGridDBColumn
            Caption = #38405#35835#26102#38388
            DataBinding.FieldName = 'cnt_date_lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 135
          end
          object cxGrid1DBTableView1cnt_status: TcxGridDBColumn
            DataBinding.FieldName = 'cnt_status'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1cnt_read_flg: TcxGridDBColumn
            Caption = #24050#38405
            DataBinding.FieldName = 'cnt_read_flg'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 45
          end
          object cxGrid1DBTableView1cnt_date_begin: TcxGridDBColumn
            DataBinding.FieldName = 'cnt_date_begin'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1cnt_date_end: TcxGridDBColumn
            Caption = #26377#25928#26399#33267
            DataBinding.FieldName = 'cnt_date_end'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1cnt_id_aus_from: TcxGridDBColumn
            DataBinding.FieldName = 'cnt_id_aus_from'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1cnt_id_aus_to: TcxGridDBColumn
            DataBinding.FieldName = 'cnt_id_aus_to'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1cnt_type: TcxGridDBColumn
            DataBinding.FieldName = 'cnt_type'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1cnt_type_name: TcxGridDBColumn
            Caption = #31867#22411
            DataBinding.FieldName = 'cnt_type_name'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1cnt_id_scoure: TcxGridDBColumn
            DataBinding.FieldName = 'cnt_id_scoure'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1cnt_remark: TcxGridDBColumn
            Caption = #36890#30693#20869#23481
            DataBinding.FieldName = 'cnt_remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 250
          end
          object cxGrid1DBTableView1cnt_note: TcxGridDBColumn
            Caption = #38405#35835#22791#27880
            DataBinding.FieldName = 'cnt_note'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
          end
        end
      end
      object cb_type: TcxComboBox
        Left = 176
        Top = 144
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #25105#25910#21040#30340#36890#30693
          #25105#21457#20986#30340#36890#30693)
        TabOrder = 1
        Text = #25105#25910#21040#30340#36890#30693
        Width = 121
      end
      object cb_read_flg: TcxComboBox
        Left = 176
        Top = 184
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '-='#20840#37096'=-'
          #26410#38405#35835
          #24050#38405#35835)
        TabOrder = 2
        Text = '-='#20840#37096'=-'
        Width = 80
      end
      object ltv_notice_type: TdxLookupTreeView
        Left = 408
        Top = 120
        Width = 125
        Height = 18
        CanSelectParents = True
        Ctl3D = False
        DropDownRows = 16
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
        DividedChar = '.'
        ListSource = ds_notice_type
        KeyField = 'cntt_id'
        ListField = 'cntt_name'
        Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
        ParentField = 'cntt_id'
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
      'select top 5 *'
      'from cnt_notice with(nolock)'
      'where cnt_status<>'#39'D'#39
      'and cnt_read_flg=0'
      'and getdate() between cnt_date_begin and cnt_date_end'
      'and cnt_id_aus_to=1')
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
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem2'
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
          ItemName = 'Btn_Close'
        end>
    end
    object date_begin: TdxBarDateCombo [9]
      Caption = #26085#26399#65306
      Category = 0
      Hint = #26085#26399#65306
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
      ShowDayText = False
    end
    object date_end: TdxBarDateCombo [10]
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
      ShowDayText = False
    end
    object dxBarStatic1: TdxBarStatic [11]
      Caption = #31181#31867#65306
      Category = 0
      Hint = #31181#31867#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem [12]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_type
    end
    object dxBarStatic2: TdxBarStatic [13]
      Caption = #38405#35835#29366#24577#65306
      Category = 0
      Hint = #38405#35835#29366#24577#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem [14]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = cb_read_flg
    end
    object dxBarStatic3: TdxBarStatic [15]
      Caption = #31867#22411#65306
      Category = 0
      Hint = #31867#22411#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem3: TdxBarControlContainerItem [16]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = ltv_notice_type
    end
  end
  object ds_notice_type: TDataSource
    AutoEdit = False
    DataSet = qry_notice_type
    Left = 428
    Top = 224
  end
  object qry_notice_type: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select * from v_notice_type_view')
    Left = 428
    Top = 176
  end
end
