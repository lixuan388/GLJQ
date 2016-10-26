inherited VisaTypeFrm: TVisaTypeFrm
  Caption = #21150#29702#31867#22411
  ClientHeight = 308
  ClientWidth = 726
  OnClose = FormClose
  ExplicitWidth = 742
  ExplicitHeight = 347
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 726
    Height = 282
    ExplicitWidth = 726
    ExplicitHeight = 282
    ClientRectBottom = 282
    ClientRectRight = 726
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 726
      Height = 282
      Align = alClient
      Properties.Tabs.Strings = (
        #31867#22411)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 726
      ExplicitHeight = 282
      ClientRectBottom = 282
      ClientRectRight = 726
      inherited cxGrid1: TcxGrid
        Width = 726
        Height = 259
        ExplicitWidth = 726
        ExplicitHeight = 259
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          object cxGrid1DBTableView1avt_Name: TcxGridDBColumn
            Caption = #21150#29702#31867#22411
            DataBinding.FieldName = 'avt_Name'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 211
          end
          object cxGrid1DBTableView1avt_User_Ins: TcxGridDBColumn
            Caption = #26032#22686#20154
            DataBinding.FieldName = 'avt_User_Ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Styles.Content = CommonDM.cxStyleMoneyGreen
            Width = 100
          end
          object cxGrid1DBTableView1avt_Date_Ins: TcxGridDBColumn
            Caption = #26032#22686#26085#26399
            DataBinding.FieldName = 'avt_Date_Ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Styles.Content = CommonDM.cxStyleMoneyGreen
            Width = 100
          end
          object cxGrid1DBTableView1avt_User_Lst: TcxGridDBColumn
            Caption = #20462#25913#20154
            DataBinding.FieldName = 'avt_User_Lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Styles.Content = CommonDM.cxStyleMoneyGreen
            Width = 100
          end
          object cxGrid1DBTableView1avt_Date_Lst: TcxGridDBColumn
            Caption = #20462#25913#26085#26399
            DataBinding.FieldName = 'avt_Date_Lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Styles.Content = CommonDM.cxStyleMoneyGreen
            Width = 100
          end
        end
      end
    end
    object edt_f: TEdit
      Left = -118
      Top = 3
      Width = 121
      Height = 20
      TabOrder = 1
      Text = 'edt_f'
    end
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    AfterInsert = Qry_ModuleAfterInsert
    AfterEdit = Qry_ModuleAfterEdit
    SQL.Strings = (
      'select * from avt_visa_type where avt_status<>'#39'D'#39)
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
