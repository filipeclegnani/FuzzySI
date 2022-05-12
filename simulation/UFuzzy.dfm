object FmFuzzy: TFmFuzzy
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 
    'Intelig'#234'ncia Artificial II - Exemplo de Programa'#231#227'o de um Sistem' +
    'a Fuzzy'
  ClientHeight = 582
  ClientWidth = 1157
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
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
  object Panel1: TPanel
    Left = 901
    Top = 32
    Width = 160
    Height = 89
    TabOrder = 0
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
      Left = 29
      Top = 23
      Width = 104
      Height = 19
      Caption = 'Gorgeta (%)'
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
      'Food')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.Maximum = 10.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.000000000000000000
    OnAfterDraw = Chart2AfterDraw
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series4: TLineSeries
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
      'Tip (gorjeta)')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Maximum = 30.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.000000000000000000
    OnAfterDraw = Chart3AfterDraw
    TabOrder = 2
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series6: TLineSeries
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
    TabOrder = 3
    TickMarks = tmTopLeft
    OnChange = tbServiceChange
  end
  object tbFood: TTrackBar
    Left = 988
    Top = 200
    Width = 150
    Height = 45
    TabOrder = 4
    TickMarks = tmTopLeft
    OnChange = tbFoodChange
  end
  object Chart4: TChart
    Left = 414
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
    OnAfterDraw = Chart4AfterDraw
    TabOrder = 5
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 563
    Width = 1157
    Height = 19
    Panels = <>
    ExplicitLeft = 584
    ExplicitTop = 296
    ExplicitWidth = 0
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 400
    Height = 250
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Service')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.Maximum = 10.000000000000000000
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
    OnAfterDraw = Chart1AfterDraw
    TabOrder = 7
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Legend.Text = 'Poor'
      LegendTitle = 'Poor'
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
      Legend.Text = 'Good'
      LegendTitle = 'Good'
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
      Legend.Text = 'Excellent'
      LegendTitle = 'Excellent'
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
