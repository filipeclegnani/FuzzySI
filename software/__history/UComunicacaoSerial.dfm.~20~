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
  OnCreate = FormCreate
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
      'Controle de velocidade')
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
    LeftAxis.Maximum = 230.000000000000000000
    LeftAxis.Title.Caption = 'KM/H'
    LeftAxis.Title.Font.Height = -16
    LeftAxis.Title.Font.Style = [fsBold]
    View3D = False
    OnAfterDraw = Chart1AfterDraw
    Color = clWhite
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      22
      15
      22)
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      HoverElement = [heCurrent]
      Legend.Text = 'Medi'#231#227'o'
      LegendTitle = 'Medi'#231#227'o'
      SeriesColor = clNavy
      Brush.BackColor = clDefault
      LinePen.Width = 2
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psNothing
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {
        021D000000000000000000000000000020000000000000000000000020000000
        0000000000000000200000000000000000000000200000000000000000000000
        2000000000000000000000002000000000000000000000002000000000000000
        0000000020000000000000000000000020000000000000000000000020000000
        0000000000000000200000000000000000000000200000000000000000000000
        2000000000000000000000002000000000000000000000002000000000000000
        0000000020000000000000000000000020000000000000000000000020000000
        0000000000000000200000000000000000000000200000000000000000000000
        2000000000000000000000002000000000000000000000002000000000000000
        0000000020000000000000000000000020000000000000000000000020000000
        0000000000000000200000000000000000000000200000000000000000FFFFFF
        1F}
      Detail = {0000000000}
    end
    object Series2: TLineSeries
      HoverElement = [heCurrent]
      Legend.Text = 'Alvo'
      LegendTitle = 'Alvo'
      SeriesColor = clRed
      Brush.BackColor = clDefault
      LinePen.Width = 2
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psNothing
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Transparency = 61
      Data = {
        001A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000}
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
    object Label4: TLabel
      Left = 40
      Top = 200
      Width = 31
      Height = 13
      Caption = 'Label4'
    end
    object Label5: TLabel
      Left = 40
      Top = 219
      Width = 39
      Height = 13
      Caption = 'setpoint'
    end
    object Label6: TLabel
      Left = 40
      Top = 238
      Width = 31
      Height = 13
      Caption = 'Label6'
    end
    object Label7: TLabel
      Left = 40
      Top = 257
      Width = 31
      Height = 13
      Caption = 'Label7'
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
    object Ativa: TButton
      Left = 21
      Top = 288
      Width = 75
      Height = 25
      Caption = 'Ativa'
      TabOrder = 6
      OnClick = AtivaClick
    end
    object Res: TButton
      Left = 21
      Top = 319
      Width = 75
      Height = 25
      Caption = 'Res +'
      TabOrder = 7
      OnClick = ResClick
    end
    object Set: TButton
      Left = 21
      Top = 350
      Width = 75
      Height = 25
      Caption = 'Set -'
      TabOrder = 8
      OnClick = SetClick
    end
    object Freio: TButton
      Left = 21
      Top = 381
      Width = 75
      Height = 25
      Caption = 'Freio'
      TabOrder = 9
      OnClick = FreioClick
    end
  end
end
