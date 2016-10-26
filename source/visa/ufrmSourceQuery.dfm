object frmSourceQuery: TfrmSourceQuery
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #23458#25143#26597#25214
  ClientHeight = 392
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object tc_top: TcxTabControl
    Left = 0
    Top = 0
    Width = 670
    Height = 40
    Align = alTop
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    ClientRectBottom = 40
    ClientRectRight = 670
    ClientRectTop = 0
    object cxLabel1: TcxLabel
      Left = 3
      Top = 3
      Caption = #23458#25143#21517#31216#65306
      Transparent = True
    end
    object edt_name: TcxTextEdit
      Left = 73
      Top = 3
      TabOrder = 1
      Width = 121
    end
    object btn_query: TcxButton
      Left = 216
      Top = 3
      Width = 75
      Height = 25
      Caption = #26597#25214
      TabOrder = 2
      OnClick = btn_queryClick
    end
    object btn_ok: TcxButton
      Left = 312
      Top = 3
      Width = 75
      Height = 25
      Caption = #30830#23450
      Enabled = False
      TabOrder = 3
      OnClick = btn_okClick
    end
  end
  object grd_scoure: TcxGrid
    Left = 0
    Top = 40
    Width = 670
    Height = 352
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 137
    ExplicitTop = 88
    ExplicitWidth = 250
    ExplicitHeight = 200
    object grd_scoure_tv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = grd_scoure_tvCellDblClick
      DataController.DataSource = ds_asi
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
      OptionsView.IndicatorWidth = 27
      object grd_scoure_tvasi_id: TcxGridDBColumn
        DataBinding.FieldName = 'asi_id'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_scoure_tvasi_status: TcxGridDBColumn
        DataBinding.FieldName = 'asi_status'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_scoure_tvasi_Date_Ins: TcxGridDBColumn
        DataBinding.FieldName = 'asi_Date_Ins'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_scoure_tvasi_User_Ins: TcxGridDBColumn
        DataBinding.FieldName = 'asi_User_Ins'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_scoure_tvasi_Date_Lst: TcxGridDBColumn
        DataBinding.FieldName = 'asi_Date_Lst'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_scoure_tvasi_User_Lst: TcxGridDBColumn
        DataBinding.FieldName = 'asi_User_Lst'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_scoure_tvasi_Name: TcxGridDBColumn
        Caption = #21517#31216
        DataBinding.FieldName = 'asi_Name'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_scoure_tvasi_Link: TcxGridDBColumn
        Caption = #32852#31995#20154
        DataBinding.FieldName = 'asi_Link'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_scoure_tvasi_Tel: TcxGridDBColumn
        Caption = #30005#35805
        DataBinding.FieldName = 'asi_Tel'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object grd_scoure_tvasi_Addr: TcxGridDBColumn
        Caption = #22320#22336
        DataBinding.FieldName = 'asi_Addr'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
    end
    object grd_scoure_lv: TcxGridLevel
      GridView = grd_scoure_tv
    end
  end
  object qry_asi: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from asi_source_info with(nolock)'
      'where asi_status<>'#39'D'#39
      'and asi_Name like '#39'%'#24191#24030'%'#39)
    Left = 136
    Top = 120
  end
  object ds_asi: TDataSource
    AutoEdit = False
    DataSet = qry_asi
    Left = 136
    Top = 176
  end
end
