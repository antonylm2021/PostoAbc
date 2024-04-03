object FrmAbastecimento: TFrmAbastecimento
  Left = 0
  Top = 0
  Caption = 'Abastecimento'
  ClientHeight = 419
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 69
    Height = 29
    Caption = 'Bomba'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 193
    Width = 69
    Height = 31
    Caption = 'Valor/L'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 264
    Top = 193
    Width = 53
    Height = 31
    Caption = 'Litros'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 301
    Width = 88
    Height = 31
    Caption = 'SubTotal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 168
    Top = 301
    Width = 103
    Height = 31
    Caption = 'Imposto %'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 296
    Top = 301
    Width = 101
    Height = 31
    Caption = 'Total Icms'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 101
    Width = 200
    Height = 31
    Caption = 'Tipo de Comb'#250'st'#237'vel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 464
    Top = 301
    Width = 114
    Height = 31
    Caption = 'Total  Geral'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object cbbomba: TComboBox
    Left = 16
    Top = 51
    Width = 689
    Height = 40
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 0
    Text = 'BOMBA01'
    OnChange = cbbombaChange
    Items.Strings = (
      'BOMBA01'
      'BOMBA02'
      'BOMBA03'
      'BOMBA04')
  end
  object edtvalorl: TEdit
    Left = 16
    Top = 240
    Width = 225
    Height = 39
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object edtlitro: TEdit
    Left = 264
    Top = 240
    Width = 225
    Height = 39
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = '1'
    OnKeyPress = edtlitroKeyPress
  end
  object edttotal: TEdit
    Left = 16
    Top = 348
    Width = 129
    Height = 39
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    Text = '0'
  end
  object etimposto: TEdit
    Left = 168
    Top = 348
    Width = 103
    Height = 39
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Text = '13'
  end
  object edttoticms: TEdit
    Left = 296
    Top = 348
    Width = 145
    Height = 39
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    Text = '0'
  end
  object Panel1: TPanel
    Left = 495
    Top = 238
    Width = 210
    Height = 41
    Caption = 'Abastecer'
    Color = clBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnClick = Panel1Click
  end
  object edttipo: TEdit
    Left = 16
    Top = 138
    Width = 689
    Height = 39
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object edttotgeral: TEdit
    Left = 464
    Top = 348
    Width = 241
    Height = 39
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Text = '0'
  end
end
