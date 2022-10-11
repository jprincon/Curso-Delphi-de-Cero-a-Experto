object FPrimerPrograma: TFPrimerPrograma
  Left = 0
  Top = 0
  Caption = 'Primer programa'
  ClientHeight = 729
  ClientWidth = 1008
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbSaludar: TLabel
    Left = 61
    Top = 72
    Width = 583
    Height = 39
    Caption = 'Bienvenido al primer programa en Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object bSaludar: TButton
    Left = 61
    Top = 128
    Width = 97
    Height = 33
    Caption = 'Saludar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bSaludarClick
  end
end
