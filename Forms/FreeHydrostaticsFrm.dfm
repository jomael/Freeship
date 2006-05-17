object FreeHydrostaticsForm: TFreeHydrostaticsForm
  Left = 730
  Top = 113
  BorderStyle = bsDialog
  Caption = 'Hydrostatics'
  ClientHeight = 165
  ClientWidth = 219
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 219
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TSpeedButton
      Left = 140
      Top = 1
      Width = 75
      Height = 20
      Caption = 'Close'
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000204E0000204E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333344333333333333342243333333333342222433333333342222224333
        33334222A22224333333222A3A2224333333A2A333A2224333333A33333A2224
        333333333333A2224333333333333A2224333333333333A2224333333333333A
        2224333333333333A2243333333333333A2233333333333333A3}
      OnClick = Button1Click
    end
    object Button2: TSpeedButton
      Left = 64
      Top = 1
      Width = 75
      Height = 20
      Hint = 'Start the calculation.'
      Caption = 'Calculate'
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        7333330888888888033333080808999803333308888888880333330808080808
        0333330888888888033333080808080803333308888888880333330808080808
        0333330888888888033333080000000803333308000E0E080333330800000008
        0333330888888888033333088888888803333370000000007333}
      OnClick = Button2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 22
    Width = 219
    Height = 143
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 10
    TabOrder = 1
    object Panel: TPanel
      Left = 11
      Top = 11
      Width = 197
      Height = 121
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      object Label2: TLabel
        Left = 3
        Top = 42
        Width = 43
        Height = 13
        Caption = 'End draft'
      end
      object Label3: TLabel
        Left = 3
        Top = 70
        Width = 46
        Height = 13
        Caption = 'Draft step'
      end
      object Label4: TLabel
        Left = 3
        Top = 98
        Width = 20
        Height = 13
        Caption = 'Trim'
      end
      object Label9: TLabel
        Left = 157
        Top = 98
        Width = 32
        Height = 13
        Caption = 'Label9'
      end
      object _Label10: TLabel
        Left = 157
        Top = 70
        Width = 44
        Height = 13
        Caption = '_Label10'
      end
      object _Label11: TLabel
        Left = 157
        Top = 42
        Width = 44
        Height = 13
        Caption = '_Label11'
      end
      object Label1: TLabel
        Left = 3
        Top = 14
        Width = 49
        Height = 13
        Caption = 'Start draft '
      end
      object _Label5: TLabel
        Left = 157
        Top = 14
        Width = 32
        Height = 13
        Caption = 'Label9'
      end
      object Edit2: TEdit
        Left = 77
        Top = 34
        Width = 75
        Height = 21
        TabOrder = 1
        Text = '1.0'
        OnExit = Edit2Exit
        OnKeyPress = Edit1KeyPress
      end
      object Edit3: TEdit
        Left = 77
        Top = 62
        Width = 75
        Height = 21
        TabOrder = 2
        Text = '1.0'
        OnExit = Edit3Exit
        OnKeyPress = Edit1KeyPress
      end
      object Edit4: TEdit
        Left = 77
        Top = 90
        Width = 75
        Height = 21
        TabOrder = 3
        Text = '0.0'
        OnExit = Edit4Exit
        OnKeyPress = Edit1KeyPress
      end
      object Edit1: TEdit
        Left = 77
        Top = 6
        Width = 75
        Height = 21
        TabOrder = 0
        Text = '0.5'
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
    end
  end
end
