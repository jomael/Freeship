object FreeLinesplanForm: TFreeLinesplanForm
  Left = 735
  Top = 101
  Width = 828
  Height = 621
  Caption = 'Linesplan.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inline LinesplanFrame: TFreeLinesplanFrame
    Left = 0
    Top = 0
    Width = 820
    Height = 594
    Align = alClient
    TabOrder = 0
    inherited Viewport: TFreeViewport
      Width = 820
      Height = 570
    end
    inherited ToolBar1: TToolBar
      Width = 820
      inherited ToolButton19: TToolButton
        AllowAllUp = True
      end
    end
  end
end
