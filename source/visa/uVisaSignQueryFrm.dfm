inherited VisaSignQueryFrm: TVisaSignQueryFrm
  Caption = #35746#21333#26597#35810
  ClientHeight = 406
  ClientWidth = 1025
  OnClose = FormClose
  ExplicitWidth = 1041
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Top = 52
    Width = 1025
    Height = 354
    ExplicitTop = 52
    ExplicitWidth = 1025
    ExplicitHeight = 354
    ClientRectBottom = 354
    ClientRectRight = 1025
    object cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 1025
      Height = 354
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 354
      ClientRectRight = 1025
      ClientRectTop = 0
      object Edt_InvoiceNo: TcxTextEdit
        Left = 56
        Top = 32
        TabOrder = 0
        Width = 100
      end
      object edt_name_c: TcxTextEdit
        Left = 232
        Top = 32
        TabOrder = 1
        Width = 100
      end
      object edt_passport_no: TcxTextEdit
        Left = 400
        Top = 32
        TabOrder = 2
        Width = 100
      end
      object edt_name_ava: TcxTextEdit
        Left = 584
        Top = 32
        TabOrder = 3
        Width = 100
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      52
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
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Query'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarControlContainerItem4'
        end
        item
          Visible = True
          ItemName = 'btn_locate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_admin_delete_order'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_admin_op_flg'
        end
        item
          Visible = True
          ItemName = 'Btn_Close'
        end>
    end
    object dxBarManager1Bar2: TdxBar [1]
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 1059
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_open'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_buziliao'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_fanyi'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_fuyin'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_booking'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_zhengli'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_before_send'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_send'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnLingGuanBuLiao'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnLingGuanShenHe'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_back'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_refuse'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_fafang'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_xiaoqian'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_refund'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_split_orders'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_groupEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ApplicationEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_list'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_add'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarStatic1: TdxBarStatic [10]
      Caption = #21463#29702#21495':'
      Category = 0
      Hint = #21463#29702#21495':'
      Visible = ivAlways
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem [11]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = Edt_InvoiceNo
    end
    object dxBarStatic2: TdxBarStatic [12]
      Caption = #20013#25991#21517':'
      Category = 0
      Hint = #20013#25991#21517':'
      Visible = ivAlways
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem [13]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_name_c
    end
    object dxBarStatic3: TdxBarStatic [14]
      Caption = #25252#29031#21495':'
      Category = 0
      Hint = #25252#29031#21495':'
      Visible = ivAlways
    end
    object dxBarControlContainerItem3: TdxBarControlContainerItem [15]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_passport_no
    end
    object btn_admin_delete_order: TdxBarButton [16]
      Caption = #31649#29702#21592#21024#38500#35746#21333
      Category = 0
      Hint = #31649#29702#21592#21024#38500#35746#21333
      Visible = ivNever
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btn_admin_delete_orderClick
    end
    object btn_open: TdxBarButton [17]
      Tag = 1
      Caption = #25286#20214
      Category = 0
      Hint = #25286#20214
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_buziliao: TdxBarButton [18]
      Tag = 2
      Caption = #34917#36164#26009
      Category = 0
      Hint = #34917#36164#26009
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_booking: TdxBarButton [19]
      Tag = 3
      Caption = #39044#32422
      Category = 0
      Hint = #39044#32422
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_before_send: TdxBarButton [20]
      Tag = 4
      Caption = #24453#36865
      Category = 0
      Hint = #24453#36865
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_send: TdxBarButton [21]
      Tag = 5
      Caption = #36865#31614
      Category = 0
      Hint = #36865#31614
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btnLingGuanBuLiao: TdxBarButton [22]
      Tag = 15
      Caption = #39046#39302#34917#26009
      Category = 0
      Hint = #39046#39302#34917#26009
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_back: TdxBarButton [23]
      Tag = 6
      Caption = #21462#22238
      Category = 0
      Hint = #21462#22238
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_refuse: TdxBarButton [24]
      Tag = 14
      Caption = #25298#31614
      Category = 0
      Hint = #25298#31614
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_fafang: TdxBarButton [25]
      Tag = 7
      Caption = #21457#25918
      Category = 0
      Hint = #21457#25918
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_refund: TdxBarButton [26]
      Tag = 8
      Caption = #36864#25913
      Category = 0
      Hint = #36864#25913
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_split_orders: TdxBarButton [27]
      Tag = 9
      Caption = #25286#20998#35746#21333
      Category = 0
      Hint = #25286#20998#35746#21333
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_groupEdit: TdxBarButton [28]
      Tag = 10
      Caption = #20462#25913#35746#21333
      Category = 0
      Hint = #20462#25913#35746#21333
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_ApplicationEdit: TdxBarButton [29]
      Tag = 11
      Caption = #20462#25913#23458#20154#20449#24687
      Category = 0
      Hint = #20462#25913#23458#20154#20449#24687
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_list: TdxBarButton [30]
      Tag = 12
      Caption = #31614#35777#21517#21333
      Category = 0
      Hint = #31614#35777#21517#21333
      Visible = ivAlways
      OnClick = btn_listClick
    end
    object btn_add: TdxBarButton [31]
      Tag = 13
      Caption = #36861#21152
      Category = 0
      Hint = #36861#21152
      Visible = ivAlways
      OnClick = btn_addClick
    end
    object btn_admin_op_flg: TdxBarButton [32]
      Caption = #39034#24207'/'#33258#30001#25805#20316
      Category = 0
      Hint = #39034#24207'/'#33258#30001#25805#20316
      Visible = ivNever
      ImageIndex = 121
      PaintStyle = psCaptionGlyph
      OnClick = btn_admin_op_flgClick
    end
    object dxBarStatic4: TdxBarStatic [33]
      Caption = #23458#20154#22995#21517#65306
      Category = 0
      Hint = #23458#20154#22995#21517#65306
      Visible = ivAlways
    end
    object dxBarControlContainerItem4: TdxBarControlContainerItem [34]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edt_name_ava
    end
    object btn_locate: TdxBarButton [35]
      Caption = #26597#25214#23458#20154
      Category = 0
      Hint = #26597#25214#23458#20154
      Visible = ivAlways
      ImageIndex = 41
      PaintStyle = psCaptionGlyph
      OnClick = btn_locateClick
    end
    object btn_fanyi: TdxBarButton [36]
      Tag = 16
      Caption = #32763#35793
      Category = 0
      Hint = #32763#35793
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_fuyin: TdxBarButton [37]
      Tag = 17
      Caption = #22797#21360
      Category = 0
      Hint = #22797#21360
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_zhengli: TdxBarButton [38]
      Tag = 18
      Caption = #25972#29702
      Category = 0
      Hint = #25972#29702
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btn_xiaoqian: TdxBarButton [39]
      Tag = 19
      Caption = #38144#31614
      Category = 0
      Hint = #38144#31614
      Visible = ivAlways
      OnClick = btn_openClick
    end
    object btnLingGuanShenHe: TdxBarButton [40]
      Tag = 20
      Caption = #39046#39302#23457#26680
      Category = 0
      Hint = #39046#39302#23457#26680
      Visible = ivAlways
      OnClick = btn_openClick
    end
  end
  object sp_delete_order: TADOStoredProc
    Connection = CommonDM.ConVisa
    ProcedureName = 'usp_delete_order'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@avg_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 160
    Top = 122
  end
  object sp_op_order_flg: TADOStoredProc
    Connection = CommonDM.ConVisa
    ProcedureName = 'usp_op_order_flg'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@avg_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@avg_op_order_flg'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 160
    Top = 178
  end
end
