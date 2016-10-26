inherited SourceInfoFrm: TSourceInfoFrm
  Caption = #21516#34892#20449#24687
  ClientHeight = 314
  ClientWidth = 757
  OnClose = FormClose
  ExplicitWidth = 773
  ExplicitHeight = 353
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 757
    Height = 288
    ExplicitWidth = 757
    ExplicitHeight = 288
    ClientRectBottom = 288
    ClientRectRight = 757
    inherited cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 757
      Height = 288
      Align = alClient
      Properties.Tabs.Strings = (
        #21516#34892#20449#24687)
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 757
      ExplicitHeight = 288
      ClientRectBottom = 288
      ClientRectRight = 757
      inherited cxGrid1: TcxGrid
        Width = 757
        Height = 265
        ExplicitWidth = 757
        ExplicitHeight = 265
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          OptionsView.IndicatorWidth = 28
          object cxGrid1DBTableView1asi_Name: TcxGridDBColumn
            Caption = #21516#34892#21517#31216
            DataBinding.FieldName = 'asi_Name'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 251
          end
          object cxGrid1DBTableView1asi_Link: TcxGridDBColumn
            Caption = #32852#31995#20154
            DataBinding.FieldName = 'asi_Link'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 134
          end
          object cxGrid1DBTableView1asi_Tel: TcxGridDBColumn
            Caption = #32852#31995#30005#35805
            DataBinding.FieldName = 'asi_Tel'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 155
          end
          object cxGrid1DBTableView1asi_Addr: TcxGridDBColumn
            Caption = #22320#22336
            DataBinding.FieldName = 'asi_Addr'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 400
          end
          object cxGrid1DBTableView1asi_User_Ins: TcxGridDBColumn
            Caption = #26032#22686#20154
            DataBinding.FieldName = 'asi_User_Ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1asi_Date_Ins: TcxGridDBColumn
            Caption = #26032#22686#26085#26399
            DataBinding.FieldName = 'asi_Date_Ins'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1asi_User_Lst: TcxGridDBColumn
            Caption = #20462#25913#20154
            DataBinding.FieldName = 'asi_User_Lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object cxGrid1DBTableView1asi_Date_Lst: TcxGridDBColumn
            Caption = #20462#25913#26085#26399
            DataBinding.FieldName = 'asi_Date_Lst'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
        end
      end
      object edt_name: TcxTextEdit
        Left = 72
        Top = 72
        TabOrder = 1
        Width = 121
      end
    end
  end
  inherited Qry_Module: TADOQuery
    CursorType = ctStatic
    AfterInsert = Qry_ModuleAfterInsert
    AfterEdit = Qry_ModuleAfterEdit
    SQL.Strings = (
      'select * from asi_source_info where asi_status<>'#39'D'#39)
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
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end
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
    object dxBarStatic1: TdxBarStatic [9]
      Caption = #21516#34892#21517#31216#65306
      Category = 0
      Hint = #21516#34892#21517#31216#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem [10]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_name
    end
  end
  object qry_asi_chk: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'asi_name'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from asi_source_info'
      'where asi_status<>'#39'D'#39
      'and asi_name=:asi_name')
    Left = 152
    Top = 162
  end
end
