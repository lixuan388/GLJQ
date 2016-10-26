inherited frmVisaAppList: TfrmVisaAppList
  Caption = #31614#35777#21517#21333
  ClientHeight = 427
  ClientWidth = 823
  OnClose = FormClose
  ExplicitLeft = -50
  ExplicitTop = -71
  ExplicitWidth = 839
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 823
    Height = 401
    ExplicitWidth = 823
    ExplicitHeight = 401
    ClientRectBottom = 401
    ClientRectRight = 823
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 823
      Height = 401
      Align = alClient
      Properties.Tabs.Strings = (
        #23458#20154#20449#24687#21015#34920)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 823
      ExplicitHeight = 401
      ClientRectBottom = 401
      ClientRectRight = 823
      inherited cxGrid1: TcxGrid
        Width = 823
        Height = 378
        ExplicitWidth = 823
        ExplicitHeight = 378
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid1DBTableView1avg_invoiceno
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
          object cxGrid1DBTableView1avg_id_act: TcxGridDBColumn
            Caption = #22269#23478
            DataBinding.FieldName = 'avg_id_act'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'act_id'
            Properties.ListColumns = <
              item
                FieldName = 'act_name'
              end>
            Properties.ListSource = ds_act
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 56
          end
          object cxGrid1DBTableView1avg_id_type: TcxGridDBColumn
            Caption = #31614#35777#31867#22411
            DataBinding.FieldName = 'avg_id_type'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'avt_id'
            Properties.ListColumns = <
              item
                FieldName = 'avt_Name'
              end>
            Properties.ListSource = ds_avt
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
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
            Properties.ListSource = ds_avs_all
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn
            Caption = #21463#29702#21495
            DataBinding.FieldName = 'avg_invoiceno'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1avg_state: TcxGridDBColumn
            Caption = #35746#21333#29366#24577
            DataBinding.FieldName = 'avg_state'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn
            Caption = #20837#21333#20154
            DataBinding.FieldName = 'avg_user_enter'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 56
          end
          object cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn
            Caption = #20837#21333#26102#38388
            DataBinding.FieldName = 'avg_date_enter'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 125
          end
          object cxGrid1DBTableView1avg_source: TcxGridDBColumn
            Caption = #23458#25143#31867#21035
            DataBinding.FieldName = 'avg_source'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 56
          end
          object cxGrid1DBTableView1avg_SourceName: TcxGridDBColumn
            Caption = #23458#25143#21517#31216
            DataBinding.FieldName = 'avg_SourceName'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1avg_remark: TcxGridDBColumn
            Caption = #35746#21333#22791#27880
            DataBinding.FieldName = 'avg_remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1avg_date_st: TcxGridDBColumn
            Caption = #20986#21457#26085#26399
            DataBinding.FieldName = 'avg_date_st'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1avg_amount: TcxGridDBColumn
            Caption = #35746#21333#37329#39069
            DataBinding.FieldName = 'avg_amount'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object cxGrid1DBTableView1avg_date_Meet: TcxGridDBColumn
            Caption = #39044#32422#26085#26399
            DataBinding.FieldName = 'avg_date_Meet'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 125
          end
          object cxGrid1DBTableView1avg_date_send: TcxGridDBColumn
            Caption = #36865#31614#26085#26399
            DataBinding.FieldName = 'avg_date_send'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1avg_user_send: TcxGridDBColumn
            Caption = #36865#31614#20154#21592
            DataBinding.FieldName = 'avg_user_send'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1avg_date_rtn: TcxGridDBColumn
            Caption = #20986#31614#26085#26399
            DataBinding.FieldName = 'avg_date_rtn'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object cxGrid1DBTableView1ava_name_c: TcxGridDBColumn
            Caption = #23458#20154#22995#21517
            DataBinding.FieldName = 'ava_name_c'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn
            Caption = #23458#20154#29366#24577
            DataBinding.FieldName = 'ava_StatusType'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1ava_name_e: TcxGridDBColumn
            Caption = #33521#25991#22995#21517
            DataBinding.FieldName = 'ava_name_e'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1ava_name_p: TcxGridDBColumn
            Caption = #25340#38899
            DataBinding.FieldName = 'ava_name_p'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1ava_idcard: TcxGridDBColumn
            Caption = #36523#20221#35777
            DataBinding.FieldName = 'ava_idcard'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object cxGrid1DBTableView1ava_PassPortNo: TcxGridDBColumn
            Caption = #25252#29031#21495
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
            Width = 56
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
    end
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    SQL.Strings = (
      'select avg_id,avg_user_enter,avg_date_enter,avg_state,'
      'avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,'
      'avg_invoiceno,avg_source,avg_SourceName,avg_date_sign,'
      
        'avg_id_act,avg_id_type,avg_id_avs,avg_name_aar,avg_id_aar,avg_re' +
        'mark,'
      
        'avg_date_st,avg_date_re,avg_date_cancel,avg_need1,avg_need2,avg_' +
        'need3,avg_need4,avg_amount,'
      'avg_Source_link,avg_Source_tel,avg_Source_addr,'
      'ava_id,ava_index,ava_StatusType,'
      
        'ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date' +
        '_birth,ava_Date_Sign,ava_Date_End,ava_Remark,ava_idcard,ava_rema' +
        'rk1,ava_remark2'
      
        'from avg_visa_group with(nolock),ava_visa_application with(noloc' +
        'k)'
      'where avg_id in (90775,90776)'
      'and avg_id=ava_id_avg'
      'and ava_status<>'#39'D'#39
      'and ava_state<>'#39#36864#22242#39
      ''
      'order by avg_id,ava_index'
      '')
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
          Visible = True
          ItemName = 'btn_excel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Close'
        end>
    end
    object btn_excel: TdxBarButton [9]
      Caption = #23548#20986'Excel'
      Category = 0
      Hint = #23548#20986'Excel'
      Visible = ivAlways
      ImageIndex = 16
      PaintStyle = psCaptionGlyph
      OnClick = btn_excelClick
    end
  end
  object sd_1: TSaveDialog
    DefaultExt = 'xls'
    FileName = #35746#21333#25253#34920
    Filter = 'Excel(*.xls)|*.xls|ALL(*.*)|*.*'
    Left = 184
    Top = 186
  end
  object ds_act: TDataSource
    AutoEdit = False
    DataSet = qry_act
    Left = 256
    Top = 120
  end
  object qry_act: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select act_id,act_name,act_code,act_no,act_name_aar,act_id_aar'
      'from act_country'
      'where act_status<>'#39'D'#39)
    Left = 184
    Top = 120
  end
  object qry_avs_all: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avs_id,avs_Name'
      'from avs_visa_speed'
      'where avs_status<>'#39'D'#39)
    Left = 184
    Top = 256
  end
  object ds_avs_all: TDataSource
    AutoEdit = False
    DataSet = qry_avs_all
    Left = 256
    Top = 256
  end
  object qry_avt: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select avt_id,avt_Name'
      'from avt_visa_type'
      'where avt_status<>'#39'D'#39)
    Left = 184
    Top = 320
  end
  object ds_avt: TDataSource
    AutoEdit = False
    DataSet = qry_avt
    Left = 256
    Top = 320
  end
end
