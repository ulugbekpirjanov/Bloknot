object Form2: TForm2
  Left = 277
  Top = 348
  Width = 846
  Height = 454
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 0
    Width = 777
    Height = 361
    TabOrder = 0
  end
  object Button1: TButton
    Left = 160
    Top = 368
    Width = 75
    Height = 25
    Caption = 'ochish'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 384
    Top = 368
    Width = 75
    Height = 25
    Caption = 'saqlash'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Button3: TButton
    Left = 608
    Top = 368
    Width = 75
    Height = 25
    Caption = 'shrift'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 800
    Top = 80
    object fayl1: TMenuItem
      Caption = 'fayl'
      object yangi1: TMenuItem
        Caption = 'yangi'
      end
      object ochish1: TMenuItem
        Caption = 'ochish'
      end
      object saqlash1: TMenuItem
        Caption = 'saqlash'
      end
      object chiqish1: TMenuItem
        Caption = 'chiqish'
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 800
    Top = 208
  end
  object SaveDialog1: TSaveDialog
    Left = 800
    Top = 160
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 800
    Top = 120
  end
end
