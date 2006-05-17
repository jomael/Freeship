object FreeSeakeepingDialog: TFreeSeakeepingDialog
  Left = 478
  Top = 109
  Width = 514
  Height = 539
  Caption = 'Seakeeping analysis.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object OKbutton: TSpeedButton
      Left = 330
      Top = 1
      Width = 65
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
      OnClick = OKbuttonClick
    end
    object CancelButton: TSpeedButton
      Left = 395
      Top = 1
      Width = 65
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
      OnClick = CancelButtonClick
    end
    object BtnExecute: TButton
      Left = 8
      Top = 1
      Width = 75
      Height = 19
      Caption = 'Calculate'
      TabOrder = 0
      OnClick = BtnExecuteClick
    end
    object BtnCancel: TButton
      Left = 84
      Top = 1
      Width = 75
      Height = 19
      Caption = 'Abort'
      TabOrder = 1
      OnClick = BtnCancelClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 22
    Width = 506
    Height = 477
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 504
      Height = 475
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Settings'
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 496
          Height = 135
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 14
            Width = 23
            Height = 13
            Caption = 'Draft'
          end
          object Label5: TLabel
            Left = 8
            Top = 38
            Width = 35
            Height = 13
            Caption = 'Volume'
          end
          object _Label18: TLabel
            Left = 212
            Top = 14
            Width = 14
            Height = 13
            Caption = '[m]'
          end
          object _Label20: TLabel
            Left = 212
            Top = 38
            Width = 25
            Height = 13
            Caption = '[m/3]'
          end
          object Label1: TLabel
            Left = 8
            Top = 62
            Width = 127
            Height = 13
            Caption = 'Pressure points per section'
          end
          object Edit3: TFreeNumInput
            Left = 148
            Top = 6
            Width = 61
            Height = 21
            Alignment = taRightJustify
            Decimals = 3
            Digits = 12
            Max = 10000000000.000000000000000000
            OutOfRangeMessage = False
            TabOnEnterKey = False
            Validate = True
            OnAfterSetValue = Edit3AfterSetValue
            TabOrder = 0
          end
          object Edit5: TFreeNumInput
            Left = 148
            Top = 30
            Width = 61
            Height = 21
            Alignment = taRightJustify
            Decimals = 3
            Digits = 12
            OutOfRangeMessage = False
            TabOnEnterKey = False
            Validate = False
            OnAfterSetValue = Edit5AfterSetValue
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object CheckBox1: TCheckBox
            Left = 8
            Top = 84
            Width = 145
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Response functions'
            TabOrder = 2
          end
          object CheckBox2: TCheckBox
            Left = 8
            Top = 104
            Width = 145
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Natural seaways'
            TabOrder = 3
          end
          object Edit1: TFreeNumInput
            Left = 148
            Top = 54
            Width = 61
            Height = 21
            Alignment = taRightJustify
            Decimals = 0
            Digits = 12
            DataType = dtInteger
            OutOfRangeMessage = False
            TabOnEnterKey = False
            Validate = False
            OnAfterSetValue = Edit5AfterSetValue
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 135
          Width = 496
          Height = 312
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 1
          object ScrollBar1: TScrollBar
            Left = 1
            Top = 298
            Width = 494
            Height = 13
            Align = alBottom
            Max = 180
            Min = -180
            PageSize = 0
            Position = 20
            TabOrder = 0
          end
          object ScrollBar2: TScrollBar
            Left = 482
            Top = 1
            Width = 13
            Height = 297
            Align = alRight
            Kind = sbVertical
            Max = 180
            Min = -180
            PageSize = 0
            Position = 20
            TabOrder = 1
          end
          object Viewport: TFreeViewport
            Left = 1
            Top = 1
            Width = 481
            Height = 297
            Angle = 20.000000000000000000
            Align = alClient
            BackgroundImage.Alpha = 255
            BackgroundImage.Tolerance = 5
            BackgroundImage.Transparent = False
            BackgroundImage.TransparentColor = clBlack
            BackgroundImage.Visible = True
            CameraType = ftStandard
            Color = clBlack
            DoubleBuffer = True
            Elevation = 20.000000000000000000
            HorScrollbar = ScrollBar1
            VertScrollbar = ScrollBar2
            ViewType = fvPerspective
            ViewportMode = vmWireFrame
            OnRedraw = ViewportRedraw
            OnRequestExtents = ViewportRequestExtents
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Environment'
        ImageIndex = 2
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 496
          Height = 447
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Label6: TLabel
            Left = 12
            Top = 16
            Width = 129
            Height = 13
            Caption = 'Gravitational acceleration g'
          end
          object Label7: TLabel
            Left = 12
            Top = 64
            Width = 65
            Height = 13
            Caption = 'Water density'
          end
          object _Label8: TLabel
            Left = 230
            Top = 64
            Width = 28
            Height = 13
            Caption = '[t/m3]'
          end
          object _Label9: TLabel
            Left = 230
            Top = 16
            Width = 30
            Height = 13
            Caption = '[m/s2]'
          end
          object Label10: TLabel
            Left = 12
            Top = 88
            Width = 120
            Height = 13
            Caption = 'Water kinematic viscosity'
          end
          object _Label11: TLabel
            Left = 230
            Top = 88
            Width = 61
            Height = 13
            Caption = '*10-6  [m2/s]'
          end
          object Label12: TLabel
            Left = 12
            Top = 112
            Width = 59
            Height = 13
            Caption = 'Water depth'
          end
          object _Label13: TLabel
            Left = 230
            Top = 112
            Width = 14
            Height = 13
            Caption = '[m]'
          end
          object Edit6: TFreeNumInput
            Left = 150
            Top = 8
            Width = 78
            Height = 21
            Alignment = taRightJustify
            Decimals = 3
            Digits = 12
            Max = 9.900000000000000000
            Min = 9.600000000000000000
            OutOfRangeMessage = False
            TabOnEnterKey = False
            Value = 9.810000000000000000
            Validate = True
            OnAfterSetValue = Edit6AfterSetValue
            TabOrder = 0
          end
          object Edit7: TFreeNumInput
            Left = 150
            Top = 56
            Width = 78
            Height = 21
            Alignment = taRightJustify
            Decimals = 3
            Digits = 12
            Max = 1.030000000000000000
            Min = 0.995000000000000000
            OutOfRangeMessage = False
            TabOnEnterKey = False
            Value = 1.000000000000000000
            Validate = False
            OnAfterSetValue = Edit7AfterSetValue
            TabOrder = 1
          end
          object Edit8: TFreeNumInput
            Left = 152
            Top = 80
            Width = 78
            Height = 21
            Alignment = taRightJustify
            Decimals = 4
            Digits = 12
            Max = 1.310000000000000000
            Min = 0.800000000000000000
            OutOfRangeMessage = False
            TabOnEnterKey = False
            Value = 0.800000000000000000
            Validate = True
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object Edit9: TFreeNumInput
            Left = 150
            Top = 104
            Width = 78
            Height = 21
            Alignment = taRightJustify
            Decimals = 2
            Digits = 12
            Max = 1000000.000000000000000000
            OutOfRangeMessage = False
            TabOnEnterKey = False
            Value = 100000.000000000000000000
            Validate = True
            OnAfterSetValue = Edit9AfterSetValue
            TabOrder = 3
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Waves'
        ImageIndex = 3
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 496
          Height = 447
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 8
            Top = 20
            Width = 153
            Height = 191
            Caption = 'Encounter angles.'
            TabOrder = 0
            object AngleBox: TListBox
              Left = 8
              Top = 44
              Width = 65
              Height = 137
              ItemHeight = 13
              TabOrder = 0
              OnClick = AngleBoxClick
            end
            object FreeNumInput5: TFreeNumInput
              Left = 8
              Top = 16
              Width = 65
              Height = 21
              Alignment = taRightJustify
              Decimals = 0
              Digits = 12
              Max = 90.000000000000000000
              Min = -90.000000000000000000
              DataType = dtInteger
              OutOfRangeMessage = False
              TabOnEnterKey = False
              Validate = True
              TabOrder = 1
            end
            object Button3: TButton
              Left = 76
              Top = 16
              Width = 70
              Height = 21
              Caption = 'Add'
              TabOrder = 2
              OnClick = Button3Click
            end
            object Button4: TButton
              Left = 76
              Top = 38
              Width = 70
              Height = 21
              Caption = 'Delete'
              TabOrder = 3
              OnClick = Button4Click
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Output'
        ImageIndex = 3
        object Memo: TMemo
          Left = 0
          Top = 0
          Width = 496
          Height = 447
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 499
    Width = 506
    Height = 13
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 557
    Top = 55
    object SaveFile: TAction
      Caption = 'Save'
    end
  end
end
