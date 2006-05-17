object FreeBulkheadForm: TFreeBulkheadForm
  Left = 386
  Top = 107
  AlphaBlend = True
  AlphaBlendValue = 205
  AutoSize = True
  BorderStyle = bsToolWindow
  Caption = 'Bulkhead configuration'
  ClientHeight = 151
  ClientWidth = 191
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 2
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Name'
  end
  object Label2: TLabel
    Left = 2
    Top = 50
    Width = 37
    Height = 13
    Caption = 'Position'
  end
  object Label3: TLabel
    Left = 2
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Inside'
  end
  object Label4: TLabel
    Left = 2
    Top = 94
    Width = 36
    Height = 13
    Caption = 'Outside'
  end
  object Label5: TLabel
    Left = 2
    Top = 116
    Width = 33
    Height = 13
    Caption = 'Bottom'
  end
  object Label6: TLabel
    Left = 2
    Top = 138
    Width = 19
    Height = 13
    Caption = 'Top'
  end
  object Edit1: TEdit
    Left = 46
    Top = 0
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object DistBox: TFreeNumInput
    Left = 46
    Top = 42
    Width = 60
    Height = 21
    Alignment = taRightJustify
    Decimals = 3
    Digits = 12
    OutOfRangeMessage = False
    TabOnEnterKey = False
    Validate = False
    OnAfterSetValue = DistBoxAfterSetValue
    TabOrder = 2
  end
  object Elements: TListBox
    Left = 109
    Top = 24
    Width = 80
    Height = 126
    ItemHeight = 13
    TabOrder = 7
    OnClick = ElementsClick
    OnKeyUp = ElementsKeyUp
  end
  object Edit2: TEdit
    Left = 46
    Top = 64
    Width = 60
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
    OnExit = Edit2Exit
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 46
    Top = 86
    Width = 60
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
    OnExit = Edit3Exit
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 46
    Top = 108
    Width = 60
    Height = 21
    TabOrder = 5
    Text = 'Edit2'
    OnExit = Edit4Exit
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 46
    Top = 130
    Width = 60
    Height = 21
    TabOrder = 6
    Text = 'Edit2'
    OnExit = Edit5Exit
    OnKeyPress = Edit5KeyPress
  end
  object CheckBox1: TCheckBox
    Left = 0
    Top = 26
    Width = 59
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Update'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
end
