inherited CountryVisaFrm: TCountryVisaFrm
  Caption = #31614#35777#36164#26009
  ClientHeight = 551
  ClientWidth = 1010
  OnClose = FormClose
  ExplicitWidth = 1026
  ExplicitHeight = 589
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 1010
    Height = 525
    ExplicitWidth = 711
    ExplicitHeight = 288
    ClientRectBottom = 525
    ClientRectRight = 1010
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 1010
      Height = 525
      Align = alClient
      Properties.Tabs.Strings = (
        #31614#35777#22269#23478)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 288
      ClientRectBottom = 525
      ClientRectRight = 1010
      inherited cxGrid1: TcxGrid
        Top = 23
        Width = 1010
        Height = 502
        ExplicitLeft = 2
        ExplicitTop = 23
        ExplicitWidth = 1010
        ExplicitHeight = 502
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1act_name: TcxGridDBColumn
            Caption = #31614#35777#22269#23478
            DataBinding.FieldName = 'act_name'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 156
          end
          object cxGrid1DBTableView1act_code: TcxGridDBColumn
            Caption = #33521#25991#32553#20889
            DataBinding.FieldName = 'act_code'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 89
          end
          object cxGrid1DBTableView1act_no: TcxGridDBColumn
            Caption = #21463#29702#27969#27700#21495
            DataBinding.FieldName = 'act_no'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 96
          end
          object cxGrid1DBTableView1act_user_ins: TcxGridDBColumn
            Caption = #26032#22686#20154
            DataBinding.FieldName = 'act_user_ins'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'aus_id'
            Properties.ListColumns = <
              item
                FieldName = 'aus_username'
              end>
            Properties.ListSource = DS_Aus
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 91
          end
          object cxGrid1DBTableView1act_date_ins: TcxGridDBColumn
            Caption = #26032#22686#26085#26399
            DataBinding.FieldName = 'act_date_ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 167
          end
          object cxGrid1DBTableView1act_user_lst: TcxGridDBColumn
            Caption = #20462#25913#20154
            DataBinding.FieldName = 'act_user_lst'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'aus_id'
            Properties.ListColumns = <
              item
                FieldName = 'aus_username'
              end>
            Properties.ListSource = DS_Aus
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 87
          end
          object cxGrid1DBTableView1act_date_lst: TcxGridDBColumn
            Caption = #20462#25913#26085#26399
            DataBinding.FieldName = 'act_date_lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 167
          end
          object cxGrid1DBTableView1act_id: TcxGridDBColumn
            DataBinding.FieldName = 'act_id'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object cxGrid1DBTableView1act_status: TcxGridDBColumn
            DataBinding.FieldName = 'act_status'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
        end
      end
    end
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    AfterInsert = Qry_ModuleAfterInsert
    AfterEdit = Qry_ModuleAfterEdit
    SQL.Strings = (
      'select * from act_country where act_status<>'#39'D'#39)
    Left = 888
    Top = 72
  end
  inherited DS_Module: TDataSource
    Left = 888
    Top = 120
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
          ItemName = 'Btn_Close'
        end>
    end
  end
  object Qry_Aus: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    AfterOpen = Qry_ModuleAfterOpen
    AfterInsert = Qry_ModuleAfterInsert
    AfterEdit = Qry_ModuleAfterEdit
    Parameters = <>
    SQL.Strings = (
      'select aus_id,aus_username from aus_users')
    Left = 888
    Top = 168
  end
  object DS_Aus: TDataSource
    AutoEdit = False
    DataSet = Qry_Aus
    OnStateChange = DS_ModuleStateChange
    Left = 888
    Top = 216
  end
end
