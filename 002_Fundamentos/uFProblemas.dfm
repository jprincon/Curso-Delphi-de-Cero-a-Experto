object FProblemas: TFProblemas
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Resoluci'#243'n de Problemas'
  ClientHeight = 719
  ClientWidth = 1360
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object paginaPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 860
    Height = 719
    ActivePage = TabConsola
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    object TabConsola: TTabSheet
      Caption = 'Consola de Mensajes'
      object mConsola: TMemo
        Left = 0
        Top = 0
        Width = 826
        Height = 711
        Align = alClient
        Lines.Strings = (
          'mConsola')
        TabOrder = 0
      end
    end
  end
  object Contenido: TCardPanel
    Left = 860
    Top = 0
    Width = 500
    Height = 719
    Align = alRight
    ActiveCard = cardFactorialNumero
    Caption = 'Contenido'
    TabOrder = 1
    object cardProblema1: TCard
      Left = 1
      Top = 1
      Width = 498
      Height = 717
      Caption = 'cardProblema1'
      CardIndex = 0
      TabOrder = 0
      object Label7: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 492
        Height = 39
        Align = alTop
        Caption = 'Suma de las cifras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 289
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 102
        Width = 492
        Height = 55
        Align = alTop
        Caption = 'Ingrese un n'#250'mero de cuatro cifras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 57
        object sbCalcularSumaCuatroDigitosF1: TSpeedButton
          AlignWithMargins = True
          Left = 221
          Top = 21
          Width = 130
          Height = 29
          Align = alRight
          Caption = 'Calcular Suma - F1'
          OnClick = sbCalcularSumaCuatroDigitosF1Click
          ExplicitLeft = 360
          ExplicitTop = 18
          ExplicitHeight = 35
        end
        object sbCalcularSumaCuatroDigitosF2: TSpeedButton
          AlignWithMargins = True
          Left = 357
          Top = 21
          Width = 130
          Height = 29
          Align = alRight
          Caption = 'Calcular Suma - F2'
          OnClick = sbCalcularSumaCuatroDigitosF2Click
          ExplicitLeft = 405
          ExplicitTop = 23
        end
        object edNumero4C: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 210
          Height = 29
          Align = alClient
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '1234'
          ExplicitHeight = 27
        end
      end
      object pExpProb1: TPanel
        Left = 0
        Top = 45
        Width = 498
        Height = 54
        Align = alTop
        BevelOuter = bvNone
        Color = 14155775
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 492
          Height = 48
          Align = alClient
          Caption = 
            'A continuaci'#243'n ingrse un n'#250'mero de cuatro cifras para proceder a' +
            ' sumarlas y mostrar el resultado en la consola de mensajes.'
          WordWrap = True
          ExplicitWidth = 470
          ExplicitHeight = 38
        end
      end
    end
    object cardProblema2: TCard
      Left = 1
      Top = 1
      Width = 498
      Height = 717
      Caption = 'cardProblema2'
      CardIndex = 1
      TabOrder = 1
      object Label8: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 492
        Height = 39
        Align = alTop
        Caption = 'Ecuaci'#243'n de Segundo Grado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 445
      end
      object Panel1: TPanel
        Left = 0
        Top = 45
        Width = 498
        Height = 54
        Align = alTop
        BevelOuter = bvNone
        Color = 14155775
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 0
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 492
          Height = 48
          Align = alClient
          Caption = 
            'Aqu'#237' resolveremos una ecuaci'#243'n de segundo grado. A continuaci'#243'n ' +
            'ingrese los coeficientes de la ecuaci'#243'n.'
          WordWrap = True
          ExplicitWidth = 482
          ExplicitHeight = 38
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 102
        Width = 492
        Height = 55
        Align = alTop
        Caption = 'Ingrese los coeficientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 57
        object Label3: TLabel
          Left = 2
          Top = 18
          Width = 33
          Height = 35
          Align = alLeft
          Caption = 'a = '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 19
        end
        object Label4: TLabel
          Left = 124
          Top = 18
          Width = 33
          Height = 35
          Align = alLeft
          Caption = 'b = '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 19
        end
        object Label5: TLabel
          Left = 246
          Top = 18
          Width = 31
          Height = 35
          Align = alLeft
          Caption = 'c = '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 19
        end
        object sbResolverEcuacionSegundoGrado: TSpeedButton
          AlignWithMargins = True
          Left = 369
          Top = 21
          Width = 118
          Height = 29
          Align = alClient
          Caption = 'Resolver'
          OnClick = sbResolverEcuacionSegundoGradoClick
          ExplicitLeft = 362
          ExplicitTop = 26
          ExplicitWidth = 130
        end
        object edValA: TEdit
          AlignWithMargins = True
          Left = 38
          Top = 21
          Width = 83
          Height = 29
          Align = alLeft
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '1'
          ExplicitHeight = 27
        end
        object edValB: TEdit
          AlignWithMargins = True
          Left = 160
          Top = 21
          Width = 83
          Height = 29
          Align = alLeft
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '5'
          ExplicitHeight = 27
        end
        object edValC: TEdit
          AlignWithMargins = True
          Left = 280
          Top = 21
          Width = 83
          Height = 29
          Align = alLeft
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '6'
          ExplicitHeight = 27
        end
      end
    end
    object cardMenuOpciones: TCard
      Left = 1
      Top = 1
      Width = 498
      Height = 717
      Caption = 'cardMenuOpciones'
      CardIndex = 2
      TabOrder = 2
      object Label9: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 492
        Height = 39
        Align = alTop
        Caption = 'Men'#250' de Opciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 292
      end
      object tvMenu: TTreeView
        Left = 0
        Top = 106
        Width = 498
        Height = 611
        Align = alClient
        Indent = 19
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        OnClick = tvMenuClick
        ExplicitLeft = 1
        ExplicitTop = 104
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 48
        Width = 492
        Height = 55
        Align = alTop
        Caption = 'Ingrese su nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 3
        object edNombre: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 482
          Height = 29
          Align = alClient
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Juli'#225'n'
          ExplicitHeight = 27
        end
      end
    end
    object cardTablaMultiplicarFOR: TCard
      Left = 1
      Top = 1
      Width = 498
      Height = 717
      Caption = 'cardTablaMultiplicarFOR'
      CardIndex = 3
      TabOrder = 3
      object Label10: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 492
        Height = 39
        Align = alTop
        Caption = 'Tabla de Multiplicar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 317
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 48
        Width = 492
        Height = 57
        Align = alTop
        Caption = 'Ingrese un n'#250'mero entero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 3
        object sbCalcularTablaMultiplicar: TSpeedButton
          Left = 384
          Top = 18
          Width = 106
          Height = 37
          Align = alRight
          Caption = 'Calcular'
          OnClick = sbCalcularTablaMultiplicarClick
        end
        object edTM: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 376
          Height = 31
          Align = alClient
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          Text = '5'
          OnKeyDown = edTMKeyDown
          ExplicitHeight = 27
        end
      end
    end
    object cardFactorialNumero: TCard
      Left = 1
      Top = 1
      Width = 498
      Height = 717
      Caption = 'cardFactorialNumero'
      CardIndex = 4
      TabOrder = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Label6: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 492
        Height = 78
        Align = alTop
        Caption = 'C'#225'lculo del Factorial de un N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        ExplicitLeft = 5
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 87
        Width = 492
        Height = 57
        Align = alTop
        Caption = 'Ingrese un n'#250'mero entero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 6
        ExplicitTop = 11
        object spFactorialNumero: TSpeedButton
          Left = 384
          Top = 18
          Width = 106
          Height = 37
          Align = alRight
          Caption = 'Calcular'
          OnClick = spFactorialNumeroClick
        end
        object edNumFact: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 376
          Height = 31
          Align = alClient
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          Text = '5'
          OnKeyDown = edTMKeyDown
          ExplicitHeight = 27
        end
      end
    end
  end
  object MenuPrincipal: TMainMenu
    Left = 168
    Top = 240
    object Problemas1: TMenuItem
      Caption = 'Archivo'
      object Problemas2: TMenuItem
        Caption = 'Problemas'
        object problema1: TMenuItem
          Caption = 'Suma digitos n'#250'mero de cuatro cifras'
          OnClick = problema1Click
        end
        object problema2: TMenuItem
          Caption = 'Ecuaci'#243'n de Segundo Grado'
          OnClick = problema2Click
        end
        object problema3: TMenuItem
          Caption = 'Crear men'#250' de opciones'
          OnClick = problema3Click
        end
        object ablamultiplicarcicloFOR1: TMenuItem
          Caption = 'Tabla multiplicar ciclo FOR'
          OnClick = ablamultiplicarcicloFOR1Click
        end
        object FactorialdeinNmero1: TMenuItem
          Caption = 'Factorial de un N'#250'mero'
          OnClick = FactorialdeinNmero1Click
        end
      end
    end
  end
end
