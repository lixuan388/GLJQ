object frmNoticePop: TfrmNoticePop
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #36890#30693#25552#31034
  ClientHeight = 466
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxTabControl1: TcxTabControl
    Left = 0
    Top = 0
    Width = 444
    Height = 32
    Align = alTop
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    ClientRectBottom = 32
    ClientRectRight = 444
    ClientRectTop = 0
    object lbl_count: TcxLabel
      Left = 3
      Top = 3
      Caption = #26377#25928#36890#30693#65306'0'#26465
      Transparent = True
    end
    object btn_show_all: TcxButton
      Left = 366
      Top = 3
      Width = 75
      Height = 25
      Caption = #26174#31034#20840#37096
      TabOrder = 1
      OnClick = btn_show_allClick
    end
  end
  object grd_cnt_detail: TcxGrid
    Left = 0
    Top = 32
    Width = 444
    Height = 224
    Align = alClient
    TabOrder = 1
    object grd_cnt_detail_tv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = grd_cnt_detail_tvCellDblClick
      DataController.DataSource = ds_cnt_detail
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
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 20
      OnCustomDrawIndicatorCell = grd_cnt_detail_tvCustomDrawIndicatorCell
      object grd_cnt_detail_tvcnt_id: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_id'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_user_ins: TcxGridDBColumn
        Caption = #21457#36215#26102#38388
        DataBinding.FieldName = 'cnt_date_ins'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 135
      end
      object grd_cnt_detail_tvcnt_date_ins: TcxGridDBColumn
        Caption = #21457#36215#20154
        DataBinding.FieldName = 'cnt_user_from'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_cnt_detail_tvcnt_user_lst: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_user_lst'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_date_lst: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_date_lst'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_status: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_status'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_read_flg: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_read_flg'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_date_begin: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_date_begin'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_date_end: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_date_end'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_id_aus_from: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_id_aus_from'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_user_from: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_user_from'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_id_aus_to: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_id_aus_to'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_user_to: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_user_to'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_type: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_type'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_type_name: TcxGridDBColumn
        Caption = #31867#22411
        DataBinding.FieldName = 'cnt_type_name'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 75
      end
      object grd_cnt_detail_tvcnt_id_scoure: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_id_scoure'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object grd_cnt_detail_tvcnt_remark: TcxGridDBColumn
        Caption = #36890#30693#20869#23481
        DataBinding.FieldName = 'cnt_remark'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 150
      end
      object grd_cnt_detail_tvcnt_note: TcxGridDBColumn
        DataBinding.FieldName = 'cnt_note'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
    end
    object grd_cnt_detail_lv: TcxGridLevel
      GridView = grd_cnt_detail_tv
    end
  end
  object cxTabControl2: TcxTabControl
    Left = 0
    Top = 256
    Width = 444
    Height = 210
    Align = alBottom
    TabOrder = 2
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    ClientRectBottom = 210
    ClientRectRight = 444
    ClientRectTop = 0
    object cxLabel1: TcxLabel
      Left = 3
      Top = 6
      Caption = #31867#22411#65306
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 3
      Top = 38
      Caption = #20869#23481#65306
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 110
      Caption = #21457#36215#65306
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 3
      Top = 142
      Caption = #25509#25910#65306
      Transparent = True
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 40
      Top = 6
      DataBinding.DataField = 'cnt_type_name'
      DataBinding.DataSource = ds_cnt_detail
      TabOrder = 4
      Width = 201
    end
    object cxDBMemo1: TcxDBMemo
      Left = 40
      Top = 33
      DataBinding.DataField = 'cnt_remark'
      DataBinding.DataSource = ds_cnt_detail
      Properties.ScrollBars = ssVertical
      TabOrder = 5
      Height = 71
      Width = 393
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 40
      Top = 110
      DataBinding.DataField = 'cnt_user_from'
      DataBinding.DataSource = ds_cnt_detail
      TabOrder = 6
      Width = 65
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 120
      Top = 110
      DataBinding.DataField = 'cnt_date_ins'
      DataBinding.DataSource = ds_cnt_detail
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 40
      Top = 137
      DataBinding.DataField = 'cnt_user_to'
      DataBinding.DataSource = ds_cnt_detail
      TabOrder = 8
      Width = 65
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 120
      Top = 137
      DataBinding.DataField = 'cnt_date_lst'
      DataBinding.DataSource = ds_cnt_detail
      TabOrder = 9
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 247
      Top = 136
      Caption = #24050#38405#35835
      DataBinding.DataField = 'cnt_read_flg'
      DataBinding.DataSource = ds_cnt_detail
      Properties.NullStyle = nssUnchecked
      TabOrder = 10
      Transparent = True
      Width = 121
    end
    object btn_close: TcxButton
      Left = 358
      Top = 182
      Width = 75
      Height = 25
      Caption = #20851#38381
      TabOrder = 11
      OnClick = btn_closeClick
    end
    object btn_read: TcxButton
      Left = 267
      Top = 182
      Width = 75
      Height = 25
      Caption = #26631#35760#24050#35835
      TabOrder = 12
      OnClick = btn_readClick
    end
    object btn_read_go: TcxButton
      Left = 176
      Top = 182
      Width = 85
      Height = 25
      Caption = #24050#35835#24182#26597#30475
      TabOrder = 13
      OnClick = btn_read_goClick
    end
  end
  object qry_cnt_detail: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select top 5 *'
      'from cnt_notice with(nolock)'
      'where cnt_status<>'#39'D'#39
      'and cnt_read_flg=0'
      'and getdate() between cnt_date_begin and cnt_date_end'
      'and cnt_id_aus_to=1')
    Left = 56
    Top = 72
  end
  object qry_cnt_count: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select count(0) as cnt_count'
      'from cnt_notice with(nolock)'
      'where cnt_status<>'#39'D'#39
      'and cnt_read_flg=0'
      'and getdate() between cnt_date_begin and cnt_date_end'
      'and cnt_id_aus_to=1')
    Left = 56
    Top = 136
  end
  object ds_cnt_detail: TDataSource
    AutoEdit = False
    DataSet = qry_cnt_detail
    Left = 128
    Top = 72
  end
end
