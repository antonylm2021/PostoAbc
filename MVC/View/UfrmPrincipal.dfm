object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Gerenciamento Posto ABC'
  ClientHeight = 349
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object menu: TMainMenu
    Left = 16
    Top = 8
    object abastecimento2: TMenuItem
      Caption = 'Abastecimento'
      OnClick = abastecimento2Click
    end
    object Abastecimento1: TMenuItem
      Caption = 'Relat'#243'rio'
      OnClick = Abastecimento1Click
    end
  end
end
