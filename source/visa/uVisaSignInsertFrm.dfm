inherited VisaSignInsertFrm: TVisaSignInsertFrm
  Caption = #35746#21333#24405#20837
  ClientHeight = 406
  ClientWidth = 1025
  Position = poDefault
  OnClose = FormClose
  ExplicitWidth = 1041
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 1025
    Height = 380
    ExplicitWidth = 1025
    ExplicitHeight = 380
    ClientRectBottom = 380
    ClientRectRight = 1025
    object cxTabControl2: TcxTabControl
      Left = 0
      Top = 0
      Width = 1025
      Height = 380
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 380
      ClientRectRight = 1025
      ClientRectTop = 0
    end
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
          ItemName = 'btn_add'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_excel_input'
        end
        item
          Visible = True
          ItemName = 'Btn_Close'
        end>
    end
    object dxBarStatic1: TdxBarStatic [9]
      Caption = #21463#29702#21495':'
      Category = 0
      Hint = #21463#29702#21495':'
      Visible = ivAlways
    end
    object Edt_InvoiceNo: TdxBarEdit [10]
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton [11]
      Caption = #20445#23384
      Category = 0
      Hint = #20445#23384
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object btn_excel_input: TdxBarButton [12]
      Caption = 'Excel'#23548#20837#23458#20154#20449#24687
      Category = 0
      Hint = 'Excel'#23548#20837#23458#20154#20449#24687
      Visible = ivAlways
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
      OnClick = btn_excel_inputClick
    end
    object btn_add: TdxBarButton [13]
      Caption = #26032#22686
      Category = 0
      Hint = #26032#22686
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = btn_addClick
    end
  end
end
