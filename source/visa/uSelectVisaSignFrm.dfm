object SelectVisaSignFrm: TSelectVisaSignFrm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #36873#25321#35746#21333
  ClientHeight = 212
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 809
    Height = 212
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 706
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS_SelectVisaSign
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
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn
        Caption = #21463#29702#21495
        DataBinding.FieldName = 'avg_invoiceno'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object cxGrid1DBTableView1avg_state: TcxGridDBColumn
        Caption = #29366#24577
        DataBinding.FieldName = 'avg_state'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object cxGrid1DBTableView1avg_source: TcxGridDBColumn
        Caption = #23458#25143#31867#21035
        DataBinding.FieldName = 'avg_source'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 85
      end
      object cxGrid1DBTableView1avg_sourceName: TcxGridDBColumn
        Caption = #23458#25143#21517#31216
        DataBinding.FieldName = 'avg_sourceName'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 212
      end
      object cxGrid1DBTableView1act_name: TcxGridDBColumn
        Caption = #21150#29702#22269#23478
        DataBinding.FieldName = 'act_name'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 75
      end
      object cxGrid1DBTableView1avt_Name: TcxGridDBColumn
        Caption = #31867#22411
        DataBinding.FieldName = 'avt_Name'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 44
      end
      object cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn
        Caption = #20837#21333#20154
        DataBinding.FieldName = 'avg_user_enter'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 49
      end
      object cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn
        Caption = #20837#21333#26085#26399
        DataBinding.FieldName = 'avg_date_enter'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 119
      end
      object cxGrid1DBTableView1avg_id: TcxGridDBColumn
        DataBinding.FieldName = 'avg_id'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Qry_SelectVisaSign: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'select avg_id,avg_state,avg_invoiceno,avg_source,avg_sourceName,' +
        'act_name,avt_Name,avg_user_enter,avg_date_enter'
      'from avg_visa_group,act_country,avt_visa_type'
      'where avg_id_act=act_id'
      'and avt_id=avg_id_type'
      'and avg_status<>'#39'D'#39)
    Left = 296
    Top = 48
  end
  object DS_SelectVisaSign: TDataSource
    DataSet = Qry_SelectVisaSign
    Left = 296
    Top = 96
  end
end
