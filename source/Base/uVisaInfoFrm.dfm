inherited VisaInfoFrm: TVisaInfoFrm
  Caption = #31614#35777#22522#26412#36164#26009
  ClientHeight = 549
  ClientWidth = 1027
  OnClose = FormClose
  ExplicitWidth = 1043
  ExplicitHeight = 588
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 1027
    Height = 523
    ExplicitWidth = 1027
    ExplicitHeight = 523
    ClientRectBottom = 523
    ClientRectRight = 1027
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 1027
      Height = 523
      Align = alClient
      Properties.Tabs.Strings = (
        #31614#35777#22522#26412#36164#26009)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1027
      ExplicitHeight = 523
      ClientRectBottom = 523
      ClientRectRight = 1027
      inherited cxGrid1: TcxGrid
        Width = 1027
        Height = 500
        ExplicitWidth = 1027
        ExplicitHeight = 500
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1avi_Name: TcxGridDBColumn
            Caption = #21517#31216
            DataBinding.FieldName = 'avi_Name'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 291
          end
          object cxGrid1DBTableView1avi_Remark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'avi_Remark'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 310
          end
          object cxGrid1DBTableView1avi_User_Ins: TcxGridDBColumn
            Caption = #26032#22686#20154
            DataBinding.FieldName = 'avi_User_Ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1avi_Date_Ins: TcxGridDBColumn
            Caption = #26032#22686#26085#26399
            DataBinding.FieldName = 'avi_Date_Ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1avi_User_Lst: TcxGridDBColumn
            Caption = #20462#25913#20154
            DataBinding.FieldName = 'avi_User_Lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1avi_date_Lst: TcxGridDBColumn
            Caption = #20462#25913#26085#26399
            DataBinding.FieldName = 'avi_date_Lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
        end
      end
    end
  end
  inherited Qry_Module: TADOQuery
    Active = True
    CursorType = ctStatic
    AfterInsert = Qry_ModuleAfterInsert
    AfterEdit = Qry_ModuleAfterEdit
    SQL.Strings = (
      'select * from avi_visa_info where avi_status<>'#39'D'#39)
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
end
