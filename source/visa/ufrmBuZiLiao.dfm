object frmBuZiLiao: TfrmBuZiLiao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #34917#36164#26009
  ClientHeight = 521
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tc_down: TcxTabControl
    Left = 0
    Top = 481
    Width = 777
    Height = 40
    Align = alBottom
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 40
    ClientRectRight = 777
    ClientRectTop = 0
    object btn_close: TcxButton
      Left = 418
      Top = 12
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 0
      OnClick = btn_closeClick
    end
    object btn_save: TcxButton
      Left = 288
      Top = 12
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 1
      OnClick = btn_saveClick
    end
  end
  object grd_bzl: TcxGrid
    Left = 0
    Top = 115
    Width = 777
    Height = 312
    Align = alClient
    TabOrder = 1
    object grd_bzlDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS_avb
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
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 22
      OnCustomDrawIndicatorCell = grd_bzlDBTableView1CustomDrawIndicatorCell
      object grd_bzlDBTableView1avb_id: TcxGridDBColumn
        DataBinding.FieldName = 'avb_id'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 70
      end
      object grd_bzlDBTableView1avb_user_ins: TcxGridDBColumn
        Caption = #21457#36215#20154
        DataBinding.FieldName = 'avb_user_ins'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 56
      end
      object grd_bzlDBTableView1avb_date_ins: TcxGridDBColumn
        Caption = #21457#36215#26102#38388
        DataBinding.FieldName = 'avb_date_ins'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 130
      end
      object grd_bzlDBTableView1avb_user_lst: TcxGridDBColumn
        DataBinding.FieldName = 'avb_user_lst'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 70
      end
      object grd_bzlDBTableView1avb_date_lst: TcxGridDBColumn
        DataBinding.FieldName = 'avb_date_lst'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 70
      end
      object grd_bzlDBTableView1avb_status: TcxGridDBColumn
        DataBinding.FieldName = 'avb_status'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 70
      end
      object grd_bzlDBTableView1avb_number_avgh: TcxGridDBColumn
        DataBinding.FieldName = 'avb_number_avgh'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 70
      end
      object grd_bzlDBTableView1avb_id_ava: TcxGridDBColumn
        DataBinding.FieldName = 'avb_id_ava'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 70
      end
      object grd_bzlDBTableView1avb_name_ava: TcxGridDBColumn
        Caption = #23458#20154#21517
        DataBinding.FieldName = 'avb_name_ava'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 65
      end
      object grd_bzlDBTableView1avb_id_avi: TcxGridDBColumn
        DataBinding.FieldName = 'avb_id_avi'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 70
      end
      object grd_bzlDBTableView1avb_name_avi: TcxGridDBColumn
        Caption = #35777#20214#31867#22411
        DataBinding.FieldName = 'avb_name_avi'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 145
      end
      object grd_bzlDBTableView1avb_remark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'avb_remark'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 195
      end
      object grd_bzlDBTableView1avb_state: TcxGridDBColumn
        Caption = #29366#24577
        DataBinding.FieldName = 'avb_state'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #26410#25805#20316
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #24050#20132
            Value = 1
          end
          item
            Description = #25298#20132
            Value = 2
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 56
      end
      object grd_bzlDBTableView1avb_note: TcxGridDBColumn
        Caption = #35828#26126
        DataBinding.FieldName = 'avb_note'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 80
      end
    end
    object grd_bzlLevel1: TcxGridLevel
      GridView = grd_bzlDBTableView1
    end
  end
  object tc_top: TcxTabControl
    Left = 0
    Top = 0
    Width = 777
    Height = 115
    Align = alTop
    TabOrder = 2
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 115
    ClientRectRight = 777
    ClientRectTop = 0
    object cxLabel1: TcxLabel
      Left = 3
      Top = 16
      Caption = #21463#29702#32534#21495#65306
      Transparent = True
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 73
      Top = 15
      DataBinding.DataField = 'avg_invoiceno'
      DataBinding.DataSource = ds_avg
      TabOrder = 1
      Width = 112
    end
    object cxLabel2: TcxLabel
      Left = 187
      Top = 16
      Caption = #21150#29702#22269#23478#65306
      Transparent = True
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 248
      Top = 15
      DataBinding.DataField = 'act_name'
      DataBinding.DataSource = ds_avg
      TabOrder = 3
      Width = 89
    end
    object cxLabel3: TcxLabel
      Left = 343
      Top = 16
      Caption = #21150#29702#31867#22411#65306
      Transparent = True
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 404
      Top = 15
      DataBinding.DataField = 'avt_name'
      DataBinding.DataSource = ds_avg
      TabOrder = 5
      Width = 89
    end
    object cxLabel4: TcxLabel
      Left = 499
      Top = 16
      Caption = #21150#29702#31181#31867#65306
      Transparent = True
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 560
      Top = 15
      DataBinding.DataField = 'avs_name'
      DataBinding.DataSource = ds_avg
      TabOrder = 7
      Width = 208
    end
    object cxLabel5: TcxLabel
      Left = 3
      Top = 42
      Caption = #34917#36164#26009#22791#27880#65306
      Transparent = True
    end
    object cxDBMemo1: TcxDBMemo
      Left = 73
      Top = 42
      DataBinding.DataField = 'avgh_remark'
      DataBinding.DataSource = ds_avgh
      Properties.ScrollBars = ssVertical
      TabOrder = 9
      Height = 64
      Width = 695
    end
    object btn_remark: TcxButton
      Left = 3
      Top = 65
      Width = 64
      Height = 25
      Caption = #20462#25913#22791#27880
      TabOrder = 10
      Visible = False
      OnClick = btn_remarkClick
    end
  end
  object tc_remark: TcxTabControl
    Left = 0
    Top = 427
    Width = 777
    Height = 54
    Align = alBottom
    TabOrder = 3
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 54
    ClientRectRight = 777
    ClientRectTop = 0
    object edt_note: TcxDBTextEdit
      Left = 0
      Top = 33
      Align = alBottom
      DataBinding.DataField = 'avb_note'
      DataBinding.DataSource = DS_avb
      TabOrder = 0
      Width = 777
    end
    object memo_remark: TcxDBMemo
      Left = 0
      Top = 0
      Align = alClient
      DataBinding.DataField = 'avb_remark'
      DataBinding.DataSource = DS_avb
      Properties.ScrollBars = ssVertical
      TabOrder = 1
      Height = 33
      Width = 777
    end
  end
  object DS_avb: TDataSource
    AutoEdit = False
    DataSet = Qry_avb
    Left = 118
    Top = 288
  end
  object Qry_avb: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      ' select *'
      ' from avb_visa_buziliao'
      ' where avb_number_avgh=3'
      ' and avb_status<>'#39'D'#39)
    Left = 118
    Top = 232
  end
  object qry_avg: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select avg_id,avg_state,avg_user_enter,avg_date_enter,avg_date_s' +
        'end,avg_invoiceno,'
      'avg_id_act,avg_id_type,avg_id_avs,act_name,avt_name,avs_name'
      
        'from avg_visa_group with(nolock),act_country with(nolock),avt_vi' +
        'sa_type with(nolock),avs_visa_speed with(nolock) '
      'where avg_id_act=act_id'
      'and avg_id_type=avt_id '
      'and avg_id_avs=avs_id'
      'and avg_id=90806')
    Left = 286
    Top = 160
  end
  object ds_avg: TDataSource
    AutoEdit = False
    DataSet = qry_avg
    Left = 286
    Top = 216
  end
  object qry_avgh: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from avgh_visa_group_history with(nolock)'
      'where avgh_number=99')
    Left = 350
    Top = 160
  end
  object ds_avgh: TDataSource
    AutoEdit = False
    DataSet = qry_avgh
    Left = 350
    Top = 216
  end
  object qry_ava: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select ava_id,ava_name_c,ava_index'
      'from ava_visa_application'
      'where ava_id in(1,2,3)'
      'order by ava_index')
    Left = 446
    Top = 160
  end
  object qry_avi: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from avi_visa_info'
      'where avi_id  in(1,2,3)')
    Left = 446
    Top = 216
  end
  object qry_avg_user_info: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avg_id,avg_invoiceno,avg_user_enter,aus_id'
      'from avg_visa_group with(nolock),aus_users with(nolock)'
      'where avg_id=90729'
      'and aus_status<>'#39'D'#39
      'and aus_username=avg_user_enter')
    Left = 104
    Top = 152
  end
  object Qry_avb_old: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      ' select *'
      ' from avb_visa_buziliao'
      ' where avb_number_avgh=3'
      ' and avb_status<>'#39'D'#39)
    Left = 198
    Top = 288
  end
end
