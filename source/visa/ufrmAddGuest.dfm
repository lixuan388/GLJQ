object frmAddGuest: TfrmAddGuest
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #36861#21152
  ClientHeight = 275
  ClientWidth = 994
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
  object cxGroupBox7: TcxGroupBox
    Left = 0
    Top = 32
    Align = alClient
    Caption = #23458#20154#20449#24687
    TabOrder = 0
    Height = 243
    Width = 994
    object cxTabControl6: TcxTabControl
      Left = 2
      Top = 18
      Width = 990
      Height = 223
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 223
      ClientRectRight = 990
      ClientRectTop = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 990
        Height = 223
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = DS_ava
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.DeletingConfirmation = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 28
          OnCustomDrawIndicatorCell = cxGrid1DBTableView1CustomDrawIndicatorCell
          object cxGrid1DBTableView1_ava_state: TcxGridDBColumn
            Caption = #29366#24577
            DataBinding.FieldName = 'ava_state'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 60
          end
          object cxGrid1DBTableView1ava_name_c: TcxGridDBColumn
            Caption = #20013#25991#22995#21517
            DataBinding.FieldName = 'ava_name_c'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_name_e: TcxGridDBColumn
            Caption = #33521#25991#22995#21517
            DataBinding.FieldName = 'ava_name_e'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 93
          end
          object cxGrid1DBTableView1ava_name_p: TcxGridDBColumn
            Caption = #25340#38899
            DataBinding.FieldName = 'ava_name_p'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 95
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
            Width = 100
          end
          object cxGrid1DBTableView1ava_sex: TcxGridDBColumn
            Caption = #24615#21035
            DataBinding.FieldName = 'ava_sex'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #30007
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = #22899
                Value = '2'
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 43
          end
          object cxGrid1DBTableView1ava_date_birth: TcxGridDBColumn
            Caption = #20986#29983#24180#26376
            DataBinding.FieldName = 'ava_date_birth'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_Date_Sign: TcxGridDBColumn
            Caption = #31614#21457#26085#26399
            DataBinding.FieldName = 'ava_Date_Sign'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_Date_End: TcxGridDBColumn
            Caption = #26377#25928#26399#33267
            DataBinding.FieldName = 'ava_Date_End'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn
            Caption = #35746#21333#29366#24577
            DataBinding.FieldName = 'ava_StatusType'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_home_addr: TcxGridDBColumn
            Caption = #24120#20303#22320#22336
            DataBinding.FieldName = 'ava_home_addr'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
          end
          object cxGrid1DBTableView1ava_mobile: TcxGridDBColumn
            Caption = #30005#35805#21495#30721
            DataBinding.FieldName = 'ava_mobile'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #24180#40836
            DataBinding.FieldName = 'ava_age'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
          end
          object cxGrid1DBTableView1ava_Remark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'ava_Remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_id: TcxGridDBColumn
            DataBinding.FieldName = 'ava_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_id_avg: TcxGridDBColumn
            DataBinding.FieldName = 'ava_id_avg'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_date_app: TcxGridDBColumn
            DataBinding.FieldName = 'ava_date_app'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_no_app: TcxGridDBColumn
            DataBinding.FieldName = 'ava_no_app'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_lastname_c: TcxGridDBColumn
            DataBinding.FieldName = 'ava_lastname_c'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_lastname_e: TcxGridDBColumn
            DataBinding.FieldName = 'ava_lastname_e'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_lastname_p: TcxGridDBColumn
            DataBinding.FieldName = 'ava_lastname_p'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_firstname_c: TcxGridDBColumn
            DataBinding.FieldName = 'ava_firstname_c'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_firstname_e: TcxGridDBColumn
            DataBinding.FieldName = 'ava_firstname_e'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_firstname_p: TcxGridDBColumn
            DataBinding.FieldName = 'ava_firstname_p'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_alias: TcxGridDBColumn
            DataBinding.FieldName = 'ava_alias'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_name_ever: TcxGridDBColumn
            DataBinding.FieldName = 'ava_name_ever'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_no_iden: TcxGridDBColumn
            DataBinding.FieldName = 'ava_no_iden'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_ntn_now: TcxGridDBColumn
            DataBinding.FieldName = 'ava_ntn_now'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_ntn_birth: TcxGridDBColumn
            DataBinding.FieldName = 'ava_ntn_birth'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_pvc_birth: TcxGridDBColumn
            DataBinding.FieldName = 'ava_pvc_birth'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_cty_birth: TcxGridDBColumn
            DataBinding.FieldName = 'ava_cty_birth'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_fathername: TcxGridDBColumn
            DataBinding.FieldName = 'ava_fathername'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_mothername: TcxGridDBColumn
            DataBinding.FieldName = 'ava_mothername'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_marriage: TcxGridDBColumn
            DataBinding.FieldName = 'ava_marriage'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_tel_addr: TcxGridDBColumn
            DataBinding.FieldName = 'ava_tel_addr'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_fax_addr: TcxGridDBColumn
            DataBinding.FieldName = 'ava_fax_addr'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_tel_work: TcxGridDBColumn
            DataBinding.FieldName = 'ava_tel_work'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_fax_work: TcxGridDBColumn
            DataBinding.FieldName = 'ava_fax_work'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_bbc: TcxGridDBColumn
            DataBinding.FieldName = 'ava_bbc'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_email: TcxGridDBColumn
            DataBinding.FieldName = 'ava_email'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_status: TcxGridDBColumn
            DataBinding.FieldName = 'ava_status'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_ntn_province: TcxGridDBColumn
            DataBinding.FieldName = 'ava_ntn_province'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_ntn_city: TcxGridDBColumn
            DataBinding.FieldName = 'ava_ntn_city'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_ntn_county: TcxGridDBColumn
            DataBinding.FieldName = 'ava_ntn_county'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_ntn_address: TcxGridDBColumn
            DataBinding.FieldName = 'ava_ntn_address'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_ntn_before: TcxGridDBColumn
            DataBinding.FieldName = 'ava_ntn_before'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_now_province: TcxGridDBColumn
            DataBinding.FieldName = 'ava_now_province'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_now_city: TcxGridDBColumn
            DataBinding.FieldName = 'ava_now_city'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_now_county: TcxGridDBColumn
            DataBinding.FieldName = 'ava_now_county'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_now_address: TcxGridDBColumn
            DataBinding.FieldName = 'ava_now_address'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_home_post: TcxGridDBColumn
            DataBinding.FieldName = 'ava_home_post'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_now_post: TcxGridDBColumn
            DataBinding.FieldName = 'ava_now_post'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_liaison_addr: TcxGridDBColumn
            DataBinding.FieldName = 'ava_liaison_addr'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_liaison_mobile: TcxGridDBColumn
            DataBinding.FieldName = 'ava_liaison_mobile'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_liaison_tel: TcxGridDBColumn
            DataBinding.FieldName = 'ava_liaison_tel'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_liaison_fax: TcxGridDBColumn
            DataBinding.FieldName = 'ava_liaison_fax'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_liaison_post: TcxGridDBColumn
            DataBinding.FieldName = 'ava_liaison_post'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_liaison_email: TcxGridDBColumn
            DataBinding.FieldName = 'ava_liaison_email'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_citizenship: TcxGridDBColumn
            DataBinding.FieldName = 'ava_citizenship'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_commercial: TcxGridDBColumn
            DataBinding.FieldName = 'ava_commercial'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_id_act: TcxGridDBColumn
            DataBinding.FieldName = 'ava_id_act'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_code: TcxGridDBColumn
            DataBinding.FieldName = 'ava_code'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1ava_update1: TcxGridDBColumn
            DataBinding.FieldName = 'ava_update1'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1_ava_index: TcxGridDBColumn
            DataBinding.FieldName = 'ava_index'
            Visible = False
          end
          object cxGrid1DBTableView1ava_user_lst: TcxGridDBColumn
            DataBinding.FieldName = 'ava_user_lst'
            Visible = False
          end
          object cxGrid1DBTableView1ava_date_lst: TcxGridDBColumn
            DataBinding.FieldName = 'ava_date_lst'
            Visible = False
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
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object tc_top: TcxTabControl
    Left = 0
    Top = 0
    Width = 994
    Height = 32
    Align = alTop
    TabOrder = 1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 32
    ClientRectRight = 994
    ClientRectTop = 0
    object btn_save: TcxButton
      Left = 16
      Top = 3
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 0
      OnClick = btn_saveClick
    end
    object btn_excel: TcxButton
      Left = 97
      Top = 3
      Width = 144
      Height = 25
      Caption = 'Excel'#23548#20837#23458#20154#20449#24687
      TabOrder = 1
      OnClick = btn_excelClick
    end
    object btn_close: TcxButton
      Left = 888
      Top = 3
      Width = 75
      Height = 25
      Caption = #20851#38381
      TabOrder = 2
      OnClick = btn_closeClick
    end
  end
  object qry_ava: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qry_avaAfterInsert
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select * from ava_visa_application where ava_id_avg=-1')
    Left = 384
    Top = 143
  end
  object DS_ava: TDataSource
    AutoEdit = False
    DataSet = qry_ava
    Left = 382
    Top = 199
  end
  object qry_ava_max_index: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ava_id_avg'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select max(ava_index) as _max_index'
      'from ava_visa_application'
      'where ava_id_avg=:ava_id_avg')
    Left = 272
    Top = 127
  end
  object qry_avgh_add_guest: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select * from avgh_visa_group_history where avgh_id=-1')
    Left = 384
    Top = 80
  end
end
