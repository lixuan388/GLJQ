object frmNoticeNew: TfrmNoticeNew
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #21457#36865#36890#30693
  ClientHeight = 502
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxTabControl1: TcxTabControl
    Left = 0
    Top = 0
    Width = 493
    Height = 121
    Align = alTop
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 121
    ClientRectRight = 493
    ClientRectTop = 0
    object btn_send: TcxButton
      Left = 398
      Top = 16
      Width = 75
      Height = 25
      Caption = #21457' '#36865
      TabOrder = 0
      OnClick = btn_sendClick
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 19
      Caption = #26377#25928#26085#26399#65306
      Transparent = True
    end
    object datebegin: TcxDateEdit
      Left = 80
      Top = 18
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 121
    end
    object dateend: TcxDateEdit
      Left = 224
      Top = 18
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 3
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 207
      Top = 19
      Caption = '-'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 16
      Top = 45
      Caption = #36890#30693#20869#23481#65306
      Transparent = True
    end
    object memo_notice: TcxMemo
      Left = 80
      Top = 47
      Properties.ScrollBars = ssVertical
      TabOrder = 6
      Height = 71
      Width = 393
    end
  end
  object cxTabControl2: TcxTabControl
    Left = 0
    Top = 121
    Width = 493
    Height = 381
    Align = alClient
    TabOrder = 1
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 128
    ExplicitTop = 232
    ExplicitWidth = 289
    ExplicitHeight = 193
    ClientRectBottom = 381
    ClientRectRight = 493
    ClientRectTop = 0
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 225
      Height = 381
      Align = alLeft
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ExplicitLeft = 16
      ExplicitTop = 32
      ExplicitHeight = 193
      ClientRectBottom = 381
      ClientRectRight = 225
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = #29992#25143#21517#21333
        ImageIndex = 0
        ExplicitWidth = 289
        ExplicitHeight = 169
        object cxTabControl5: TcxTabControl
          Left = 0
          Top = 0
          Width = 225
          Height = 33
          Align = alTop
          TabOrder = 0
          Properties.CustomButtons.Buttons = <>
          ExplicitTop = 8
          ClientRectBottom = 33
          ClientRectRight = 225
          ClientRectTop = 0
          object cxLabel4: TcxLabel
            Left = 3
            Top = 6
            Caption = #29992#25143#21517#31216#65306
            Transparent = True
          end
          object edt_name: TcxTextEdit
            Left = 64
            Top = 6
            TabOrder = 1
            Width = 80
          end
          object cxButton1: TcxButton
            Left = 163
            Top = 3
            Width = 56
            Height = 25
            Caption = #26597#25214
            TabOrder = 2
            OnClick = cxButton1Click
          end
        end
        object grd_user: TcxGrid
          Left = 0
          Top = 33
          Width = 225
          Height = 324
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 64
          ExplicitTop = 104
          ExplicitWidth = 250
          ExplicitHeight = 200
          object grd_user_tv: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.InvertSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 22
            OnCustomDrawIndicatorCell = grd_user_tvCustomDrawIndicatorCell
            object grd_user_tv_aus_id: TcxGridColumn
              DataBinding.ValueType = 'Integer'
              Visible = False
            end
            object grd_user_tv_aus_userjob: TcxGridColumn
              Caption = #29992#25143#23646#24615
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = #40664#35748
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = #31649#29702#21592
                  Value = 1
                end
                item
                  Description = #39640#32423#29992#25143
                  Value = 2
                end
                item
                  Description = #19968#33324#29992#25143
                  Value = 3
                end>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 40
            end
            object grd_user_tv_aus_username: TcxGridColumn
              Caption = #29992#25143#21517#31216
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 60
            end
          end
          object grd_user_lv: TcxGridLevel
            GridView = grd_user_tv
          end
        end
      end
    end
    object cxPageControl2: TcxPageControl
      Left = 268
      Top = 0
      Width = 225
      Height = 381
      Align = alRight
      TabOrder = 1
      Properties.ActivePage = cxTabSheet2
      Properties.CustomButtons.Buttons = <>
      ExplicitLeft = 288
      ExplicitTop = 32
      ExplicitHeight = 193
      ClientRectBottom = 381
      ClientRectRight = 225
      ClientRectTop = 24
      object cxTabSheet2: TcxTabSheet
        Caption = #36890#30693#21517#21333
        ImageIndex = 0
        ExplicitWidth = 161
        ExplicitHeight = 169
        object cxTabControl4: TcxTabControl
          Left = 0
          Top = 0
          Width = 225
          Height = 33
          Align = alTop
          TabOrder = 0
          Properties.CustomButtons.Buttons = <>
          ExplicitLeft = 3
          ExplicitTop = 56
          ExplicitWidth = 289
          ClientRectBottom = 33
          ClientRectRight = 225
          ClientRectTop = 0
        end
        object grd_notice: TcxGrid
          Left = 0
          Top = 33
          Width = 225
          Height = 324
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 16
          ExplicitTop = 72
          ExplicitWidth = 250
          ExplicitHeight = 200
          object grd_notice_tv: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            DataController.DataSource = ds_cnt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.InvertSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 22
            OnCustomDrawIndicatorCell = grd_notice_tvCustomDrawIndicatorCell
            object grd_notice_tvColumn1: TcxGridDBColumn
              Caption = #29992#25143#21517#31216
              DataBinding.FieldName = 'cnt_user_to'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object grd_notice_tvColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'cnt_id'
              Visible = False
            end
          end
          object grd_notice_lv: TcxGridLevel
            GridView = grd_notice_tv
          end
        end
      end
    end
    object cxTabControl3: TcxTabControl
      Left = 225
      Top = 0
      Width = 43
      Height = 381
      Align = alClient
      TabOrder = 2
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 6
      ExplicitLeft = 256
      ExplicitTop = 48
      ExplicitWidth = 289
      ExplicitHeight = 193
      ClientRectBottom = 381
      ClientRectRight = 43
      ClientRectTop = 0
      object btn_add_all: TcxButton
        Left = 5
        Top = 88
        Width = 32
        Height = 32
        Caption = '>>'
        TabOrder = 0
        OnClick = btn_add_allClick
      end
      object btn_add: TcxButton
        Left = 5
        Top = 136
        Width = 32
        Height = 32
        Caption = '>'
        TabOrder = 1
        OnClick = btn_addClick
      end
      object btn_del: TcxButton
        Left = 5
        Top = 256
        Width = 32
        Height = 32
        Caption = '<'
        TabOrder = 2
        OnClick = btn_delClick
      end
      object btn_del_all: TcxButton
        Left = 5
        Top = 208
        Width = 32
        Height = 32
        Caption = '<<'
        TabOrder = 3
        OnClick = btn_del_allClick
      end
    end
  end
  object qry_aus: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltReadOnly
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select aus_id,aus_username,aus_userjob'
      'from aus_users with(nolock)'
      'where aus_status<>'#39'D'#39)
    Left = 80
    Top = 265
  end
  object qry_cnt: TADOQuery
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from cnt_notice'
      'where cnt_id=-1')
    Left = 360
    Top = 265
  end
  object ds_cnt: TDataSource
    AutoEdit = False
    DataSet = qry_cnt
    Left = 356
    Top = 321
  end
end
