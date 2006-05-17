object FREEProjectSettingsDialog: TFREEProjectSettingsDialog
  Left = 473
  Top = 109
  BorderStyle = bsDialog
  Caption = 'Project settings.'
  ClientHeight = 416
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 22
    Width = 473
    Height = 394
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 8
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 9
      Top = 9
      Width = 455
      Height = 376
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'General'
        object Panel: TPanel
          Left = 0
          Top = 0
          Width = 447
          Height = 348
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Label1: TLabel
            Left = 10
            Top = 18
            Width = 62
            Height = 13
            Caption = 'Project name'
          end
          object Label7: TLabel
            Left = 10
            Top = 44
            Width = 42
            Height = 13
            Caption = 'Designer'
          end
          object Label8: TLabel
            Left = 10
            Top = 122
            Width = 24
            Height = 13
            Caption = 'Units'
          end
          object Label15: TLabel
            Left = 10
            Top = 70
            Width = 44
            Height = 13
            Caption = 'Comment'
          end
          object Label16: TLabel
            Left = 10
            Top = 96
            Width = 69
            Height = 13
            Caption = 'File created by'
          end
          object Edit1: TEdit
            Left = 125
            Top = 10
            Width = 310
            Height = 21
            TabOrder = 0
          end
          object Edit7: TEdit
            Left = 125
            Top = 36
            Width = 310
            Height = 21
            TabOrder = 1
          end
          object CheckBox1: TCheckBox
            Left = 8
            Top = 146
            Width = 160
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Shade underwater'
            TabOrder = 5
          end
          object Panel4: TPanel
            Left = 187
            Top = 140
            Width = 45
            Height = 21
            BevelOuter = bvLowered
            TabOrder = 6
            OnClick = Panel4Click
          end
          object Unitbox: TComboBox
            Left = 125
            Top = 114
            Width = 100
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = 'Metric'
            OnClick = UnitboxClick
            Items.Strings = (
              'Metric'
              'Imperial')
          end
          object Edit9: TEdit
            Left = 125
            Top = 62
            Width = 310
            Height = 21
            TabOrder = 2
          end
          object Edit10: TEdit
            Left = 125
            Top = 88
            Width = 310
            Height = 21
            TabOrder = 3
          end
          object CheckBox4: TCheckBox
            Left = 8
            Top = 170
            Width = 160
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Save preview image'
            TabOrder = 7
          end
          object CheckBox10: TCheckBox
            Left = 8
            Top = 194
            Width = 160
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Simplify intersections'
            TabOrder = 8
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Main dimensions'
        ImageIndex = 2
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 447
          Height = 348
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Label2: TLabel
            Left = 10
            Top = 18
            Width = 36
            Height = 13
            Caption = 'Length '
          end
          object Label9: TLabel
            Left = 205
            Top = 18
            Width = 32
            Height = 13
            Caption = 'Label9'
          end
          object Label10: TLabel
            Left = 205
            Top = 44
            Width = 38
            Height = 13
            Caption = 'Label10'
          end
          object Label3: TLabel
            Left = 10
            Top = 44
            Width = 27
            Height = 13
            Caption = 'Beam'
          end
          object Label4: TLabel
            Left = 10
            Top = 70
            Width = 23
            Height = 13
            Caption = 'Draft'
          end
          object Label11: TLabel
            Left = 205
            Top = 70
            Width = 38
            Height = 13
            Caption = 'Label11'
          end
          object Label13: TLabel
            Left = 10
            Top = 96
            Width = 76
            Height = 13
            Caption = 'Midship location'
          end
          object Label14: TLabel
            Left = 205
            Top = 96
            Width = 38
            Height = 13
            Caption = 'Label14'
          end
          object Edit2: TEdit
            Left = 125
            Top = 10
            Width = 75
            Height = 21
            TabOrder = 0
            OnExit = Edit2Exit
            OnKeyPress = Edit2KeyPress
          end
          object Edit3: TEdit
            Left = 125
            Top = 36
            Width = 75
            Height = 21
            TabOrder = 1
            OnExit = EditExit
            OnKeyPress = Edit3KeyPress
          end
          object Edit4: TEdit
            Left = 125
            Top = 62
            Width = 75
            Height = 21
            TabOrder = 2
            OnExit = Edit4Exit
            OnKeyPress = Edit4KeyPress
          end
          object Edit8: TEdit
            Left = 125
            Top = 88
            Width = 75
            Height = 21
            TabOrder = 3
            OnExit = Edit8Exit
            OnKeyPress = Edit8KeyPress
          end
          object CheckBox2: TCheckBox
            Left = 252
            Top = 94
            Width = 150
            Height = 17
            Caption = 'Default at 0.5*L'
            TabOrder = 4
            OnClick = CheckBox2Click
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Hydrostatics'
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 447
          Height = 348
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Label5: TLabel
            Left = 10
            Top = 18
            Width = 65
            Height = 13
            Caption = 'Water density'
          end
          object Label12: TLabel
            Left = 205
            Top = 18
            Width = 38
            Height = 13
            Caption = 'Label12'
          end
          object Label6: TLabel
            Left = 10
            Top = 44
            Width = 107
            Height = 13
            Caption = 'Appendage coefficient'
          end
          object Label17: TLabel
            Left = 10
            Top = 70
            Width = 102
            Height = 13
            Caption = 'Coefficients based on'
          end
          object GroupBox1: TGroupBox
            Left = 12
            Top = 124
            Width = 261
            Height = 163
            Caption = 'Display hydrostatic features. '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label18: TLabel
              Left = 6
              Top = 18
              Width = 238
              Height = 13
              Caption = 'Select which of the following hydrostatic properties'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 6
              Top = 36
              Width = 192
              Height = 13
              Caption = 'you want to have displayed in the model:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object CheckBox5: TCheckBox
              Left = 44
              Top = 58
              Width = 209
              Height = 17
              Caption = 'Displacement and center of buoyancy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object CheckBox6: TCheckBox
              Left = 44
              Top = 76
              Width = 181
              Height = 17
              Caption = 'Curve of sectional areas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox7: TCheckBox
              Left = 44
              Top = 94
              Width = 181
              Height = 17
              Caption = 'Metacentric height'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox8: TCheckBox
              Left = 44
              Top = 112
              Width = 181
              Height = 17
              Caption = 'Longitudinal center of floatation'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object CheckBox9: TCheckBox
              Left = 44
              Top = 130
              Width = 181
              Height = 17
              Caption = 'Lateral area and center of effort'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
          object Edit5: TEdit
            Left = 125
            Top = 10
            Width = 75
            Height = 21
            TabOrder = 1
            OnExit = Edit5Exit
            OnKeyPress = Edit5KeyPress
          end
          object Edit6: TEdit
            Left = 125
            Top = 36
            Width = 75
            Height = 21
            TabOrder = 2
            OnExit = Edit6Exit
            OnKeyPress = Edit6KeyPress
          end
          object ComboBox1: TComboBox
            Left = 125
            Top = 62
            Width = 204
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 3
            Text = 'Dimensions from project settings'
            Items.Strings = (
              'Dimensions from project settings'
              'Actual dimensions of submerged body')
          end
          object CheckBox3: TCheckBox
            Left = 8
            Top = 96
            Width = 129
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Disable surface check'
            TabOrder = 4
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TSpeedButton
      Left = 336
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
      Left = 398
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
  end
  object ColorDialog: TColorDialog
    Options = [cdFullOpen]
    Left = 249
    Top = 24
  end
end
