object FreeKeelWizardDialog: TFreeKeelWizardDialog
  Left = 240
  Top = 116
  BorderStyle = bsDialog
  Caption = 'Keel and rudder wizard'
  ClientHeight = 488
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 22
    Width = 720
    Height = 453
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 10
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 93
      Height = 13
      Caption = 'Type of appendage'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 73
      Height = 13
      Caption = 'Planform shape'
    end
    object Label3: TLabel
      Left = 8
      Top = 100
      Width = 85
      Height = 13
      Caption = 'Root chord length'
    end
    object Label4: TLabel
      Left = 8
      Top = 126
      Width = 77
      Height = 13
      Caption = 'Tip chord length'
    end
    object Label5: TLabel
      Left = 8
      Top = 178
      Width = 25
      Height = 13
      Caption = 'Span'
    end
    object Label6: TLabel
      Left = 8
      Top = 152
      Width = 39
      Height = 13
      Caption = 'Delta tip'
    end
    object Label17: TLabel
      Left = 8
      Top = 74
      Width = 62
      Height = 13
      Caption = 'Wing section'
    end
    object Label26: TLabel
      Left = 8
      Top = 204
      Width = 85
      Height = 13
      Caption = 'No. vertical points'
    end
    object Label27: TLabel
      Left = 8
      Top = 230
      Width = 93
      Height = 13
      Caption = 'No horizontal points'
    end
    object Label28: TLabel
      Left = 8
      Top = 252
      Width = 97
      Height = 13
      Caption = 'Vertical compression'
    end
    object ComboBox: TComboBox
      Left = 120
      Top = 14
      Width = 125
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Keel'
      Items.Strings = (
        'Keel'
        'Rudder')
    end
    object ComboBox1: TComboBox
      Left = 120
      Top = 40
      Width = 125
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Trapezoidal'
      OnClick = ComboBox1Click
      Items.Strings = (
        'Trapezoidal'
        'Semi ellipse'
        'Quarter ellipse'
        'Straight quarter chord line')
    end
    object Input1: TFreeNumInput
      Left = 120
      Top = 92
      Width = 85
      Height = 21
      Alignment = taRightJustify
      Decimals = 3
      Digits = 12
      OutOfRangeMessage = False
      TabOnEnterKey = False
      Value = 2.000000000000000000
      Validate = False
      OnAfterSetValue = Input1AfterSetValue
      TabOrder = 3
    end
    object Input2: TFreeNumInput
      Left = 120
      Top = 118
      Width = 85
      Height = 21
      Alignment = taRightJustify
      Decimals = 3
      Digits = 12
      OutOfRangeMessage = False
      TabOnEnterKey = False
      Value = 1.000000000000000000
      Validate = False
      OnAfterSetValue = Input1AfterSetValue
      TabOrder = 4
    end
    object Input3: TFreeNumInput
      Left = 120
      Top = 170
      Width = 85
      Height = 21
      Alignment = taRightJustify
      Decimals = 3
      Digits = 12
      OutOfRangeMessage = False
      TabOnEnterKey = False
      Value = 1.000000000000000000
      Validate = False
      OnAfterSetValue = Input1AfterSetValue
      TabOrder = 6
    end
    object Input4: TFreeNumInput
      Left = 120
      Top = 144
      Width = 85
      Height = 21
      Alignment = taRightJustify
      Decimals = 3
      Digits = 12
      OutOfRangeMessage = False
      TabOnEnterKey = False
      Value = 0.100000000000000000
      Validate = False
      OnAfterSetValue = Input1AfterSetValue
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 276
      Width = 233
      Height = 167
      Caption = 'Properties'
      TabOrder = 7
      object Label7: TLabel
        Left = 12
        Top = 68
        Width = 65
        Height = 13
        Caption = 'Planform area'
      end
      object _Label8: TLabel
        Left = 125
        Top = 68
        Width = 38
        Height = 13
        Caption = '_Label8'
      end
      object Label9: TLabel
        Left = 12
        Top = 84
        Width = 67
        Height = 13
        Caption = 'Planform COG'
      end
      object _Label10: TLabel
        Left = 125
        Top = 84
        Width = 44
        Height = 13
        Caption = '_Label10'
      end
      object Label11: TLabel
        Left = 12
        Top = 100
        Width = 89
        Height = 13
        Caption = 'Mean chord length'
      end
      object _Label12: TLabel
        Left = 125
        Top = 100
        Width = 38
        Height = 13
        Caption = 'Label10'
      end
      object Label13: TLabel
        Left = 12
        Top = 132
        Width = 106
        Height = 13
        Caption = 'Geometric aspect ratio'
      end
      object _Label14: TLabel
        Left = 125
        Top = 132
        Width = 38
        Height = 13
        Caption = 'Label10'
      end
      object Label15: TLabel
        Left = 12
        Top = 148
        Width = 100
        Height = 13
        Caption = 'Effective aspect ratio'
      end
      object _Label16: TLabel
        Left = 125
        Top = 148
        Width = 38
        Height = 13
        Caption = 'Label10'
      end
      object Label18: TLabel
        Left = 12
        Top = 20
        Width = 35
        Height = 13
        Caption = 'Volume'
      end
      object _Label19: TLabel
        Left = 125
        Top = 20
        Width = 32
        Height = 13
        Caption = 'Label8'
      end
      object Label20: TLabel
        Left = 12
        Top = 36
        Width = 61
        Height = 13
        Caption = 'Volume COG'
      end
      object _Label21: TLabel
        Left = 125
        Top = 36
        Width = 32
        Height = 13
        Caption = 'Label8'
      end
      object Label22: TLabel
        Left = 12
        Top = 52
        Width = 59
        Height = 13
        Caption = 'Wetted area'
      end
      object _Label23: TLabel
        Left = 125
        Top = 52
        Width = 32
        Height = 13
        Caption = 'Label8'
      end
      object Label24: TLabel
        Left = 12
        Top = 116
        Width = 49
        Height = 13
        Caption = 'Thickness'
      end
      object _Label25: TLabel
        Left = 125
        Top = 116
        Width = 38
        Height = 13
        Caption = 'Label10'
      end
    end
    object _ComboBox2: TComboBox
      Left = 120
      Top = 66
      Width = 125
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = '63-006'
      OnClick = ComboBox1Click
      Items.Strings = (
        '63-006'
        '63-009'
        '63-010'
        '63-012'
        '63-015'
        '63-018'
        '63-021'
        '64-006'
        '64-008'
        '64-009'
        '64-010'
        '64-012'
        '64-015'
        '64-018'
        '64-021'
        '65-006'
        '65-008'
        '65-009'
        '65-010'
        '65-012'
        '65-015'
        '65-018'
        '65-021'
        '66-009'
        '66-010')
    end
    object Input5: TFreeNumInput
      Left = 120
      Top = 196
      Width = 85
      Height = 21
      Alignment = taRightJustify
      Decimals = 0
      Digits = 12
      DataType = dtInteger
      OutOfRangeMessage = False
      TabOnEnterKey = False
      Value = 6.000000000000000000
      Validate = False
      OnAfterSetValue = Input5AfterSetValue
      TabOrder = 8
    end
    object Input6: TFreeNumInput
      Left = 120
      Top = 222
      Width = 85
      Height = 21
      Alignment = taRightJustify
      Decimals = 0
      Digits = 12
      DataType = dtInteger
      OutOfRangeMessage = False
      TabOnEnterKey = False
      Value = 15.000000000000000000
      Validate = False
      OnAfterSetValue = Input6AfterSetValue
      TabOrder = 9
    end
    object TrackBar1: TTrackBar
      Left = 114
      Top = 246
      Width = 130
      Height = 23
      Max = 20
      TabOrder = 10
      ThumbLength = 15
      OnChange = TrackBar1Change
    end
    object PageControl: TPageControl
      Left = 254
      Top = 11
      Width = 455
      Height = 431
      ActivePage = TabSheet1
      Align = alRight
      TabOrder = 11
      object TabSheet1: TTabSheet
        Caption = '3D view'
        object Viewport: TFreeViewport
          Left = 0
          Top = 0
          Width = 447
          Height = 403
          Angle = 20.000000000000000000
          Align = alClient
          BackgroundImage.Alpha = 255
          BackgroundImage.Tolerance = 5
          BackgroundImage.Transparent = False
          BackgroundImage.TransparentColor = clBlack
          BackgroundImage.Visible = True
          BevelOuter = bvNone
          BorderStyle = bsSingle
          CameraType = ftFarTele
          Color = clWhite
          DoubleBuffer = True
          Elevation = 20.000000000000000000
          ViewType = fvPerspective
          ViewportMode = vmWireFrame
          OnRedraw = ViewportRedraw
          OnRequestExtents = ViewportRequestExtents
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Lift and drag'
        ImageIndex = 1
        object Chart: TChart
          Left = 0
          Top = 0
          Width = 447
          Height = 403
          AnimatedZoom = True
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          MarginRight = 4
          Title.AdjustFrame = False
          Title.Color = clBtnFace
          Title.Text.Strings = (
            'Chart')
          Title.Visible = False
          BottomAxis.MinorTickCount = 4
          BottomAxis.MinorTickLength = 3
          BottomAxis.Title.Caption = 'Angle of attack [degr]'
          Chart3DPercent = 20
          LeftAxis.AxisValuesFormat = '#0.000'
          LeftAxis.LabelStyle = talValue
          LeftAxis.MinorTickCount = 1
          LeftAxis.MinorTickLength = 3
          LeftAxis.Title.Caption = 'Resistance [N]'
          LeftAxis.TitleSize = 4
          Legend.Alignment = laTop
          Legend.ColorWidth = 50
          Legend.TextStyle = ltsPlain
          Legend.TopPos = 45
          RightAxis.AxisValuesFormat = '#,##0.#'
          RightAxis.Grid.Visible = False
          RightAxis.MinorTickCount = 1
          RightAxis.Title.Angle = 90
          RightAxis.Title.Caption = 'Power[KW}'
          RightAxis.TitleSize = 4
          View3D = False
          View3DOptions.Elevation = 360
          View3DOptions.HorizOffset = 16
          View3DOptions.Orthogonal = False
          View3DOptions.Rotation = 338
          View3DOptions.Zoom = 103
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Series1: TLineSeries
            Marks.ArrowLength = 8
            Marks.Style = smsValue
            Marks.Visible = False
            SeriesColor = 11162880
            Title = 'Lift'
            LinePen.Width = 2
            Pointer.HorizSize = 2
            Pointer.InflateMargins = False
            Pointer.Style = psRectangle
            Pointer.VertSize = 2
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
          end
          object Series2: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clGreen
            Title = 'Drag'
            LinePen.Width = 2
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TSpeedButton
      Left = 590
      Top = 1
      Width = 60
      Height = 19
      Caption = 'OK'
      Flat = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TSpeedButton
      Left = 650
      Top = 1
      Width = 60
      Height = 19
      Caption = 'Cancel'
      Flat = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = BitBtn2Click
    end
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 1
      Width = 65
      Height = 19
      Caption = 'Send'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 84
      Top = 1
      Width = 65
      Height = 19
      Caption = 'Save as part'
      Flat = True
      OnClick = SpeedButton2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 475
    Width = 720
    Height = 13
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
  end
end
