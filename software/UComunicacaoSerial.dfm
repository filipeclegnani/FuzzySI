object AutoNormalization: TAutoNormalization
  Left = 0
  Top = 0
  Caption = 'AutoNormalization'
  ClientHeight = 553
  ClientWidth = 1140
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 191
    Top = 8
    Width = 946
    Height = 533
    Title.Font.Color = 8404992
    Title.Font.Height = -16
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Controle de rota'#231#245'es')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Increment = 10.000000000000000000
    BottomAxis.Maximum = 100.000000000000000000
    BottomAxis.Title.Caption = 'Amostras'
    BottomAxis.Title.Font.Height = -16
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.AxisValuesFormat = '#,##0.0###'
    LeftAxis.Maximum = 9900.000000000000000000
    LeftAxis.Title.Caption = 'RPM'
    LeftAxis.Title.Font.Height = -16
    LeftAxis.Title.Font.Style = [fsBold]
    View3D = False
    OnAfterDraw = Chart1AfterDraw
    Color = clWhite
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Legend.Text = 'Medi'#231#227'o'
      LegendTitle = 'Medi'#231#227'o'
      SeriesColor = clLime
      Brush.BackColor = clDefault
      LinePen.Width = 2
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Legend.Text = 'Alvo'
      LegendTitle = 'Alvo'
      SeriesColor = clRed
      Brush.BackColor = clDefault
      LinePen.Width = 2
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Transparency = 61
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 177
    Height = 533
    ParentBackground = False
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 50
      Width = 80
      Height = 13
      Caption = 'Bits por segundo'
    end
    object Label1: TLabel
      Left = 16
      Top = 2
      Width = 26
      Height = 13
      Caption = 'Porta'
    end
    object Label3: TLabel
      Left = 16
      Top = 477
      Width = 21
      Height = 13
      Caption = 'RPM'
    end
    object BtClosePort: TButton
      Left = 16
      Top = 143
      Width = 145
      Height = 34
      Caption = 'Fechar Porta'
      TabOrder = 0
      OnClick = BtClosePortClick
    end
    object BtOpenPort: TButton
      Left = 16
      Top = 105
      Width = 145
      Height = 32
      Caption = 'Abrir Porta'
      TabOrder = 1
      OnClick = BtOpenPortClick
    end
    object CbBaudRate1: TComboBox
      Left = 16
      Top = 69
      Width = 145
      Height = 21
      ItemIndex = 7
      TabOrder = 2
      Text = '115200'
      Items.Strings = (
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '128000'
        '256000')
    end
    object CbSerialPort1: TComboBox
      Left = 16
      Top = 21
      Width = 145
      Height = 21
      TabOrder = 3
      OnDropDown = CbSerialPort1DropDown
    end
    object RPMInput: TEdit
      Left = 16
      Top = 496
      Width = 106
      Height = 21
      TabOrder = 4
    end
    object Ok: TButton
      Left = 128
      Top = 494
      Width = 33
      Height = 25
      Caption = 'Ok'
      TabOrder = 5
      OnClick = OkClick
    end
  end
end
