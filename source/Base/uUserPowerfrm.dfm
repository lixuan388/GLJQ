object UserPowerfrm: TUserPowerfrm
  Left = 76
  Top = 80
  BorderIcons = []
  Caption = #29992#25143#26435#38480
  ClientHeight = 574
  ClientWidth = 881
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 12
  object bsSkinControlBar1: TbsSkinControlBar
    Left = 0
    Top = 0
    Width = 881
    Height = 29
    SkinDataName = 'controlbar'
    SkinBevel = False
    Align = alTop
    AutoDrag = False
    AutoSize = True
    BevelKind = bkNone
    RowSnap = False
    TabOrder = 0
    object SkinToolBar: TbsSkinToolBar
      Left = 11
      Top = 2
      Width = 701
      Height = 25
      HintImageIndex = 0
      TabOrder = 0
      SkinDataName = 'bigtoolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -12
      DefaultFont.Name = #23435#20307
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 25
      UseSkinFont = True
      EmptyDrawing = False
      RibbonStyle = False
      ImagePosition = bsipDefault
      TransparentMode = False
      CaptionImageIndex = -1
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvNone
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Align = alClient
      CanScroll = False
      HotScroll = False
      ScrollOffset = 0
      ScrollTimerInterval = 50
      AdjustControls = True
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = False
      Flat = False
      Images = CommonDM.ImageList_Title_2
      HotImages = CommonDM.ImageList_Title_1
      object tbExit: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 78
        Height = 25
        Cursor = crHandPoint
        HintImageIndex = 0
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -12
        DefaultFont.Name = #23435#20307
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #36864#20986'(&E)'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = tbExitClick
      end
      object tbQuery: TbsSkinSpeedButton
        Left = 92
        Top = 0
        Width = 78
        Height = 25
        Cursor = crHandPoint
        HintImageIndex = 0
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -12
        DefaultFont.Name = #23435#20307
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 1
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #26597#35810'(Q)'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = tbQueryClick
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 78
        Top = 0
        Width = 14
        Height = 25
        Align = alLeft
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -13
      end
      object tbInsert: TbsSkinSpeedButton
        Left = 184
        Top = 0
        Width = 78
        Height = 25
        Cursor = crHandPoint
        HintImageIndex = 0
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -12
        DefaultFont.Name = #23435#20307
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 2
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #26032#22686'(&A)'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = tbInsertClick
        ExplicitLeft = 180
      end
      object tbModify: TbsSkinSpeedButton
        Left = 264
        Top = 0
        Width = 78
        Height = 25
        Cursor = crHandPoint
        HintImageIndex = 0
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -12
        DefaultFont.Name = #23435#20307
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 3
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #20462#25913'(&M)'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = tbModifyClick
      end
      object tbDelete: TbsSkinSpeedButton
        Left = 344
        Top = 0
        Width = 78
        Height = 25
        Cursor = crHandPoint
        HintImageIndex = 0
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -12
        DefaultFont.Name = #23435#20307
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 4
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #21024#38500'(&D)'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = tbDeleteClick
      end
      object tbSave: TbsSkinSpeedButton
        Left = 436
        Top = 0
        Width = 78
        Height = 25
        Cursor = crHandPoint
        HintImageIndex = 0
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -12
        DefaultFont.Name = #23435#20307
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 5
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #20445#23384'(&S)'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = tbSaveClick
      end
      object tbCancel: TbsSkinSpeedButton
        Left = 516
        Top = 0
        Width = 78
        Height = 25
        Cursor = crHandPoint
        HintImageIndex = 0
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -12
        DefaultFont.Name = #23435#20307
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 6
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #21462#28040'(&C)'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = tbCancelClick
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 342
        Top = 0
        Width = 2
        Height = 25
        Align = alLeft
        Shape = bsSpacer
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -13
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 422
        Top = 0
        Width = 14
        Height = 25
        Align = alLeft
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -13
      end
      object Label1: TLabel
        Left = 594
        Top = 0
        Width = 22
        Height = 25
        Align = alClient
        Alignment = taCenter
        Caption = #29992#25143#26435#38480
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -28
        Font.Name = #38582#20070
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        ExplicitWidth = 116
        ExplicitHeight = 28
      end
      object bsSkinBevel4: TbsSkinBevel
        Left = 170
        Top = 0
        Width = 14
        Height = 25
        Align = alLeft
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -13
      end
      object bsSkinBevel5: TbsSkinBevel
        Left = 262
        Top = 0
        Width = 2
        Height = 25
        Align = alLeft
        Shape = bsSpacer
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -13
      end
      object bsSkinBevel6: TbsSkinBevel
        Left = 514
        Top = 0
        Width = 2
        Height = 25
        Align = alLeft
        Shape = bsSpacer
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -13
      end
      object tb_reset_password: TbsSkinSpeedButton
        Left = 616
        Top = 0
        Width = 85
        Height = 25
        HintImageIndex = 0
        Visible = False
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 8
        RepeatMode = False
        RepeatInterval = 100
        Transparent = False
        Flat = False
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = #37325#32622#23494#30721
        ShowCaption = True
        NumGlyphs = 1
        Align = alRight
        Spacing = 1
        OnClick = tb_reset_passwordClick
        ExplicitLeft = 626
      end
    end
  end
  object bsSkinGroupBox1: TbsSkinGroupBox
    Left = 8
    Top = 48
    Width = 201
    Height = 577
    HintImageIndex = 0
    TabOrder = 1
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    EmptyDrawing = False
    RibbonStyle = False
    ImagePosition = bsipDefault
    TransparentMode = False
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = #29992#25143#36164#26009
    UseSkinSize = True
    object dbgUsers: TDBGridEh
      Left = 1
      Top = 23
      Width = 199
      Height = 553
      Align = alClient
      AllowedOperations = []
      AutoFitColWidths = True
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataSource = dsUsers
      DynProps = <>
      FixedColor = 11517887
      Flat = True
      FooterParams.Color = clWindow
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      ImeName = #20013#25991' ('#31616#20307') - '#26234#33021' ABC'
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      OptionsEh = [dghFixed3D, dghEnterAsTab]
      ParentCtl3D = False
      RowDetailPanel.Color = clBtnFace
      RowHeight = 4
      RowLines = 1
      SumList.VirtualRecords = True
      TabOrder = 0
      TitleParams.RowHeight = 18
      Columns = <
        item
          ButtonStyle = cbsNone
          DynProps = <>
          EditButtons = <>
          FieldName = 'aus_usercode'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #29992#25143#32534#21495
          Width = 86
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'aus_username'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #29992#25143#21517#31216
          Width = 82
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object bsSkinGroupBox2: TbsSkinGroupBox
    Left = 216
    Top = 48
    Width = 777
    Height = 577
    HintImageIndex = 0
    TabOrder = 2
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    EmptyDrawing = False
    RibbonStyle = False
    ImagePosition = bsipDefault
    TransparentMode = False
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = #35814#32454#36164#26009
    UseSkinSize = True
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 60
      Height = 12
      Caption = #29992#25143#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 60
      Height = 12
      Caption = #29992#25143#21517#31216#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 80
      Width = 60
      Height = 12
      Caption = #25152#23646#37096#38376#65306
      Transparent = True
    end
    object Label5: TLabel
      Left = 208
      Top = 32
      Width = 60
      Height = 12
      Caption = #29992#25143#23646#24615#65306
      Transparent = True
    end
    object Label6: TLabel
      Left = 17
      Top = 106
      Width = 60
      Height = 12
      Caption = #22269#23478#26435#38480#65306
      Transparent = True
    end
    object bsSkinGroupBox3: TbsSkinGroupBox
      Left = 280
      Top = 88
      Width = 489
      Height = 465
      HintImageIndex = 0
      TabOrder = 0
      SkinDataName = 'groupbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      EmptyDrawing = False
      RibbonStyle = False
      ImagePosition = bsipDefault
      TransparentMode = False
      CaptionImageIndex = -1
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvFrame
      CaptionMode = True
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = #31995#32479#26435#38480
      UseSkinSize = True
      object dbgPower: TDBGridEh
        Left = 1
        Top = 23
        Width = 487
        Height = 441
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = False
        DataSource = dsPower
        DynProps = <>
        FixedColor = 11517887
        Flat = True
        FooterParams.Color = clWindow
        FrozenCols = 1
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        ImeName = #20013#25991' ('#31616#20307') - '#26234#33021' ABC'
        IndicatorOptions = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines]
        OptionsEh = [dghFixed3D, dghEnterAsTab]
        ParentCtl3D = False
        RowDetailPanel.Color = clBtnFace
        RowHeight = 4
        RowLines = 1
        SumList.VirtualRecords = True
        TabOrder = 0
        TitleParams.RowHeight = 18
        OnCellClick = dbgPowerCellClick
        OnKeyPress = dbgPowerKeyPress
        Columns = <
          item
            ButtonStyle = cbsNone
            DynProps = <>
            EditButtons = <>
            FieldName = 'modulename'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #27169#22359#21517#31216
            Width = 100
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'modulepower'
            Footers = <>
            ImageList = ImageListModule
            KeyList.Strings = (
              '0'
              '1'
              '2')
            Title.Alignment = taCenter
            Title.Caption = #36827#20837
            Width = 51
          end
          item
            Checkboxes = False
            DynProps = <>
            EditButtons = <>
            FieldName = 's_insert'
            Footers = <>
            ImageList = ImageListModule
            KeyList.Strings = (
              '0'
              '1'
              '2')
            Title.Alignment = taCenter
            Title.Caption = #26032#22686
            Width = 51
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 's_modify'
            Footers = <>
            ImageList = ImageListModule
            KeyList.Strings = (
              '0'
              '1'
              '2')
            Title.Alignment = taCenter
            Title.Caption = #20462#25913
            Width = 51
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 's_delete'
            Footers = <>
            ImageList = ImageListModule
            KeyList.Strings = (
              '0'
              '1'
              '2')
            Title.Alignment = taCenter
            Title.Caption = #21024#38500
            Width = 51
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 's_locate'
            Footers = <>
            ImageList = ImageListModule
            KeyList.Strings = (
              '0'
              '1'
              '2')
            Title.Alignment = taCenter
            Title.Caption = #26597#35810
            Width = 51
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 's_print'
            Footers = <>
            ImageList = ImageListModule
            KeyList.Strings = (
              '0'
              '1'
              '2')
            Title.Alignment = taCenter
            Title.Caption = #25171#21360
            Width = 51
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 's_approve'
            Footers = <>
            ImageList = ImageListModule
            KeyList.Strings = (
              '0'
              '1'
              '2')
            Title.Alignment = taCenter
            Title.Caption = #23457#26680
            Width = 51
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object edtUserCode: TbsSkinDBEdit
      Left = 80
      Top = 28
      Width = 105
      Height = 20
      Text = 'edtUserCode'
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 20
      ButtonMode = False
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'aus_usercode'
      DataSource = dsUsers
    end
    object edtUserName: TbsSkinDBEdit
      Left = 80
      Top = 52
      Width = 105
      Height = 20
      Text = 'edtUserName'
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 20
      ButtonMode = False
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      DataField = 'aus_username'
      DataSource = dsUsers
    end
    object bsSkinDBComboBox1: TbsSkinDBComboBox
      Left = 80
      Top = 75
      Width = 105
      Height = 20
      HintImageIndex = 0
      TabOrder = 3
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      UseSkinSize = True
      ToolButtonStyle = False
      AlphaBlend = False
      AlphaBlendValue = 0
      AlphaBlendAnimation = False
      ListBoxCaptionMode = False
      ListBoxDefaultFont.Charset = DEFAULT_CHARSET
      ListBoxDefaultFont.Color = clWindowText
      ListBoxDefaultFont.Height = 14
      ListBoxDefaultFont.Name = 'Arial'
      ListBoxDefaultFont.Style = []
      ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
      ListBoxDefaultCaptionFont.Color = clWindowText
      ListBoxDefaultCaptionFont.Height = 14
      ListBoxDefaultCaptionFont.Name = 'Arial'
      ListBoxDefaultCaptionFont.Style = []
      ListBoxDefaultItemHeight = 20
      ListBoxCaptionAlignment = taLeftJustify
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      ListBoxWidth = 0
      HideSelection = True
      AutoComplete = True
      ImageIndex = -1
      CharCase = ecNormal
      DefaultColor = clWindow
      Items.Strings = (
        #31614#35777#37096
        #35745#35843#37096
        #36130#21153#37096)
      ItemIndex = -1
      DropDownCount = 8
      HorizontalExtent = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Sorted = False
      Style = bscbFixedStyle
      DataField = 'aus_depart'
      DataSource = dsUsers
      ParentFont = False
    end
    object bsSkinDBRadioGroup1: TbsSkinDBRadioGroup
      Left = 280
      Top = 24
      Width = 489
      Height = 60
      HintImageIndex = 0
      TabOrder = 4
      SkinDataName = 'groupbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      EmptyDrawing = False
      RibbonStyle = False
      ImagePosition = bsipDefault
      TransparentMode = False
      CaptionImageIndex = -1
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvFrame
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      UseSkinSize = True
      Columns = 4
      DataField = 'aus_userjob'
      DataSource = dsUsers
      Items.Strings = (
        #40664#35748
        #31649#29702#21592
        #39640#32423#29992#25143
        #19968#33324#29992#25143)
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
    object DBGridEh1: TDBGridEh
      Left = 9
      Top = 130
      Width = 264
      Height = 420
      AllowedOperations = [alopUpdateEh]
      Color = clWhite
      Ctl3D = False
      DataSource = dsTreePower
      DynProps = <>
      FixedColor = 11517887
      Flat = True
      FooterParams.Color = clWindow
      FrozenCols = 1
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      ImeName = #20013#25991' ('#31616#20307') - '#26234#33021' ABC'
      IndicatorOptions = []
      Options = [dgEditing, dgTitles, dgColLines, dgRowLines]
      OptionsEh = [dghFixed3D, dghEnterAsTab]
      ParentCtl3D = False
      RowDetailPanel.Color = clBtnFace
      RowHeight = 4
      RowLines = 1
      SumList.VirtualRecords = True
      TabOrder = 5
      TitleParams.RowHeight = 18
      OnCellClick = dbgPowerCellClick
      OnKeyPress = dbgPowerKeyPress
      Columns = <
        item
          Alignment = taCenter
          ButtonStyle = cbsNone
          DynProps = <>
          EditButtons = <>
          FieldName = 's_act_name'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #31614#35777#22269#23478
          Width = 188
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 's_power'
          Footers = <>
          ImageList = ImageList1
          KeyList.Strings = (
            '1'
            '2')
          Title.Alignment = taCenter
          Title.Caption = #26435#38480
          Width = 51
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object btn_all_tree: TcxButton
      Left = 191
      Top = 99
      Width = 75
      Height = 25
      Caption = #20840#37096#25480#26435
      Enabled = False
      TabOrder = 6
      OnClick = btn_all_treeClick
    end
  end
  object bsBusinessSkinForm: TbsBusinessSkinForm
    ShowMDIScrollBars = True
    WindowState = wsNormal
    QuickButtons = <>
    QuickButtonsShowHint = False
    QuickButtonsShowDivider = True
    ClientInActiveEffect = False
    ClientInActiveEffectType = bsieSemiTransparent
    DisableSystemMenu = False
    AlwaysResize = False
    PositionInMonitor = bspDefault
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    UseSkinFontInCaption = True
    UseSkinSizeInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 80
    Top = 288
  end
  object qryUsers: TADOQuery
    CacheSize = 1000
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    AfterInsert = qryUsersAfterInsert
    AfterEdit = qryUsersAfterEdit
    AfterScroll = qryUsersAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from aus_users '
      'where aus_status<>'#39'D'#39
      'order by aus_username')
    Left = 80
    Top = 336
  end
  object dsUsers: TDataSource
    AutoEdit = False
    DataSet = qryUsers
    Left = 80
    Top = 384
  end
  object qryPower: TADOQuery
    CacheSize = 100
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    DataSource = dsUsers
    Parameters = <
      item
        Name = 'aus_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select powerid,modulepower,s_insert,s_modify,s_delete,'
      '       s_locate,s_print,s_approve,modulename '
      'from s_power a,s_module b'
      'where a.moduleid=b.moduleid'
      '      and a.userid=:aus_id'
      'order by a.moduleid')
    Left = 536
    Top = 320
    object qryPowerpowerid: TAutoIncField
      FieldName = 'powerid'
      ReadOnly = True
    end
    object qryPowermodulename: TStringField
      FieldName = 'modulename'
      ReadOnly = True
    end
    object qryPowermodulepower: TIntegerField
      FieldName = 'modulepower'
      OnChange = qryPowermodulepowerChange
    end
    object qryPowers_insert: TSmallintField
      FieldName = 's_insert'
      OnChange = qryPowermodulepowerChange
    end
    object qryPowers_modify: TSmallintField
      FieldName = 's_modify'
      OnChange = qryPowermodulepowerChange
    end
    object qryPowers_delete: TSmallintField
      FieldName = 's_delete'
      OnChange = qryPowermodulepowerChange
    end
    object qryPowers_locate: TSmallintField
      FieldName = 's_locate'
      OnChange = qryPowermodulepowerChange
    end
    object qryPowers_print: TSmallintField
      FieldName = 's_print'
      OnChange = qryPowermodulepowerChange
    end
    object qryPowers_approve: TSmallintField
      FieldName = 's_approve'
      OnChange = qryPowermodulepowerChange
    end
  end
  object dsPower: TDataSource
    AutoEdit = False
    DataSet = qryPower
    Left = 536
    Top = 352
  end
  object ImageListModule: TImageList
    Left = 724
    Top = 3
    Bitmap = {
      494C0101030004001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B000000
      00007B7B7B0000000000000000007B7B7B00FFFFFF00000000007B7B7B000000
      00007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F70000000000000000000000000000000000000000000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B00FFFFFF0000000000000000007B7B
      7B0000000000FFFFFF00000000000000000000000000000000000000F7000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      F7000000F7000000F70000000000000000000000000000000000008400000084
      0000008400000000000000840000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B00FFFFFF0000000000000000000000
      00007B7B7B0000000000FFFFFF00000000000000000000000000000000000000
      F7000000F7000000F700000000000000000000000000000000000000F7000000
      F7000000F7000000000000000000000000000000000000840000008400000084
      0000000000000000000000000000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF000000
      00000000000000000000000000007B7B7B00FFFFFF0000000000000000000000
      0000000000007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000F7000000F7000000F70000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000084000000840000008400000000
      0000000000000000000000000000000000000084000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007B7B7B00FFFFFF00000000000000000000000000000000000000
      0000000000000000F7000000F7000010F7000000F7000000F7000000F7000000
      0000000000000000000000000000000000000084000000840000000000000000
      0000000000000000000000000000000000000000000000840000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000F7000000F7000000F7000000F700000000000000
      0000000000000000000000000000000000000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF000000
      000000000000000000007B7B7B00000000007B7B7B0000000000FFFFFF000000
      0000000000007B7B7B00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000F7000000F7000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000000000FFFF
      FF00000000007B7B7B000000000000000000000000007B7B7B0000000000FFFF
      FF00000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000F7000000F7000000F7000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B0000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00000000F7000000F7000000F70000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000000000007B7B
      7B000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      F7000000F7000000F700000000000000000000000000000000000000F7000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00000000000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      0000000000007B7B7B007B7B7B007B7B7B0000000000000000000000F7000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      F7000000F7000000F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      00000000000000000000000000000000000000000000000000000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC1FFFFFFBFF00008828FFFFF1FF0000
      1650CFF3E0FF0000EE6BC7E3C47F0000DE75E3C78E3F00009E79F18F1F1F0000
      9E01F81F3F8F00009E01FC3F7FC700009D59FC3FFFE30000ABABF81FFFF10000
      D7D7F18FFFF800008BECE3C7FFFC00003418C7E3FFFE0000F83FCFF3FFFF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object qryTreePower: TADOQuery
    CacheSize = 1000
    Connection = CommonDM.ConVisa
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'aus_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from s_tree_power'
      'where s_id_aus = :aus_id'
      'order by s_id_act')
    Left = 288
    Top = 288
  end
  object dsTreePower: TDataSource
    AutoEdit = False
    DataSet = qryTreePower
    Left = 288
    Top = 353
  end
  object ImageList1: TImageList
    Left = 836
    Top = 11
    Bitmap = {
      494C0101020004001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F70000000000000000000000000000000000000000000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F7000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      F7000000F7000000F70000000000000000000000000000000000008400000084
      0000008400000000000000840000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      F7000000F7000000F700000000000000000000000000000000000000F7000000
      F7000000F7000000000000000000000000000000000000840000008400000084
      0000000000000000000000000000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F7000000F70000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000084000000840000008400000000
      0000000000000000000000000000000000000084000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000F7000000F7000010F7000000F7000000F7000000F7000000
      0000000000000000000000000000000000000084000000840000000000000000
      0000000000000000000000000000000000000000000000840000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000F7000000F7000000F7000000F700000000000000
      0000000000000000000000000000000000000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000F7000000F7000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000F7000000F7000000F7000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F7000000F70000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      F7000000F7000000F700000000000000000000000000000000000000F7000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F7000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      F7000000F7000000F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFBFF00000000FFFFF1FF00000000
      CFF3E0FF00000000C7E3C47F00000000E3C78E3F00000000F18F1F1F00000000
      F81F3F8F00000000FC3F7FC700000000FC3FFFE300000000F81FFFF100000000
      F18FFFF800000000E3C7FFFC00000000C7E3FFFE00000000CFF3FFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object sp_reset_password: TADOStoredProc
    Connection = CommonDM.ConVisa
    ProcedureName = 'usp_reset_password'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@aus_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@userid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 544
    Top = 218
  end
end
