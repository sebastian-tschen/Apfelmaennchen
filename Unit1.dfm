object Form1: TForm1
  Left = 87
  Top = 113
  Width = 1177
  Height = 573
  HorzScrollBar.Position = 4
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 356
    Top = 72
    Width = 640
    Height = 400
    OnMouseDown = Image1MouseDown
    OnMouseUp = Image1MouseUp
  end
  object Label1: TLabel
    Left = 52
    Top = 440
    Width = 50
    Height = 13
    Caption = 'Iterationen'
  end
  object Label2: TLabel
    Left = 172
    Top = 176
    Width = 48
    Height = 13
    Caption = 'Farbfaktor'
  end
  object Image2: TImage
    Left = 4
    Top = 332
    Width = 250
    Height = 53
  end
  object Image3: TImage
    Left = 1076
    Top = 472
    Width = 1920
    Height = 1200
  end
  object Label3: TLabel
    Left = 36
    Top = 176
    Width = 64
    Height = 13
    Caption = 'Umkehrpunkt'
  end
  object Button1: TButton
    Left = 52
    Top = 464
    Width = 121
    Height = 49
    Caption = 'Zeichne!'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Elr: TEdit
    Left = 284
    Top = 272
    Width = 49
    Height = 21
    TabOrder = 1
    Text = '-2'
  end
  object Eoi: TEdit
    Left = 572
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 2
    Text = '0,9375'
  end
  object Err: TEdit
    Left = 1004
    Top = 272
    Width = 41
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object Eui: TEdit
    Left = 572
    Top = 488
    Width = 41
    Height = 21
    TabOrder = 4
    Text = '-0,9375'
  end
  object Efarbfk: TEdit
    Left = 172
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '50'
  end
  object Emax_iter: TEdit
    Left = 52
    Top = 416
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '50'
  end
  object Button2: TButton
    Left = 644
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Syncro'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 636
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Syncro'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Efarbe: TEdit
    Left = 124
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'Efarbe'
  end
  object Button4: TButton
    Left = 900
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Raus zoomen'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 28
    Top = 208
    Width = 91
    Height = 21
    Caption = 'Farbe 1 w'#228'hlen'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 140
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Farbe setzen'
    TabOrder = 12
    OnClick = Button6Click
  end
  object CheckBox1: TCheckBox
    Left = 84
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Linear'
    TabOrder = 13
  end
  object Ef1: TEdit
    Left = 124
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 14
    Text = '$0000FF00'
  end
  object Ef2: TEdit
    Left = 124
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 15
    Text = '$00000000'
  end
  object Button7: TButton
    Left = 28
    Top = 240
    Width = 91
    Height = 21
    Caption = 'Farbe 2 w'#228'hlen'
    TabOrder = 16
    OnClick = Button7Click
  end
  object Eendf: TEdit
    Left = 124
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 17
    Text = '0'
  end
  object Button9: TButton
    Left = 28
    Top = 304
    Width = 91
    Height = 21
    Caption = 'Endfarbe W'#228'hlen'
    TabOrder = 18
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 1052
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Pict'
    TabOrder = 19
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 1052
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Zeichne Gro'#223
    TabOrder = 20
    OnClick = Button11Click
  end
  object CheckBox2: TCheckBox
    Left = 4
    Top = 128
    Width = 81
    Height = 17
    Caption = 'Hin und Her'
    TabOrder = 21
  end
  object CheckBox3: TCheckBox
    Left = 140
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Farbchip'
    TabOrder = 22
  end
  object Eumkehr: TEdit
    Left = 36
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 23
    Text = '50'
  end
  object CheckBox4: TCheckBox
    Left = 204
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Dreieck'
    TabOrder = 24
  end
  object Ef3: TEdit
    Left = 124
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 25
    Text = '$00000000'
  end
  object Button12: TButton
    Left = 28
    Top = 272
    Width = 91
    Height = 21
    Caption = 'Farbe 3 w'#228'hlen'
    TabOrder = 26
    OnClick = Button12Click
  end
  object CheckBox5: TCheckBox
    Left = 268
    Top = 128
    Width = 73
    Height = 17
    Caption = 'Kreis'
    TabOrder = 27
  end
  object Button8: TButton
    Left = 188
    Top = 464
    Width = 113
    Height = 49
    Caption = 'Dichteverteilung'
    TabOrder = 28
    OnClick = Button8Click
  end
  object Button13: TButton
    Left = 1052
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Button13'
    TabOrder = 29
    OnClick = Button13Click
  end
  object CheckBox6: TCheckBox
    Left = 4
    Top = 104
    Width = 97
    Height = 17
    Caption = 'Logarithmisch'
    TabOrder = 30
  end
  object Edit1: TEdit
    Left = 4
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 31
    Text = '1,2'
  end
  object ColorDialog1: TColorDialog
    Left = 312
    Top = 328
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 280
    Top = 328
  end
end
