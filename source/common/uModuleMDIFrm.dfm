inherited ModuleMDIFrm: TModuleMDIFrm
  Caption = 'ModuleMDIFrm'
  ClientHeight = 549
  ClientWidth = 1020
  FormStyle = fsMDIChild
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 1036
  ExplicitHeight = 588
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Top = 26
    Width = 1020
    Height = 523
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ExplicitTop = 26
    ExplicitWidth = 1020
    ExplicitHeight = 523
    ClientRectBottom = 523
    ClientRectRight = 1020
  end
  inherited Qry_Module: TADOQuery
    LockType = ltBatchOptimistic
    AfterOpen = Qry_ModuleAfterOpen
  end
  inherited DS_Module: TDataSource
    AutoEdit = False
    OnStateChange = DS_ModuleStateChange
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = CommonDM.ImageList1
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 800
    Top = 48
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 807
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
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Close'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object Btn_Query: TdxBarButton
      Caption = #26597#35810
      Category = 0
      Hint = #26597#35810
      Visible = ivAlways
      ImageIndex = 57
      PaintStyle = psCaptionGlyph
      OnClick = Btn_QueryClick
    end
    object Btn_Insert: TdxBarButton
      Caption = #26032#22686
      Category = 0
      Hint = #26032#22686
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = Btn_InsertClick
    end
    object Btn_Edit: TdxBarButton
      Caption = #20462#25913
      Category = 0
      Hint = #20462#25913
      Visible = ivAlways
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = Btn_EditClick
    end
    object Btn_Save: TdxBarButton
      Caption = #20445#23384
      Category = 0
      Hint = #20445#23384
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = Btn_SaveClick
    end
    object Btn_Cancel: TdxBarButton
      Caption = #21462#28040
      Category = 0
      Hint = #21462#28040
      Visible = ivAlways
      ImageIndex = 36
      PaintStyle = psCaptionGlyph
      OnClick = Btn_CancelClick
    end
    object Btn_Delete: TdxBarButton
      Caption = #21024#38500
      Category = 0
      Hint = #21024#38500
      Visible = ivAlways
      ImageIndex = 4
      PaintStyle = psCaptionGlyph
      OnClick = Btn_DeleteClick
    end
    object Btn_Approve: TdxBarButton
      Caption = #23457#26680
      Category = 0
      Hint = #23457#26680
      Visible = ivAlways
      ImageIndex = 45
      PaintStyle = psCaptionGlyph
    end
    object Btn_Close: TdxBarButton
      Align = iaRight
      Caption = #20851#38381
      Category = 0
      Hint = #20851#38381
      Visible = ivAlways
      ImageIndex = 24
      PaintStyle = psCaptionGlyph
      OnClick = Btn_CloseClick
    end
    object dxBarGroup1: TdxBarGroup
      Items = (
        'Btn_Query'
        'Btn_Insert'
        'Btn_Edit'
        'Btn_Save'
        'Btn_Cancel'
        'Btn_Delete'
        'Btn_Approve'
        'Btn_Close')
    end
  end
end
