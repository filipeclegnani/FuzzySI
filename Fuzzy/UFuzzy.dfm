object FmFuzzy: TFmFuzzy
  Left = 0
  Top = 0
  Caption = 
    'Intelig'#234'ncia Artificial II - Exemplo de Programa'#231#227'o de um Sistem' +
    'a Fuzzy'
  ClientHeight = 525
  ClientWidth = 1144
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 832
    Top = 167
    Width = 77
    Height = 19
    Caption = 'Service ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 988
    Top = 167
    Width = 62
    Height = 19
    Caption = 'Food = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 915
    Top = 167
    Width = 10
    Height = 19
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 1051
    Top = 167
    Width = 10
    Height = 19
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 400
    Height = 250
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Erro')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.Maximum = 2100.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.AxisValuesFormat = '#,##0.00###'
    LeftAxis.LabelsAlign = alOpposite
    LeftAxis.Maximum = 1.000000000000000000
    LeftAxis.MaximumOffset = 5
    LeftAxis.MinimumOffset = 5
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    RightAxis.Increment = 1.000000000000000000
    RightAxis.Maximum = 10.000000000000000000
    TopAxis.Automatic = False
    TopAxis.AutomaticMaximum = False
    View3D = False
    OnAfterDraw = Chart1AfterDraw
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      19
      15
      19)
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Legend.Text = 'Baixo'
      LegendTitle = 'Baixo'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Legend.Text = 'Medio'
      LegendTitle = 'Medio'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Legend.Text = 'Alto'
      LegendTitle = 'Alto'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 901
    Top = 32
    Width = 160
    Height = 89
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 48
      Width = 56
      Height = 19
      Caption = 'Gorgeta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 61
      Top = 23
      Width = 37
      Height = 19
      Caption = 'RPM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Chart2: TChart
    Left = 8
    Top = 264
    Width = 400
    Height = 250
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Varia'#231#227'o')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.Maximum = 2000.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.000000000000000000
    View3D = False
    OnAfterDraw = Chart2AfterDraw
    TabOrder = 2
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series4: TLineSeries
      Legend.Text = 'Baixa'
      LegendTitle = 'Baixa'
      Title = 'Rancid'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TLineSeries
      Legend.Text = 'Alta'
      LegendTitle = 'Alta'
      Title = 'Delicious'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 414
    Top = 8
    Width = 400
    Height = 250
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Ajuste')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Maximum = 15.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.000000000000000000
    View3D = False
    OnAfterDraw = Chart3AfterDraw
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series6: TLineSeries
      Legend.Text = 'Baixo'
      LegendTitle = 'Baixo'
      Title = 'Cheap'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series7: TLineSeries
      Legend.Text = 'Medio'
      LegendTitle = 'Medio'
      Title = 'Average'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series8: TLineSeries
      Legend.Text = 'Alto'
      LegendTitle = 'Alto'
      Title = 'Generous'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object tbService: TTrackBar
    Left = 832
    Top = 200
    Width = 150
    Height = 45
    TabOrder = 4
    TickMarks = tmTopLeft
    OnChange = tbServiceChange
  end
  object tbFood: TTrackBar
    Left = 988
    Top = 200
    Width = 150
    Height = 45
    TabOrder = 5
    TickMarks = tmTopLeft
    OnChange = tbFoodChange
  end
  object Chart4: TChart
    Left = 832
    Top = 264
    Width = 400
    Height = 250
    Legend.LegendStyle = lsSeries
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Centroid')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Maximum = 30.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.000000000000000000
    View3D = False
    OnAfterDraw = Chart4AfterDraw
    TabOrder = 6
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object LineSeries3: TLineSeries
      Title = 'Centroid'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
end
