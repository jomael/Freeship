object FreePreferencesDialog: TFreePreferencesDialog
  Left = 526
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Preferences.'
  ClientHeight = 388
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 260
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
  object SpeedButton2: TSpeedButton
    Left = 322
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
  object Panel1: TPanel
    Left = 0
    Top = 22
    Width = 383
    Height = 366
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 10
    TabOrder = 0
    object Panel: TPanel
      Left = 11
      Top = 11
      Width = 361
      Height = 344
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 3
        Top = 82
        Width = 101
        Height = 13
        Caption = 'Viewport background'
      end
      object Label2: TLabel
        Left = 3
        Top = 162
        Width = 65
        Height = 13
        Caption = 'New surfaces'
      end
      object Label3: TLabel
        Left = 3
        Top = 182
        Width = 97
        Height = 13
        Caption = 'Submerged surfaces'
      end
      object Label4: TLabel
        Left = 3
        Top = 282
        Width = 104
        Height = 13
        Caption = 'Regular control edges'
      end
      object Label5: TLabel
        Left = 3
        Top = 302
        Width = 106
        Height = 13
        Caption = 'Crease edges (control)'
      end
      object Label6: TLabel
        Left = 3
        Top = 322
        Width = 105
        Height = 13
        Caption = 'Crease edges (interior)'
      end
      object Label7: TLabel
        Left = 183
        Top = 42
        Width = 103
        Height = 13
        Caption = 'Regular control points'
      end
      object Label8: TLabel
        Left = 183
        Top = 62
        Width = 64
        Height = 13
        Caption = 'Crease points'
      end
      object Label9: TLabel
        Left = 183
        Top = 82
        Width = 62
        Height = 13
        Caption = 'Corner points'
      end
      object Label10: TLabel
        Left = 183
        Top = 102
        Width = 51
        Height = 13
        Caption = 'Dart points'
      end
      object Label11: TLabel
        Left = 183
        Top = 162
        Width = 69
        Height = 13
        Caption = 'Selected items'
      end
      object Label12: TLabel
        Left = 3
        Top = 102
        Width = 61
        Height = 13
        Caption = 'Viewport grid'
      end
      object Label13: TLabel
        Left = 3
        Top = 122
        Width = 40
        Height = 13
        Caption = 'Grid font'
      end
      object Label14: TLabel
        Left = 183
        Top = 222
        Width = 38
        Height = 13
        Caption = 'Stations'
      end
      object Label15: TLabel
        Left = 183
        Top = 242
        Width = 42
        Height = 13
        Caption = 'Buttocks'
      end
      object Label16: TLabel
        Left = 183
        Top = 262
        Width = 50
        Height = 13
        Caption = 'Waterlines'
      end
      object Label17: TLabel
        Left = 3
        Top = 62
        Width = 77
        Height = 13
        Caption = 'Controlpoint size'
      end
      object Label18: TLabel
        Left = 3
        Top = 202
        Width = 76
        Height = 13
        Caption = 'Surface normals'
      end
      object Label19: TLabel
        Left = 183
        Top = 282
        Width = 47
        Height = 13
        Caption = 'Diagonals'
      end
      object Label20: TLabel
        Left = 183
        Top = 122
        Width = 55
        Height = 13
        Caption = 'Leak points'
      end
      object Label21: TLabel
        Left = 183
        Top = 202
        Width = 38
        Height = 13
        Caption = 'Markers'
      end
      object Label22: TLabel
        Left = 183
        Top = 182
        Width = 71
        Height = 13
        Caption = 'Curvature plots'
      end
      object Label23: TLabel
        Left = 3
        Top = 242
        Width = 68
        Height = 13
        Caption = 'Control curves'
      end
      object Label24: TLabel
        Left = 183
        Top = 302
        Width = 105
        Height = 13
        Caption = 'Hydrostatics font color'
      end
      object Label25: TLabel
        Left = 183
        Top = 322
        Width = 87
        Height = 13
        Caption = 'Zebra stripes color'
      end
      object Label26: TLabel
        Left = 3
        Top = 20
        Width = 48
        Height = 13
        Caption = 'Language'
      end
      object Label27: TLabel
        Left = 3
        Top = 42
        Width = 113
        Height = 13
        Caption = 'Max. undo memory (Mb)'
      end
      object Panel4: TPanel
        Left = 130
        Top = 77
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 3
        OnClick = Panel4Click
      end
      object Panel2: TPanel
        Left = 130
        Top = 157
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 6
        OnClick = Panel2Click
      end
      object Panel5: TPanel
        Left = 130
        Top = 177
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 7
        OnClick = Panel5Click
      end
      object Panel6: TPanel
        Left = 130
        Top = 277
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 9
        OnClick = Panel6Click
      end
      object Panel7: TPanel
        Left = 130
        Top = 297
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 10
        OnClick = Panel7Click
      end
      object Panel8: TPanel
        Left = 130
        Top = 317
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 11
        OnClick = Panel8Click
      end
      object Panel9: TPanel
        Left = 302
        Top = 35
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 12
        OnClick = Panel9Click
      end
      object Panel10: TPanel
        Left = 302
        Top = 57
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 13
        OnClick = Panel10Click
      end
      object Panel11: TPanel
        Left = 302
        Top = 77
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 14
        OnClick = Panel11Click
      end
      object Panel12: TPanel
        Left = 302
        Top = 97
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 15
        OnClick = Panel12Click
      end
      object Panel13: TPanel
        Left = 302
        Top = 157
        Width = 45
        Height = 20
        BevelOuter = bvLowered
        TabOrder = 17
        OnClick = Panel13Click
      end
      object Panel14: TPanel
        Left = 130
        Top = 97
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 4
        OnClick = Panel14Click
      end
      object Panel15: TPanel
        Left = 130
        Top = 117
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 5
        OnClick = Panel15Click
      end
      object Panel16: TPanel
        Left = 302
        Top = 217
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 20
        OnClick = Panel16Click
      end
      object Panel17: TPanel
        Left = 302
        Top = 237
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 21
        OnClick = Panel17Click
      end
      object Panel18: TPanel
        Left = 302
        Top = 257
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 22
        OnClick = Panel18Click
      end
      object TrackBar1: TTrackBar
        Left = 126
        Top = 55
        Width = 55
        Height = 21
        Max = 3
        Min = 1
        PageSize = 1
        Position = 2
        TabOrder = 2
        ThumbLength = 12
      end
      object Panel19: TPanel
        Left = 130
        Top = 197
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 8
        OnClick = Panel19Click
      end
      object Panel20: TPanel
        Left = 302
        Top = 277
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 23
        OnClick = Panel20Click
      end
      object Panel21: TPanel
        Left = 302
        Top = 117
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 16
        OnClick = Panel21Click
      end
      object Panel22: TPanel
        Left = 302
        Top = 197
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 19
        OnClick = Panel22Click
      end
      object Panel23: TPanel
        Left = 302
        Top = 177
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 18
        OnClick = Panel23Click
      end
      object Panel24: TPanel
        Left = 130
        Top = 237
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 24
        OnClick = Panel24Click
      end
      object Panel25: TPanel
        Left = 302
        Top = 297
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 25
        OnClick = Panel25Click
      end
      object Panel26: TPanel
        Left = 302
        Top = 317
        Width = 45
        Height = 18
        BevelOuter = bvLowered
        TabOrder = 26
        OnClick = Panel26Click
      end
      object ComboBox1: TComboBox
        Left = 72
        Top = 12
        Width = 101
        Height = 21
        ItemHeight = 13
        Sorted = True
        TabOrder = 0
        Text = 'ComboBox1'
      end
      object FreeNumInput1: TFreeNumInput
        Left = 130
        Top = 36
        Width = 45
        Height = 18
        Alignment = taRightJustify
        Decimals = 0
        Digits = 12
        Max = 25.000000000000000000
        DataType = dtInteger
        OutOfRangeMessage = False
        TabOnEnterKey = False
        Validate = True
        AutoSize = False
        TabOrder = 1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn2: TSpeedButton
      Left = 314
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
      OnClick = BitBtn2Click
    end
    object BitBtn1: TSpeedButton
      Left = 249
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
      OnClick = BitBtn1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 20
      Top = 1
      Width = 65
      Height = 20
      Caption = 'Reset'
      OnClick = SpeedButton3Click
    end
  end
  object ColorDialog: TColorDialog
    Options = [cdFullOpen]
    Left = 199
    Top = 46
  end
end
