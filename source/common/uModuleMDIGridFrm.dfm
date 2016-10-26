inherited ModuleMDIGirdFrm: TModuleMDIGirdFrm
  Caption = 'ModuleMDIGirdFrm'
  ClientHeight = 323
  ClientWidth = 765
  ExplicitWidth = 781
  ExplicitHeight = 362
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxTabControl1: TcxTabControl
    Width = 765
    Height = 297
    ExplicitWidth = 765
    ExplicitHeight = 297
    ClientRectBottom = 297
    ClientRectRight = 765
    object cxTabControl2: TcxTabControl
      Left = 236
      Top = 30
      Width = 299
      Height = 181
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      Properties.TabIndex = 0
      Properties.Tabs.Strings = (
        'module')
      ClientRectBottom = 181
      ClientRectRight = 299
      ClientRectTop = 23
      object cxGrid1: TcxGrid
        Left = 0
        Top = 23
        Width = 299
        Height = 158
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCanFocusRecord = cxGrid1DBTableView1CanFocusRecord
          DataController.DataSource = DS_Module
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OnCustomDrawIndicatorCell = cxGrid1DBTableView1CustomDrawIndicatorCell
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
  end
end
