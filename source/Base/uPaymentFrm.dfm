inherited PaymentFrm: TPaymentFrm
  Caption = #25910#27454#26041#24335
  ClientHeight = 413
  ClientWidth = 1024
  OnClose = FormClose
  ExplicitWidth = 1040
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxTabControl1: TcxTabControl
    Width = 1024
    Height = 386
    ClientRectBottom = 386
    ClientRectRight = 1024
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 1024
      Height = 386
      Align = alClient
      Properties.Tabs.Strings = (
        #25910#27454#26041#24335)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      ClientRectBottom = 386
      ClientRectRight = 1024
      inherited cxGrid1: TcxGrid
        Width = 1024
        Height = 359
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1apm_Name: TcxGridDBColumn
            Caption = #21517#31216
            DataBinding.FieldName = 'apm_Name'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 276
          end
          object cxGrid1DBTableView1apm_User_Ins: TcxGridDBColumn
            Caption = #26032#22686#20154
            DataBinding.FieldName = 'apm_User_Ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1apmDate_Ins: TcxGridDBColumn
            Caption = #26032#22686#26085#26399
            DataBinding.FieldName = 'apmDate_Ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1apm_User_Lst: TcxGridDBColumn
            Caption = #20462#25913#20154
            DataBinding.FieldName = 'apm_User_Lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1apm_date_Lst: TcxGridDBColumn
            Caption = #20462#25913#26085#26399
            DataBinding.FieldName = 'apm_date_Lst'
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
      'select * from apm_payment where apm_status<>'#39'D'#39)
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
      27
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
