// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCLTee.TeEngine.pas' rev: 35.00 (Windows)

#ifndef Vcltee_TeengineHPP
#define Vcltee_TeengineHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <System.UITypes.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <VCLTee.TeeProcs.hpp>
#include <VCLTee.TeCanvas.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <Vcl.ExtCtrls.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcltee
{
namespace Teengine
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TCustomChartElement;
class DELPHICLASS TChartValueList;
class DELPHICLASS TMargins;
class DELPHICLASS TCustomTextShape;
class DELPHICLASS TChartAxisTitle;
class DELPHICLASS AxisException;
class DELPHICLASS TAxisGridPen;
class DELPHICLASS TAxisLabelsFormat;
class DELPHICLASS TAxisItem;
class DELPHICLASS TTeeHover;
class DELPHICLASS TTeeSelected;
class DELPHICLASS TAxisItems;
class DELPHICLASS TChartAxisPen;
class DELPHICLASS TAutomaticText;
class DELPHICLASS TChartCustomAxes;
class DELPHICLASS TAxisLabels;
class DELPHICLASS TAxisBackShape;
class DELPHICLASS TTicks;
class DELPHICLASS TChartAxis;
class DELPHICLASS TChartDepthAxis;
struct TChartClickedPart;
class DELPHICLASS TCustomSeriesList;
class DELPHICLASS TChartSeriesList;
class DELPHICLASS TSeriesGroup;
class DELPHICLASS TSeriesGroups;
class DELPHICLASS TChartAxes;
class DELPHICLASS TTeeCustomDesigner;
class DELPHICLASS TChartChangePage;
class DELPHICLASS TTeeCustomTool;
class DELPHICLASS TChartTools;
class DELPHICLASS TTeeCustomAnimation;
class DELPHICLASS TChartAnimations;
class DELPHICLASS TTeeCustomToolSeries;
class DELPHICLASS TTeeCustomToolAxis;
class DELPHICLASS TChartPage;
class DELPHICLASS TTeeSeriesEvent;
class DELPHICLASS TCustomAxisPanel;
class DELPHICLASS TSeriesMarkPosition;
class DELPHICLASS TSeriesMarksPositions;
class DELPHICLASS TMarksItem;
class DELPHICLASS TMarksItems;
class DELPHICLASS TSeriesPointer;
class DELPHICLASS TCallout;
class DELPHICLASS TMarksCallout;
class DELPHICLASS TSeriesMarksSymbol;
class DELPHICLASS TSeriesMarkShape;
class DELPHICLASS TMarksTail;
class DELPHICLASS TSeriesMarks;
class DELPHICLASS TDataSourcesList;
class DELPHICLASS TTeeFunction;
class DELPHICLASS TTeeMovingFunction;
class DELPHICLASS TChartValueLists;
class DELPHICLASS TSeriesLegend;
class DELPHICLASS TCustomChartSeries;
struct TSeriesRandomBounds;
class DELPHICLASS TTeeSeriesType;
class DELPHICLASS TLabelsList;
class DELPHICLASS TVisualsList;
class DELPHICLASS TTeePictureList;
class DELPHICLASS TSeriesDetail;
class DELPHICLASS TChartSeries;
class DELPHICLASS TThemedSeries;
class DELPHICLASS ChartException;
class DELPHICLASS TTeeSeriesSource;
__interface DELPHIINTERFACE ITeeScreenToPoint;
typedef System::DelphiInterface<ITeeScreenToPoint> _di_ITeeScreenToPoint;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TCustomChartElement : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	bool FActive;
	Vcltee::Tecanvas::TTeeBrush* FBrush;
	Vcltee::Tecanvas::TTeePen* FPen;
	bool FShowInEditor;
	System::TObject* FTagObject;
	
protected:
	TCustomAxisPanel* FParent;
	bool DontSerialize;
	bool IInternalUse;
	virtual void __fastcall CanvasChanged(System::TObject* Sender);
	Vcltee::Tecanvas::TTeePen* __fastcall CreateChartPen();
	__classmethod virtual System::UnicodeString __fastcall GetEditorClass();
	virtual void __fastcall SetActive(bool Value);
	void __fastcall SetBooleanProperty(bool &Variable, bool Value);
	void __fastcall SetBrush(Vcltee::Tecanvas::TTeeBrush* const Value);
	void __fastcall SetColorProperty(System::Uitypes::TColor &Variable, System::Uitypes::TColor Value);
	void __fastcall SetDoubleProperty(double &Variable, const double Value);
	void __fastcall SetIntegerProperty(int &Variable, int Value);
	virtual void __fastcall SetParentChart(TCustomAxisPanel* const Value);
	DYNAMIC void __fastcall SetParentComponent(System::Classes::TComponent* AParent);
	virtual void __fastcall SetPen(Vcltee::Tecanvas::TTeePen* const Value);
	void __fastcall SetSingleProperty(float &Variable, const float Value);
	void __fastcall SetStringProperty(System::UnicodeString &Variable, const System::UnicodeString Value);
	
public:
	__fastcall virtual TCustomChartElement(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TCustomChartElement();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__classmethod System::UnicodeString __fastcall EditorClass();
	DYNAMIC System::Classes::TComponent* __fastcall GetParentComponent();
	DYNAMIC bool __fastcall HasParent();
	void __fastcall Repaint();
	__property bool Active = {read=FActive, write=SetActive, default=1};
	__property Vcltee::Tecanvas::TTeeBrush* Brush = {read=FBrush, write=SetBrush};
	__property TCustomAxisPanel* ParentChart = {read=FParent, write=SetParentChart, stored=false};
	__property Vcltee::Tecanvas::TTeePen* Pen = {read=FPen, write=SetPen};
	__property System::TObject* TagObject = {read=FTagObject, write=FTagObject};
	__property bool Visible = {read=FActive, write=SetActive, default=1};
	
__published:
	__property bool ShowInEditor = {read=FShowInEditor, write=FShowInEditor, default=1};
};


typedef double TChartValue;

typedef System::DynamicArray<double> TChartValues;

enum DECLSPEC_DENUM TChartListOrder : unsigned char { loNone, loAscending, loDescending };

class PASCALIMPLEMENTATION TChartValueList : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
public:
	double operator[](int Index) { return this->Items[Index]; }
	
private:
	int FCount;
	bool FDateTime;
	double FMaxValue;
	double FMinValue;
	System::UnicodeString FName;
	TChartListOrder FOrder;
	TChartSeries* FOwner;
	double FTempValue;
	double FTotal;
	double FTotalABS;
	System::UnicodeString FValueSource;
	bool IDefDateTime;
	int __fastcall CompareValueIndex(int a, int b);
	double __fastcall GetMaxValue();
	double __fastcall GetMinValue();
	double __fastcall GetTotal();
	double __fastcall GetTotalABS();
	bool __fastcall IsDateStored();
	void __fastcall SetDateTime(const bool Value);
	void __fastcall SetModified(const bool Value);
	void __fastcall ReadMultiplier(System::Classes::TReader* Reader);
	void __fastcall SetValueSource(const System::UnicodeString Value);
	
protected:
	bool FModified;
	System::TObject* IData;
	bool Internal;
	int __fastcall AddChartValue()/* overload */;
	virtual int __fastcall AddChartValue(const double AValue)/* overload */;
	virtual void __fastcall ClearValues();
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	double __fastcall GetValue(int ValueIndex);
	void __fastcall InitDateTime(bool Value);
	virtual void __fastcall InsertChartValue(int ValueIndex, const double AValue);
	void __fastcall RecalcStats()/* overload */;
	void __fastcall RecalcStats(int StartIndex)/* overload */;
	void __fastcall RecalcStats(const double AMin, const double AMax, const double ATotal, const double ATotalABS)/* overload */;
	void __fastcall SetValue(int ValueIndex, const double AValue);
	
public:
	TChartValues Value;
	__fastcall virtual TChartValueList(TChartSeries* AOwner, const System::UnicodeString AName);
	__fastcall virtual ~TChartValueList();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property int Count = {read=FCount, write=FCount, nodefault};
	virtual void __fastcall Delete(int ValueIndex)/* overload */;
	void __fastcall Delete(int Start, int Quantity)/* overload */;
	void __fastcall Exchange(int Index1, int Index2);
	void __fastcall FillSequence();
	double __fastcall First();
	double __fastcall Last();
	int __fastcall Locate(const double AValue)/* overload */;
	int __fastcall Locate(const double AValue, int FirstIndex, int LastIndex)/* overload */;
	double __fastcall Range();
	DYNAMIC void __fastcall Scroll();
	void __fastcall Sort();
	System::UnicodeString __fastcall ValueToString(const int Index);
	__property double MaxValue = {read=GetMaxValue};
	__property double MinValue = {read=GetMinValue};
	__property bool Modified = {read=FModified, write=SetModified, nodefault};
	__property TChartSeries* Owner = {read=FOwner};
	__property double TempValue = {read=FTempValue, write=FTempValue};
	__property double Total = {read=GetTotal};
	__property double TotalABS = {read=GetTotalABS, write=FTotalABS};
	__property double Items[int Index] = {read=GetValue, write=SetValue/*, default*/};
	
__published:
	__property bool DateTime = {read=FDateTime, write=SetDateTime, stored=IsDateStored, nodefault};
	__property System::UnicodeString Name = {read=FName, write=FName};
	__property TChartListOrder Order = {read=FOrder, write=FOrder, nodefault};
	__property System::UnicodeString ValueSource = {read=FValueSource, write=SetValueSource};
};


enum DECLSPEC_DENUM TMarginUnits : unsigned char { maPercentFont, maPercentSize, maPixels };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TMargins : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FLeft;
	int FTop;
	int FRight;
	int FBottom;
	TMarginUnits FUnits;
	int DefaultHoriz;
	int DefaultVert;
	System::Types::TRect ILast;
	Vcltee::Teeprocs::TTeeCustomShapeBrushPen* IParent;
	bool __fastcall IsLeftStored();
	bool __fastcall IsRightStored();
	bool __fastcall IsTopStored();
	bool __fastcall IsBottomStored();
	void __fastcall SetBottom(const int Value);
	void __fastcall SetDefaultHoriz(const int Value);
	void __fastcall SetDefaultVert(const int Value);
	void __fastcall SetIntegerProperty(int &Variable, const int Value);
	void __fastcall SetLeft(const int Value);
	void __fastcall SetRight(const int Value);
	void __fastcall SetTop(const int Value);
	void __fastcall SetUnits(const TMarginUnits Value);
	
public:
	__fastcall TMargins(Vcltee::Teeprocs::TTeeCustomShapeBrushPen* const AParent);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Calculate(const int Width, const int Height, const int FontSize);
	int __fastcall HorizSize();
	void __fastcall Reset();
	int __fastcall VertSize();
	__property System::Types::TRect Size = {read=ILast};
	
__published:
	__property int Left = {read=FLeft, write=SetLeft, stored=IsLeftStored, nodefault};
	__property int Top = {read=FTop, write=SetTop, stored=IsTopStored, nodefault};
	__property int Right = {read=FRight, write=SetRight, stored=IsRightStored, nodefault};
	__property int Bottom = {read=FBottom, write=SetBottom, stored=IsBottomStored, nodefault};
	__property TMarginUnits Units = {read=FUnits, write=SetUnits, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TMargins() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TCustomTextShape : public Vcltee::Teeprocs::TTeeCustomShape
{
	typedef Vcltee::Teeprocs::TTeeCustomShape inherited;
	
private:
	bool FClipText;
	System::Uitypes::TCursor FCursor;
	TMargins* FMargins;
	System::Classes::TAlignment FTextAlign;
	Vcltee::Teeprocs::TTextFormat FTextFormat;
	Vcltee::Teeprocs::TVertTextAlign FVertTextAlign;
	void __fastcall DoDrawText(Vcltee::Teeprocs::TCustomTeePanel* const Panel, const System::Types::TRect &Rect, int Angle = 0x0, int AZ = 0x0);
	bool __fastcall IsTextAlignStored();
	void __fastcall SetClipText(const bool Value);
	void __fastcall SetMargins(TMargins* const Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetTextAlign(const System::Classes::TAlignment Value);
	void __fastcall SetTextFormat(const Vcltee::Teeprocs::TTextFormat Value);
	void __fastcall SetVertTextAlign(const Vcltee::Teeprocs::TVertTextAlign Value);
	
protected:
	System::UnicodeString FText;
	System::Classes::TAlignment IDefaultTextAlign;
	bool IDraw2D;
	int ITextOffset;
	int INumLines;
	virtual void __fastcall CalcBounds(Vcltee::Teeprocs::TCustomTeePanel* const Panel);
	virtual void __fastcall CalcTextAlign(Vcltee::Teeprocs::TCustomTeePanel* const Panel, /* out */ int &X, const System::Types::TRect &R, System::UnicodeString AText);
	virtual System::Types::TPoint __fastcall CalcTextSize(Vcltee::Teeprocs::TCustomTeePanel* const Panel, System::UnicodeString S, const Vcltee::Teeprocs::TTextFormat TextFormat, /* out */ int &NumLines);
	virtual void __fastcall ChangedText();
	virtual void __fastcall DoDraw(Vcltee::Teeprocs::TCustomTeePanel* const Panel, const System::Types::TRect &Rect, int Angle = 0x0, int AZ = 0x0)/* overload */;
	virtual void __fastcall DoDraw(Vcltee::Teeprocs::TCustomTeePanel* const Panel, const Vcltee::Tecanvas::TPointArray Points, const System::Types::TRect &Rect, int Angle = 0x0, int AZ = 0x0)/* overload */;
	virtual void __fastcall DrawString(Vcltee::Teeprocs::TCustomTeePanel* const Panel, const int X, const int Y, const int Z, const System::UnicodeString Text, bool AllowHTML, int AAngle, const System::Types::TPoint &RotationCenter);
	virtual int __fastcall FirstChildPos();
	virtual Vcltee::Teeprocs::TTeeCustomShapeClass __fastcall GetChildClass();
	__classmethod virtual System::UnicodeString __fastcall GetEditorClass();
	void __fastcall InitTextAlignment(const System::Classes::TAlignment Value);
	
public:
	__fastcall virtual TCustomTextShape(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	__fastcall virtual ~TCustomTextShape();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property Alignment = {default=0};
	__property AutoSize = {default=1};
	__property Bevel = {default=0};
	__property BevelWidth = {default=2};
	__property Brush;
	__property Children;
	__property ChildLayout = {default=0};
	__property Color = {default=16777215};
	__property Emboss;
	__property Font;
	__property Frame;
	__property Gradient;
	__property Picture;
	__property Shadow;
	__property ShapeCallout;
	__property ShapeStyle = {default=0};
	__property Transparency = {default=0};
	__property Transparent;
	__property Visible;
	__property bool ClipText = {read=FClipText, write=SetClipText, default=1};
	__property System::Uitypes::TCursor Cursor = {read=FCursor, write=FCursor, default=0};
	__property TMargins* Margins = {read=FMargins, write=SetMargins};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::Classes::TAlignment TextAlignment = {read=FTextAlign, write=SetTextAlign, stored=IsTextAlignStored, nodefault};
	__property Vcltee::Teeprocs::TTextFormat TextFormat = {read=FTextFormat, write=SetTextFormat, default=0};
	__property Vcltee::Teeprocs::TVertTextAlign VertTextAlign = {read=FVertTextAlign, write=SetVertTextAlign, default=0};
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TAxisTitlePosition : unsigned char { tpStart, tpCenter, tpEnd };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartAxisTitle : public TCustomTextShape
{
	typedef TCustomTextShape inherited;
	
private:
	TAxisTitlePosition FPosition;
	int IDefaultAngle;
	System::UnicodeString __fastcall GetCaption();
	bool __fastcall IsAngleStored();
	void __fastcall SetCaption(const System::UnicodeString Value);
	void __fastcall SetPosition(const TAxisTitlePosition Value);
	
public:
	__fastcall virtual TChartAxisTitle(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	bool __fastcall Clicked(int x, int y)/* overload */;
	bool __fastcall Clicked(const System::Types::TPoint &P)/* overload */;
	
__published:
	__property Angle = {stored=IsAngleStored, default=0};
	__property System::UnicodeString Caption = {read=GetCaption, write=SetCaption};
	__property Font;
	__property TAxisTitlePosition Position = {read=FPosition, write=SetPosition, default=1};
	__property TextAlignment = {default=2};
	__property Visible = {default=1};
	__property Bevel = {default=0};
	__property BevelWidth = {default=2};
	__property Brush;
	__property Children;
	__property ChildLayout = {default=0};
	__property Color = {default=16777215};
	__property Gradient;
	__property Picture;
	__property Emboss;
	__property Pen;
	__property RoundSize = {default=16};
	__property Shadow;
	__property ShapeCallout;
	__property ShapeStyle = {default=0};
	__property TextFormat = {default=0};
	__property Transparency = {default=0};
	__property Transparent = {default=1};
public:
	/* TCustomTextShape.Destroy */ inline __fastcall virtual ~TChartAxisTitle() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION AxisException : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall AxisException(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall AxisException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall AxisException(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall AxisException(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall AxisException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall AxisException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall AxisException(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall AxisException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall AxisException(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall AxisException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall AxisException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall AxisException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~AxisException() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TAxisLabelStyle : unsigned char { talAuto, talNone, talValue, talMark, talText, talPointValue };

enum DECLSPEC_DENUM TAxisLabelAlign : unsigned char { alDefault, alOpposite, alCenter };

typedef int __fastcall (__closure *TAxisCalcPos)(const double Value);

typedef double __fastcall (__closure *TAxisCalcPosPoint)(const int Value);

class PASCALIMPLEMENTATION TAxisGridPen : public Vcltee::Tecanvas::TTeePen
{
	typedef Vcltee::Tecanvas::TTeePen inherited;
	
private:
	bool FCentered;
	bool FDrawAlways;
	int FDrawEvery;
	double FZ;
	double IDefaultZ;
	bool __fastcall IsZStored();
	void __fastcall ReadZZero(System::Classes::TReader* Reader);
	void __fastcall SetCentered(const bool Value);
	void __fastcall SetDrawAlways(const bool Value);
	void __fastcall SetDrawEvery(const int Value);
	void __fastcall SetZ(const double Value);
	void __fastcall WriteZZero(System::Classes::TWriter* Writer);
	
protected:
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	
public:
	__fastcall TAxisGridPen(const System::Classes::TNotifyEvent OnChangeEvent);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property bool Centered = {read=FCentered, write=SetCentered, default=0};
	
__published:
	__property bool DrawAlways = {read=FDrawAlways, write=SetDrawAlways, default=0};
	__property Color = {default=12632256};
	__property int DrawEvery = {read=FDrawEvery, write=SetDrawEvery, default=1};
	__property Width = {default=1};
	__property double ZPosition = {read=FZ, write=SetZ, stored=IsZStored};
public:
	/* TTeePen.Destroy */ inline __fastcall virtual ~TAxisGridPen() { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TAxisLabelsFormat : public TCustomTextShape
{
	typedef TCustomTextShape inherited;
	
__published:
	__property Bevel = {default=0};
	__property BevelWidth = {default=2};
	__property Brush;
	__property Children;
	__property ChildLayout = {default=0};
	__property Emboss;
	__property Font;
	__property Frame;
	__property Gradient;
	__property Picture;
	__property RoundSize = {default=16};
	__property Shadow;
	__property ShapeStyle = {default=0};
	__property Transparency = {default=0};
	__property Transparent;
	__property Visible = {default=1};
	__property ClipText = {default=1};
	__property Cursor = {default=0};
	__property Margins;
	__property TextAlignment = {default=2};
	__property TextFormat = {default=0};
	__property VertTextAlign = {default=0};
public:
	/* TCustomTextShape.Create */ inline __fastcall virtual TAxisLabelsFormat(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TCustomTextShape(AOwner) { }
	/* TCustomTextShape.Destroy */ inline __fastcall virtual ~TAxisLabelsFormat() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TAxisItem : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TAxisLabelsFormat* FFormat;
	int FLabelPos;
	Vcltee::Tecanvas::TTeePicture* FPicture;
	System::UnicodeString FText;
	double FValue;
	TAxisItems* IAxisItems;
	TAxisLabelsFormat* __fastcall GetFormat();
	void __fastcall SetFormat(TAxisLabelsFormat* const Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetValue(const double Value);
	
protected:
	TAxisLabelsFormat* __fastcall ActiveFormat();
	
public:
	__fastcall virtual ~TAxisItem();
	void __fastcall Repaint();
	__property int LabelPos = {read=FLabelPos, write=FLabelPos, nodefault};
	__property Vcltee::Tecanvas::TTeePicture* Picture = {read=FPicture};
	
__published:
	__property TAxisLabelsFormat* Format = {read=GetFormat, write=SetFormat};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property double Value = {read=FValue, write=SetValue};
public:
	/* TObject.Create */ inline __fastcall TAxisItem() : System::Classes::TPersistent() { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeHover : public TCustomTextShape
{
	typedef TCustomTextShape inherited;
	
public:
	__fastcall virtual TTeeHover(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	
__published:
	__property Visible;
public:
	/* TCustomTextShape.Destroy */ inline __fastcall virtual ~TTeeHover() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeSelected : public TCustomTextShape
{
	typedef TCustomTextShape inherited;
	
private:
	TTeeHover* FHover;
	int FHoverIndex;
	int FItemIndex;
	System::TObject* IElement;
	void __fastcall DoRepaint();
	void __fastcall SetHover(TTeeHover* const Value);
	void __fastcall SetHoverIndex(const int Value);
	void __fastcall SetItemIndex(const int Value);
	
public:
	__fastcall TTeeSelected(System::TObject* const AOwner);
	__fastcall virtual ~TTeeSelected();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property int HoverIndex = {read=FHoverIndex, write=SetHoverIndex, default=-1};
	__property int ItemIndex = {read=FItemIndex, write=SetItemIndex, default=-1};
	
__published:
	__property TTeeHover* Hover = {read=FHover, write=SetHover};
public:
	/* TCustomTextShape.Create */ inline __fastcall virtual TTeeSelected(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TCustomTextShape(AOwner) { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TAxisItems : public System::Generics::Collections::TObjectList__1<TAxisItem*>
{
	typedef System::Generics::Collections::TObjectList__1<TAxisItem*> inherited;
	
public:
	TAxisItem* operator[](int Index) { return this->Item[Index]; }
	
private:
	bool FAuto;
	TAxisLabelsFormat* FFormat;
	TTeeSelected* FSelected;
	TChartAxis* IAxis;
	int IHeight;
	bool IRemoving;
	TAxisItem* __fastcall Get(int Index);
	TTeeSelected* __fastcall GetSelected();
	TAxisItem* __fastcall InternalAdd(const double Value, const System::UnicodeString Text = System::UnicodeString(), Vcltee::Tecanvas::TTeePicture* const APicture = (Vcltee::Tecanvas::TTeePicture*)(0x0));
	void __fastcall ReadItems(System::Classes::TStream* Stream);
	void __fastcall SetAuto(const bool Value);
	void __fastcall WriteItems(System::Classes::TStream* Stream);
	
protected:
	bool IDrawAll;
	System::Types::TRect IRect;
	System::Types::TRect __fastcall RectOf(int Index);
	void __fastcall InitCalcRect();
	
public:
	__fastcall TAxisItems(TChartAxis* const Axis);
	__fastcall virtual ~TAxisItems();
	HIDESBASE TAxisItem* __fastcall Add(const double Value, const System::UnicodeString Text = System::UnicodeString());
	void __fastcall CopyFrom(TAxisItems* const Source);
	HIDESBASE void __fastcall Delete(int Index);
	__property bool Automatic = {read=FAuto, write=SetAuto, default=1};
	__property TAxisLabelsFormat* Format = {read=FFormat};
	__property TTeeSelected* Selected = {read=GetSelected};
	__property TAxisItem* Item[int Index] = {read=Get/*, default*/};
};


enum DECLSPEC_DENUM TPenLineMode : unsigned char { lmLine, lmCylinder, lmRectangle };

typedef Vcltee::Tecanvas::TTeePen TChartPen;

class PASCALIMPLEMENTATION TChartAxisPen : public Vcltee::Tecanvas::TTeePen
{
	typedef Vcltee::Tecanvas::TTeePen inherited;
	
private:
	TPenLineMode FLineMode;
	void __fastcall SetLineMode(const TPenLineMode Value);
	
public:
	__fastcall TChartAxisPen(const System::Classes::TNotifyEvent OnChangeEvent);
	
__published:
	__property EndStyle = {default=2};
	__property TPenLineMode LineMode = {read=FLineMode, write=SetLineMode, default=0};
	__property Width = {default=2};
public:
	/* TTeePen.Destroy */ inline __fastcall virtual ~TChartAxisPen() { }
	
};


class PASCALIMPLEMENTATION TAutomaticText : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FHide;
	bool FMove;
	bool FResize;
	bool FRotate;
	bool FTrim;
	bool FWrap;
	System::Classes::TNotifyEvent IOnChange;
	void __fastcall SetBooleanProperty(bool &Variable, const bool Value);
	void __fastcall SetHide(const bool Value);
	void __fastcall SetMove(const bool Value);
	void __fastcall SetResize(const bool Value);
	void __fastcall SetRotate(const bool Value);
	void __fastcall SetTrim(const bool Value);
	void __fastcall SetWrap(const bool Value);
	
public:
	__fastcall TAutomaticText(const System::Classes::TNotifyEvent AOnChange);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool Hide = {read=FHide, write=SetHide, default=1};
	__property bool Move = {read=FMove, write=SetMove, default=1};
	__property bool Resize = {read=FResize, write=SetResize, default=1};
	__property bool Rotate = {read=FRotate, write=SetRotate, default=1};
	__property bool Trim = {read=FTrim, write=SetTrim, default=1};
	__property bool Wrap = {read=FWrap, write=SetWrap, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TAutomaticText() { }
	
};


typedef void __fastcall (__closure *TAxisDrawLabelEvent)(TChartAxis* Sender, int &X, int &Y, int &Z, System::UnicodeString &Text, bool &DrawLabel);

typedef void __fastcall (__closure *TAxisDrawGrids)(TChartAxis* Sender);

typedef void __fastcall (__closure *TAxisOnGetNextLabel)(TChartAxis* Sender, int LabelIndex, double &LabelValue, bool &Stop);

typedef void __fastcall (__closure *TChartAxisLabelValue)(TChartAxis* Sender, double &tmpValue);

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartCustomAxes : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TChartAxis* operator[](int Index) { return this->Items[Index]; }
	
private:
	TChartAxis* __fastcall Get(int Index);
	void __fastcall Put(int Index, TChartAxis* const Value);
	
public:
	HIDESBASE TChartAxis* __fastcall Add();
	void __fastcall ResetScales(TChartAxis* const Axis);
	__property TChartAxis* Items[int Index] = {read=Get, write=Put/*, default*/};
public:
	/* TOwnedCollection.Create */ inline __fastcall TChartCustomAxes(System::Classes::TPersistent* AOwner, System::Classes::TCollectionItemClass ItemClass) : System::Classes::TOwnedCollection(AOwner, ItemClass) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TChartCustomAxes() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TAxisLabelsPosition : unsigned char { lpAtTick, lpBeforeTick, lpAfterTick, lpCenter };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TAxisLabels : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TAxisLabelAlign FAlign;
	bool FAlternate;
	int FAngle;
	TAutomaticText* FAutomatic;
	bool FBehind;
	bool FGridIgnoresSize;
	int FMargin;
	bool FOnAxis;
	int FSeparation;
	int FSize;
	TAxisLabelStyle FStyle;
	bool FExponent;
	bool FMultiLine;
	bool FRoundFirst;
	TAxisLabelsPosition FPosition;
	bool FUseImages;
	int IHeightFactor;
	int IMaxImageHeight;
	Vcltee::Tecanvas::TTeeFont* __fastcall GetFont();
	TAxisLabelsFormat* __fastcall GetFormat();
	TTeeSelected* __fastcall GetSelected();
	bool __fastcall GetVisible();
	TCustomAxisPanel* __fastcall ParentChart();
	void __fastcall SetAlign(const TAxisLabelAlign Value);
	void __fastcall SetAlternate(const bool Value);
	void __fastcall SetAngle(const int Value);
	void __fastcall SetAutomatic(TAutomaticText* const Value);
	void __fastcall SetBehind(const bool Value);
	void __fastcall SetExponent(const bool Value);
	void __fastcall SetFont(Vcltee::Tecanvas::TTeeFont* const Value);
	void __fastcall SetFormat(TAxisLabelsFormat* const Value);
	void __fastcall SetGridIgnoresSize(const bool Value);
	void __fastcall SetMargin(const int Value);
	void __fastcall SetMultiLine(const bool Value);
	void __fastcall SetOnAxis(const bool Value);
	void __fastcall SetPosition(const TAxisLabelsPosition Value);
	void __fastcall SetRoundFirst(const bool Value);
	void __fastcall SetSelected(TTeeSelected* const Value);
	void __fastcall SetSeparation(const int Value);
	void __fastcall SetSize(const int Value);
	void __fastcall SetStyle(const TAxisLabelStyle Value);
	void __fastcall SetUseImages(const bool Value);
	void __fastcall SetVisible(const bool Value);
	
protected:
	TChartAxis* Axis;
	
public:
	__fastcall TAxisLabels();
	__fastcall virtual ~TAxisLabels();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TAutomaticText* Automatic = {read=FAutomatic, write=SetAutomatic};
	
__published:
	__property TAxisLabelAlign Align = {read=FAlign, write=SetAlign, default=0};
	__property bool Alternate = {read=FAlternate, write=SetAlternate, default=0};
	__property int Angle = {read=FAngle, write=SetAngle, default=0};
	__property bool Behind = {read=FBehind, write=SetBehind, default=0};
	__property bool Exponent = {read=FExponent, write=SetExponent, default=0};
	__property Vcltee::Tecanvas::TTeeFont* Font = {read=GetFont, write=SetFont, stored=false};
	__property TAxisLabelsFormat* Format = {read=GetFormat, write=SetFormat};
	__property bool GridIgnoresLabelSize = {read=FGridIgnoresSize, write=SetGridIgnoresSize, default=0};
	__property int MarginToAxis = {read=FMargin, write=SetMargin, default=10};
	__property bool MultiLine = {read=FMultiLine, write=SetMultiLine, default=0};
	__property bool OnAxis = {read=FOnAxis, write=SetOnAxis, default=1};
	__property bool RoundFirst = {read=FRoundFirst, write=SetRoundFirst, default=1};
	__property TTeeSelected* Selected = {read=GetSelected, write=SetSelected};
	__property int Separation = {read=FSeparation, write=SetSeparation, default=10};
	__property int Size = {read=FSize, write=SetSize, default=0};
	__property TAxisLabelStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property TAxisLabelsPosition Position = {read=FPosition, write=SetPosition, default=0};
	__property bool UseImages = {read=FUseImages, write=SetUseImages, default=1};
	__property bool Visible = {read=GetVisible, write=SetVisible, default=1};
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef Vcltee::Tecanvas::TTeeHiddenPen TChartHiddenPen;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TAxisBackShape : public Vcltee::Teeprocs::TTeeShape
{
	typedef Vcltee::Teeprocs::TTeeShape inherited;
	
__published:
	__property Transparency = {default=0};
	__property Visible = {default=0};
public:
	/* TTeeCustomShape.Create */ inline __fastcall virtual TAxisBackShape(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : Vcltee::Teeprocs::TTeeShape(AOwner) { }
	/* TTeeCustomShape.Destroy */ inline __fastcall virtual ~TAxisBackShape() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TTicks : public Vcltee::Tecanvas::TDarkGrayPen
{
	typedef Vcltee::Tecanvas::TDarkGrayPen inherited;
	
public:
	/* TDarkGrayPen.Create */ inline __fastcall TTicks(const System::Classes::TNotifyEvent OnChangeEvent) : Vcltee::Tecanvas::TDarkGrayPen(OnChangeEvent) { }
	
public:
	/* TTeePen.Destroy */ inline __fastcall virtual ~TTicks() { }
	
};


typedef System::DynamicArray<int> TAxisTicks;

typedef System::Extended TAxisValueExtended;

class PASCALIMPLEMENTATION TChartAxis : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FAutomatic;
	bool FAutomaticMaximum;
	bool FAutomaticMinimum;
	double FDesiredIncrement;
	double FMaximumValue;
	double FMinimumValue;
	bool FLogarithmic;
	double FLogarithmicBase;
	int FMaximumOffset;
	int FMinimumOffset;
	bool FMaximumRound;
	bool FMinimumRound;
	bool FResizeChart;
	TAxisItems* FAxisItems;
	TAxisLabels* FLabels;
	int FPosLabels;
	System::UnicodeString FAxisValuesFormat;
	System::UnicodeString FDateTimeFormat;
	bool FExactDateTime;
	TChartAxisPen* FAxis;
	int FPosAxis;
	double FZPosition;
	int FTitleSize;
	int FPosTitle;
	TAxisGridPen* FGrid;
	Vcltee::Tecanvas::TTeeHiddenPen* FMinorGrid;
	int FMinorTickCount;
	int FMinorTickLength;
	TTicks* FMinorTicks;
	TTicks* FTicks;
	TTicks* FTicksInner;
	int FTickInnerLength;
	int FTickLength;
	bool FTickOnLabelsOnly;
	bool FUsePartnerAxis;
	TChartAxis* FPartnerAxis;
	TChartCustomAxes* FSubAxes;
	bool FInverted;
	bool FHorizontal;
	bool FOtherSide;
	TCustomAxisPanel* FParentChart;
	bool FVisible;
	double FStartPosition;
	double FEndPosition;
	double FPositionPercent;
	Vcltee::Teeprocs::TTeeUnits FPosUnits;
	TAxisBackShape* FShape;
	TAxisDrawLabelEvent FOnDrawLabel;
	TChartAxis* FMaster;
	bool IAxisDateTime;
	System::UnicodeString IAxisID;
	double IAxisLogSizeRange;
	int ICenterPos;
	bool IDepthAxis;
	double ILogMax;
	double ILogMin;
	System::Extended IRange;
	System::Extended IRangeLog;
	bool IRangeZero;
	TCustomSeriesList* ISeriesList;
	bool IsVisible;
	int IWallSize;
	int IZPos;
	void __fastcall AssignToSub(TChartAxis* const Axis);
	void __fastcall CalcAllSeries();
	bool __fastcall CalcIsDateTime(const Vcltee::Teeprocs::TDateTimeStep ADateTime);
	void __fastcall CalcRoundScales();
	int __fastcall DepthAxisAlign();
	int __fastcall DepthAxisPos();
	bool __fastcall GetAxisSeriesLabel(const TAxisLabelStyle AStyle, TChartSeries* const ASeries, int AIndex, /* out */ double &AValue, /* out */ System::UnicodeString &ALabel, /* out */ Vcltee::Tecanvas::TTeePicture* &APicture);
	TChartAxisTitle* __fastcall GetAxisTitle();
	TAxisLabelAlign __fastcall GetLabelsAlign();
	bool __fastcall GetLabelsAlternate();
	int __fastcall GetLabelsAngle();
	bool __fastcall GetLabelsBehind();
	bool __fastcall GetLabelsExponent();
	bool __fastcall GetLabelsGridIgnoresSize();
	bool __fastcall GetLabelsMultiLine();
	bool __fastcall GetLabelsOnAxis();
	int __fastcall GetLabelsSeparation();
	int __fastcall GetLabelsSize();
	TAxisLabelStyle __fastcall GetLabelStyle();
	bool __fastcall GetRoundFirstLabel();
	TChartAxis* __fastcall GetParentAxis();
	int __fastcall InflateAxisPos(int Value, int Amount);
	void __fastcall InflateAxisRect(System::Types::TRect &R, const int Value);
	double __fastcall RoundLogPower(const System::Extended Value);
	void __fastcall SetAutomatic(bool Value);
	void __fastcall SetAutomaticMinimum(bool Value);
	void __fastcall SetAutomaticMaximum(bool Value);
	void __fastcall SetAutoMinMax(bool &Variable, bool Var2, bool Value);
	void __fastcall SetAxis(TChartAxisPen* const Value);
	void __fastcall SetAxisTitle(TChartAxisTitle* const Value);
	void __fastcall SetDateTimeFormat(const System::UnicodeString Value);
	void __fastcall SetDesiredIncrement(const double Value);
	void __fastcall SetExactDateTime(bool Value);
	void __fastcall SetGrid(TAxisGridPen* const Value);
	void __fastcall SetGridCentered(bool Value);
	void __fastcall SetLabels(bool Value);
	void __fastcall SetLabelsAlign(TAxisLabelAlign Value);
	void __fastcall SetLabelsAlternate(bool Value);
	void __fastcall SetLabelsAngle(const int Value);
	void __fastcall SetLabelsFont(Vcltee::Tecanvas::TTeeFont* const Value);
	void __fastcall SetLabelsFormat(TAxisLabelsFormat* const Value);
	void __fastcall SetLabelsMultiLine(bool Value);
	void __fastcall SetLabelsOnAxis(bool Value);
	void __fastcall SetLabelsSeparation(int Value);
	void __fastcall SetLabelsSize(int Value);
	void __fastcall SetLabelStyle(TAxisLabelStyle Value);
	void __fastcall SetLabelsBehind(bool Value);
	void __fastcall SetLabelsGridIgnoresSize(bool Value);
	void __fastcall SetLogarithmic(bool Value);
	void __fastcall SetLogarithmicBase(const double Value);
	void __fastcall SetMaximum(const double Value);
	void __fastcall SetMinimum(const double Value);
	void __fastcall SetMaximumRound(const bool Value);
	void __fastcall SetMinimumRound(const bool Value);
	void __fastcall SetMinorGrid(Vcltee::Tecanvas::TTeeHiddenPen* const Value);
	void __fastcall SetMinorTickCount(int Value);
	void __fastcall SetMinorTickLength(int Value);
	void __fastcall SetMinorTicks(TTicks* const Value);
	void __fastcall SetShape(TAxisBackShape* const Value);
	void __fastcall SetStartPosition(const double Value);
	void __fastcall SetEndPosition(const double Value);
	void __fastcall SetPositionPercent(const double Value);
	void __fastcall SetPosUnits(const Vcltee::Teeprocs::TTeeUnits Value);
	void __fastcall SetRoundFirstLabel(bool Value);
	void __fastcall SetTickLength(int Value);
	void __fastcall SetTickInnerLength(int Value);
	void __fastcall SetTicks(TTicks* const Value);
	void __fastcall SetTicksInner(TTicks* const Value);
	void __fastcall SetTickOnLabelsOnly(bool Value);
	void __fastcall SetTitleSize(int Value);
	void __fastcall SetValuesFormat(const System::UnicodeString Value);
	void __fastcall SetVisible(bool Value);
	int __fastcall ApplyPosition(int APos, const System::Types::TRect &R);
	double __fastcall CalcDateTimeIncrement(int MaxNumLabels);
	double __fastcall CalcLabelsIncrement(int MaxNumLabels);
	void __fastcall CalcRect(System::Types::TRect &R, bool InflateChartRectangle);
	int __fastcall CalcZPos();
	void __fastcall DrawGridLine(int tmp);
	bool __fastcall GetGridCentered();
	bool __fastcall GetLabels();
	Vcltee::Tecanvas::TTeeFont* __fastcall GetLabelsFont();
	TAxisLabelsFormat* __fastcall GetLabelsFormat();
	int __fastcall GetRectangleEdge(const System::Types::TRect &R);
	TAxisBackShape* __fastcall GetShape();
	TChartCustomAxes* __fastcall GetSubAxes();
	bool __fastcall IncDec(bool Increment, double &Value, const double AnIncrement, const Vcltee::Teeprocs::TDateTimeStep ADateTime)/* overload */;
	bool __fastcall IncDec(bool Increment, double &Value, const double AnIncrement)/* overload */;
	int __fastcall InternalCalcDepthPosValue(const double Value);
	void __fastcall InternalCalcRange();
	void __fastcall InternalCalcPositions();
	int __fastcall InternalCalcSize(TCustomTextShape* const AFormat, int AAngle, const System::UnicodeString AText, int ASize);
	int __fastcall InternalLabelSize(const double Value, bool IsWidth);
	void __fastcall MaxLabelsValue(/* out */ int &AWidth, /* out */ int &ALines);
	bool __fastcall IsAxisValuesFormatStored();
	bool __fastcall IsCustom();
	bool __fastcall IsEndStored();
	bool __fastcall IsLogBaseStored();
	bool __fastcall IsMaxStored();
	bool __fastcall IsMinStored();
	bool __fastcall IsPosStored();
	bool __fastcall IsShapeStored();
	bool __fastcall IsStartStored();
	bool __fastcall IsSubAxesStored();
	bool __fastcall IsZStored();
	int __fastcall LogXPosValue(const double Value);
	int __fastcall LogYPosValue(const double Value);
	int __fastcall MaxImageWidth();
	void __fastcall SetHorizontal(const bool Value);
	void __fastcall SetCalcPosValue();
	void __fastcall SetOtherSide(const bool Value);
	void __fastcall SetLabelsExponent(bool Value);
	void __fastcall SetMaximumOffset(const int Value);
	void __fastcall SetMinimumOffset(const int Value);
	void __fastcall SetSubAxes(TChartCustomAxes* const Value);
	void __fastcall SetZPosition(const double Value);
	int __fastcall XPosValue(const double Value);
	int __fastcall YPosValue(const double Value);
	int __fastcall XPosValueCheck(const double Value);
	int __fastcall YPosValueCheck(const double Value);
	
protected:
	bool IAxisGeo;
	TChartAxisTitle* FAxisTitle;
#ifndef _WIN64
	double IAxisSizeRange;
#else /* _WIN64 */
	System::Extended IAxisSizeRange;
#endif /* _WIN64 */
	int IExtraSpace;
	int IGapSize;
	bool IHideBackGrid;
	bool IHideSideGrid;
	bool IUseTeeMaxPixelPos;
	double IMaximum;
	double IMinimum;
	TAxisOnGetNextLabel OnCalcMaxLabel;
	System::Classes::TNotifyEvent OnDrawAxis;
	TChartAxisLabelValue OnNextLabelValue;
	Vcltee::Tecanvas::TTeeTransform* Transform;
	TAxisDrawGrids OnDrawGrids;
	__fastcall TChartAxis(TCustomAxisPanel* const AParent, System::Classes::TCollection* const Collection);
	System::Types::TRect __fastcall AxisRect();
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall DrawGrids(int NumTicks);
	void __fastcall DrawLineSegment(int AStart, int AEnd);
	void __fastcall DrawTitle(int X, int Y);
	virtual TAxisLabelStyle __fastcall InternalCalcLabelStyle();
	void __fastcall InternalSetInverted(bool Value);
	void __fastcall InternalSetMaximum(const double Value);
	void __fastcall InternalSetMinimum(const double Value);
	void __fastcall RecalcSizeCenter();
	virtual void __fastcall SetInverted(bool Value);
	void __fastcall SetItems(TAxisItems* const Value);
	int __fastcall SizeLabels();
	int __fastcall SizeTickAxis(const bool UseTickLength = true);
	__property double InternalMaximum = {read=IMaximum};
	__property double InternalMinimum = {read=IMinimum};
	
public:
	int IStartPos;
	int IEndPos;
	int IAxisSize;
	TAxisCalcPos CalcXPosValue;
	TAxisCalcPos CalcYPosValue;
	TAxisCalcPos CalcPosValue;
	TAxisCalcPosPoint CalcPosPoint;
	TAxisTicks Tick;
	__fastcall TChartAxis(TCustomAxisPanel* const Chart)/* overload */;
	__fastcall virtual TChartAxis(System::Classes::TCollection* Collection)/* overload */;
	__fastcall virtual ~TChartAxis();
	void __fastcall AdjustMaxMin();
	void __fastcall AdjustMaxMinRect(const System::Types::TRect &Rect);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	double __fastcall CalcIncrement();
	TAxisLabelStyle __fastcall CalcLabelStyle();
	void __fastcall CalcMinMax(/* out */ double &AMin, /* out */ double &AMax);
	double __fastcall InternalCalcPosPoint(const int Value);
	int __fastcall CalcSizeValue(const double Value)/* overload */;
	int __fastcall CalcSizeValue(const double Start, const double Finish)/* overload */;
	double __fastcall CalcXYIncrement(int MaxLabelSize);
	void __fastcall CustomDraw(int APosLabels, int APosTitle, int APosAxis, bool GridVisible);
	void __fastcall CustomDrawMinMax(int APosLabels, int APosTitle, int APosAxis, bool GridVisible, const double AMinimum, const double AMaximum, const double AIncrement);
	void __fastcall CustomDrawMinMaxStartEnd(int APosLabels, int APosTitle, int APosAxis, bool GridVisible, const double AMinimum, const double AMaximum, const double AIncrement, int AStartPos, int AEndPos);
	void __fastcall CustomDrawStartEnd(int APosLabels, int APosTitle, int APosAxis, bool GridVisible, int AStartPos, int AEndPos);
	bool __fastcall Clicked(const System::Types::TPoint &P)/* overload */;
	bool __fastcall Clicked(int x, int y)/* overload */;
	void __fastcall Draw(bool CalcPosAxis);
	void __fastcall DrawAxisLabel(int x, int y, int Angle, const System::UnicodeString St, TCustomTextShape* Format = (TCustomTextShape*)(0x0), int z = 0x0, Vcltee::Tecanvas::TTeePicture* const APicture = (Vcltee::Tecanvas::TTeePicture*)(0x0), int ItemIndex = 0xffffffff);
	void __fastcall Hide();
	bool __fastcall IsDateTime();
	int __fastcall LabelWidth(const double Value);
	int __fastcall LabelHeight(const double Value);
	virtual System::UnicodeString __fastcall LabelValue(const double Value);
	int __fastcall MaxLabelsWidth();
	void __fastcall Scroll(const double Offset, bool CheckLimits = false);
	void __fastcall SetMinMax(const double AMin, const double AMax);
	static System::UnicodeString __fastcall ToDegree(const float Value)/* overload */;
	static System::UnicodeString __fastcall ToDegree(const float Value, const bool IsLat)/* overload */;
	__property int CenterPosition = {read=ICenterPos, nodefault};
	__property bool IsDepthAxis = {read=IDepthAxis, nodefault};
	__property TAxisItems* Items = {read=FAxisItems, write=SetItems};
	__property TChartAxis* MasterAxis = {read=FMaster, write=FMaster};
	__property int PosAxis = {read=FPosAxis, nodefault};
	__property int PosLabels = {read=FPosLabels, nodefault};
	__property int PosTitle = {read=FPosTitle, nodefault};
	__property TCustomAxisPanel* ParentChart = {read=FParentChart};
	__property TAxisLabels* Texts = {read=FLabels};
	__property bool ResizeChart = {read=FResizeChart, write=FResizeChart, nodefault};
	
__published:
	__property bool Automatic = {read=FAutomatic, write=SetAutomatic, default=1};
	__property bool AutomaticMaximum = {read=FAutomaticMaximum, write=SetAutomaticMaximum, default=1};
	__property bool AutomaticMinimum = {read=FAutomaticMinimum, write=SetAutomaticMinimum, default=1};
	__property TChartAxisPen* Axis = {read=FAxis, write=SetAxis};
	__property System::UnicodeString AxisValuesFormat = {read=FAxisValuesFormat, write=SetValuesFormat, stored=IsAxisValuesFormatStored};
	__property System::UnicodeString DateTimeFormat = {read=FDateTimeFormat, write=SetDateTimeFormat};
	__property bool ExactDateTime = {read=FExactDateTime, write=SetExactDateTime, default=1};
	__property TAxisGridPen* Grid = {read=FGrid, write=SetGrid};
	__property bool GridCentered = {read=GetGridCentered, write=SetGridCentered, default=0};
	__property double Increment = {read=FDesiredIncrement, write=SetDesiredIncrement};
	__property bool Inverted = {read=FInverted, write=SetInverted, default=0};
	__property bool Horizontal = {read=FHorizontal, write=SetHorizontal, stored=IsCustom, nodefault};
	__property bool OtherSide = {read=FOtherSide, write=SetOtherSide, stored=IsCustom, nodefault};
	__property bool Labels = {read=GetLabels, write=SetLabels, default=1};
	__property TAxisLabelAlign LabelsAlign = {read=GetLabelsAlign, write=SetLabelsAlign, default=0};
	__property bool LabelsAlternate = {read=GetLabelsAlternate, write=SetLabelsAlternate, default=0};
	__property int LabelsAngle = {read=GetLabelsAngle, write=SetLabelsAngle, default=0};
	__property bool LabelsBehind = {read=GetLabelsBehind, write=SetLabelsBehind, default=0};
	__property bool LabelsExponent = {read=GetLabelsExponent, write=SetLabelsExponent, default=0};
	__property Vcltee::Tecanvas::TTeeFont* LabelsFont = {read=GetLabelsFont, write=SetLabelsFont, stored=false};
	__property TAxisLabelsFormat* LabelsFormat = {read=GetLabelsFormat, write=SetLabelsFormat};
	__property bool LabelsGridIgnoresLabelSize = {read=GetLabelsGridIgnoresSize, write=SetLabelsGridIgnoresSize, default=0};
	__property bool LabelsMultiLine = {read=GetLabelsMultiLine, write=SetLabelsMultiLine, default=0};
	__property bool LabelsOnAxis = {read=GetLabelsOnAxis, write=SetLabelsOnAxis, default=1};
	__property int LabelsSeparation = {read=GetLabelsSeparation, write=SetLabelsSeparation, default=10};
	__property int LabelsSize = {read=GetLabelsSize, write=SetLabelsSize, default=0};
	__property TAxisLabelStyle LabelStyle = {read=GetLabelStyle, write=SetLabelStyle, default=0};
	__property bool Logarithmic = {read=FLogarithmic, write=SetLogarithmic, default=0};
	__property double LogarithmicBase = {read=FLogarithmicBase, write=SetLogarithmicBase, stored=IsLogBaseStored};
	__property double Maximum = {read=FMaximumValue, write=SetMaximum, stored=IsMaxStored};
	__property int MaximumOffset = {read=FMaximumOffset, write=SetMaximumOffset, default=0};
	__property bool MaximumRound = {read=FMaximumRound, write=SetMaximumRound, default=0};
	__property double Minimum = {read=FMinimumValue, write=SetMinimum, stored=IsMinStored};
	__property int MinimumOffset = {read=FMinimumOffset, write=SetMinimumOffset, default=0};
	__property bool MinimumRound = {read=FMinimumRound, write=SetMinimumRound, default=0};
	__property Vcltee::Tecanvas::TTeeHiddenPen* MinorGrid = {read=FMinorGrid, write=SetMinorGrid};
	__property int MinorTickCount = {read=FMinorTickCount, write=SetMinorTickCount, default=3};
	__property int MinorTickLength = {read=FMinorTickLength, write=SetMinorTickLength, default=2};
	__property TTicks* MinorTicks = {read=FMinorTicks, write=SetMinorTicks};
	__property double StartPosition = {read=FStartPosition, write=SetStartPosition, stored=IsStartStored};
	__property double EndPosition = {read=FEndPosition, write=SetEndPosition, stored=IsEndStored};
	__property double PositionPercent = {read=FPositionPercent, write=SetPositionPercent, stored=IsPosStored};
	__property TChartAxis* PartnerAxis = {read=FPartnerAxis, write=FPartnerAxis};
	__property Vcltee::Teeprocs::TTeeUnits PositionUnits = {read=FPosUnits, write=SetPosUnits, default=0};
	__property bool RoundFirstLabel = {read=GetRoundFirstLabel, write=SetRoundFirstLabel, default=1};
	__property TAxisBackShape* Shape = {read=GetShape, write=SetShape, stored=IsShapeStored};
	__property TChartCustomAxes* SubAxes = {read=GetSubAxes, write=SetSubAxes, stored=IsSubAxesStored};
	__property int TickInnerLength = {read=FTickInnerLength, write=SetTickInnerLength, default=0};
	__property int TickLength = {read=FTickLength, write=SetTickLength, default=4};
	__property TTicks* Ticks = {read=FTicks, write=SetTicks};
	__property TTicks* TicksInner = {read=FTicksInner, write=SetTicksInner};
	__property bool TickOnLabelsOnly = {read=FTickOnLabelsOnly, write=SetTickOnLabelsOnly, default=1};
	__property TChartAxisTitle* Title = {read=GetAxisTitle, write=SetAxisTitle};
	__property int TitleSize = {read=FTitleSize, write=SetTitleSize, default=0};
	__property bool UsePartnerAxis = {read=FUsePartnerAxis, write=FUsePartnerAxis, default=0};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property double ZPosition = {read=FZPosition, write=SetZPosition, stored=IsZStored};
	__property TAxisDrawLabelEvent OnDrawLabel = {read=FOnDrawLabel, write=FOnDrawLabel};
};


class PASCALIMPLEMENTATION TChartDepthAxis : public TChartAxis
{
	typedef TChartAxis inherited;
	
private:
	bool FLabelsAsTitles;
	void __fastcall SetLabelsAsTitles(bool Value);
	
protected:
	virtual TAxisLabelStyle __fastcall InternalCalcLabelStyle();
	virtual void __fastcall SetInverted(bool Value);
	
public:
	__fastcall TChartDepthAxis(TCustomAxisPanel* const Chart)/* overload */;
	__fastcall virtual TChartDepthAxis(System::Classes::TCollection* Collection)/* overload */;
	
__published:
	__property bool LabelsAsSeriesTitles = {read=FLabelsAsTitles, write=SetLabelsAsTitles, default=1};
	__property Visible = {default=0};
protected:
	/* TChartAxis.CreateWithParent */ inline __fastcall TChartDepthAxis(TCustomAxisPanel* const AParent, System::Classes::TCollection* const Collection) : TChartAxis(AParent, Collection) { }
	
public:
	/* TChartAxis.Destroy */ inline __fastcall virtual ~TChartDepthAxis() { }
	
};


typedef void __fastcall (__closure *TAxisOnGetLabel)(TChartAxis* Sender, TChartSeries* Series, int ValueIndex, System::UnicodeString &LabelText);

typedef void __fastcall (__closure *TSeriesClick)(TChartSeries* Sender, int ValueIndex, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);

enum DECLSPEC_DENUM TValueEvent : unsigned char { veClear, veAdd, veDelete, veRefresh, veModify };

enum DECLSPEC_DENUM THorizAxis : unsigned char { aTopAxis, aBottomAxis, aBothHorizAxis, aCustomHorizAxis };

enum DECLSPEC_DENUM TVertAxis : unsigned char { aLeftAxis, aRightAxis, aBothVertAxis, aCustomVertAxis };

enum DECLSPEC_DENUM TChartClickedPartStyle : unsigned char { cpNone, cpLegend, cpAxis, cpSeries, cpTitle, cpFoot, cpChartRect, cpSeriesMarks, cpSeriesPointer, cpSubTitle, cpSubFoot, cpAxisTitle };

#pragma pack(push,1)
struct DECLSPEC_DRECORD TChartClickedPart
{
public:
	TChartClickedPartStyle Part;
	int PointIndex;
	TChartSeries* ASeries;
	TChartAxis* AAxis;
};
#pragma pack(pop)


class PASCALIMPLEMENTATION TCustomSeriesList : public System::Generics::Collections::TList__1<TChartSeries*>
{
	typedef System::Generics::Collections::TList__1<TChartSeries*> inherited;
	
private:
	TCustomAxisPanel* FOwner;
	
public:
	void __fastcall ClearValues();
	void __fastcall FillSampleValues(int Num = 0x0);
	HIDESBASE TChartSeries* __fastcall First();
	HIDESBASE TChartSeries* __fastcall Last();
	__property TCustomAxisPanel* Owner = {read=FOwner};
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TCustomSeriesList()/* overload */ : System::Generics::Collections::TList__1<TChartSeries*>() { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TCustomSeriesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TChartSeries*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TChartSeries*>(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TCustomSeriesList(System::Generics::Collections::TEnumerable__1<TChartSeries*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TChartSeries*>(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TCustomSeriesList(TChartSeries* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TChartSeries*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Destroy */ inline __fastcall virtual ~TCustomSeriesList() { }
	
};


class PASCALIMPLEMENTATION TChartSeriesList : public TCustomSeriesList
{
	typedef TCustomSeriesList inherited;
	
private:
	TSeriesGroups* FGroups;
	bool __fastcall GetAllActive();
	void __fastcall SetAllActive(const bool Value);
	void __fastcall SetGroups(TSeriesGroups* const Value);
	
public:
	__fastcall virtual ~TChartSeriesList();
	TSeriesGroup* __fastcall AddGroup(const System::UnicodeString Name);
	void __fastcall Assign(TChartSeriesList* const Source);
	TChartSeries* __fastcall Clicked(const int X, const int Y, /* out */ int &ValueIndex);
	TChartSeries* __fastcall Find(const System::UnicodeString AName);
	__property bool AllActive = {read=GetAllActive, write=SetAllActive, nodefault};
	__property TSeriesGroups* Groups = {read=FGroups, write=SetGroups};
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TChartSeriesList()/* overload */ : TCustomSeriesList() { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TChartSeriesList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TChartSeries*> > AComparer)/* overload */ : TCustomSeriesList(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TChartSeriesList(System::Generics::Collections::TEnumerable__1<TChartSeries*>* const Collection)/* overload */ : TCustomSeriesList(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TChartSeriesList(TChartSeries* const *Values, const int Values_High)/* overload */ : TCustomSeriesList(Values, Values_High) { }
	
};


enum DECLSPEC_DENUM TSeriesGroupActive : unsigned char { gaYes, gaNo, gaSome };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TSeriesGroup : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::UnicodeString FName;
	TCustomSeriesList* FSeries;
	System::Classes::TStringList* FTempSeries;
	TSeriesGroupActive __fastcall GetActive();
	void __fastcall ReadSeries(System::Classes::TReader* Reader);
	void __fastcall SetActive(const TSeriesGroupActive Value);
	void __fastcall SetSeries(TCustomSeriesList* const Value);
	void __fastcall WriteSeries(System::Classes::TWriter* Writer);
	
protected:
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	
public:
	__fastcall virtual TSeriesGroup(System::Classes::TCollection* Collection)/* overload */;
	__fastcall virtual ~TSeriesGroup();
	void __fastcall Add(TChartSeries* const Series);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Hide();
	void __fastcall Show();
	__property TCustomSeriesList* Series = {read=FSeries, write=SetSeries};
	
__published:
	__property TSeriesGroupActive Active = {read=GetActive, write=SetActive, default=0};
	__property System::UnicodeString Name = {read=FName, write=FName};
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TSeriesGroups : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TSeriesGroup* operator[](int Index) { return this->Items[Index]; }
	
private:
	TSeriesGroup* __fastcall Get(int Index);
	void __fastcall Put(int Index, TSeriesGroup* const Value);
	
public:
	int __fastcall Contains(TChartSeries* const Series);
	TSeriesGroup* __fastcall FindByName(const System::UnicodeString Name, bool CaseSensitive = false);
	__property TSeriesGroup* Items[int Index] = {read=Get, write=Put/*, default*/};
public:
	/* TOwnedCollection.Create */ inline __fastcall TSeriesGroups(System::Classes::TPersistent* AOwner, System::Classes::TCollectionItemClass ItemClass) : System::Classes::TOwnedCollection(AOwner, ItemClass) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TSeriesGroups() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef int __fastcall (__closure *TAxisCalcPosLabels)(TChartAxis* Axis, int Value);

class PASCALIMPLEMENTATION TChartAxes : public System::Generics::Collections::TObjectList__1<TChartAxis*>
{
	typedef System::Generics::Collections::TObjectList__1<TChartAxis*> inherited;
	
private:
	TCustomAxisPanel* FChart;
	bool IFastCalc;
	bool __fastcall GetAuto();
	TChartAxis* __fastcall GetBottomAxis();
	TChartDepthAxis* __fastcall GetDepthAxis();
	TChartDepthAxis* __fastcall GetDepthTopAxis();
	TChartAxis* __fastcall GetLeftAxis();
	TChartAxis* __fastcall GetRightAxis();
	TChartAxis* __fastcall GetTopAxis();
	bool __fastcall GetBehind();
	bool __fastcall GetVisible();
	void __fastcall SetAuto(const bool Value);
	void __fastcall SetBehind(const bool Value);
	void __fastcall SetFastCalc(const bool Value);
	void __fastcall SetVisible(const bool Value);
	
protected:
	TAxisCalcPosLabels CalcPosLabels;
	
public:
	HIDESBASE void __fastcall Clear();
	TChartAxis* __fastcall Clicked(int x, int y);
	void __fastcall Reset();
	void __fastcall Hide();
	__property TChartAxis* Bottom = {read=GetBottomAxis};
	__property TChartDepthAxis* Depth = {read=GetDepthAxis};
	__property TChartDepthAxis* DepthTop = {read=GetDepthTopAxis};
	__property TChartAxis* Left = {read=GetLeftAxis};
	__property TChartAxis* Right = {read=GetRightAxis};
	__property TChartAxis* Top = {read=GetTopAxis};
	__property bool Automatic = {read=GetAuto, write=SetAuto, nodefault};
	__property bool Behind = {read=GetBehind, write=SetBehind, nodefault};
	__property bool FastCalc = {read=IFastCalc, write=SetFastCalc, nodefault};
	__property bool Visible = {read=GetVisible, write=SetVisible, nodefault};
public:
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartAxis>.Create */ inline __fastcall TChartAxes()/* overload */ : System::Generics::Collections::TObjectList__1<TChartAxis*>() { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartAxis>.Create */ inline __fastcall TChartAxes(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TChartAxis*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartAxis>.Create */ inline __fastcall TChartAxes(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TChartAxis*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TChartAxis*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartAxis>.Create */ inline __fastcall TChartAxes(System::Generics::Collections::TEnumerable__1<TChartAxis*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TChartAxis*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartAxis>.Destroy */ inline __fastcall virtual ~TChartAxes() { }
	
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartAxis>.Create */ inline __fastcall TChartAxes(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TChartAxis*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TChartAxis*>(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartAxis>.Create */ inline __fastcall TChartAxes(System::Generics::Collections::TEnumerable__1<TChartAxis*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TChartAxis*>(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartAxis>.Create */ inline __fastcall TChartAxes(TChartAxis* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TChartAxis*>(Values, Values_High) { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeCustomDesigner : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	DYNAMIC void __fastcall Refresh();
	DYNAMIC void __fastcall Repaint();
public:
	/* TObject.Create */ inline __fastcall TTeeCustomDesigner() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTeeCustomDesigner() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TChartSeriesEvent : unsigned char { seAdd, seRemove, seChangeTitle, seChangeColor, seSwap, seChangeActive, seDataChanged, seAfterRemove };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartChangePage : public Vcltee::Teeprocs::TTeeEvent
{
	typedef Vcltee::Teeprocs::TTeeEvent inherited;
	
public:
	/* TObject.Create */ inline __fastcall TChartChangePage() : Vcltee::Teeprocs::TTeeEvent() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TChartChangePage() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TChartToolEvent : unsigned char { cteAfterDraw, cteBeforeDrawSeries, cteBeforeDraw, cteBeforeDrawAxes, cteAfterDrawSeries, cteMouseLeave };

enum DECLSPEC_DENUM TChartMouseEvent : unsigned char { cmeDown, cmeMove, cmeUp };

enum DECLSPEC_DENUM TWheelMouseEvent : unsigned char { wmeDown, wmeMove, wmeUp };

enum DECLSPEC_DENUM TChartDragDropEvent : unsigned char { cdeOver, cdeDrop, cdeStart, cdeEnd };

enum DECLSPEC_DENUM TChartKeyEvent : unsigned char { ckeDown, ckeUp, ckePress };

class PASCALIMPLEMENTATION TTeeCustomTool : public TCustomChartElement
{
	typedef TCustomChartElement inherited;
	
private:
	bool __fastcall SameClass(TTeeCustomTool* const tmpTool);
	
protected:
	virtual void __fastcall ChartEvent(TChartToolEvent AEvent);
	virtual void __fastcall ChartMouseEvent(TChartMouseEvent AEvent, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall ChartDragDropEvent(TChartDragDropEvent AEvent, System::TObject* Source, int X, int Y, System::Uitypes::TDragState State, bool &Accept, Vcl::Controls::TDragObject* &DragObject);
	virtual void __fastcall ChartKeyEvent(TChartKeyEvent AEvent, System::Word &Key, System::WideChar &Key1, System::Classes::TShiftState Shift);
	virtual void __fastcall SeriesEvent(TChartToolEvent AEvent, TChartSeries* ASeries);
	virtual void __fastcall SetParentChart(TCustomAxisPanel* const Value);
	virtual void __fastcall WheelMouseEvent(TWheelMouseEvent AEvent, int WheelDelta, int X, int Y);
	
public:
	__classmethod virtual System::UnicodeString __fastcall Description();
	__classmethod virtual System::UnicodeString __fastcall LongDescription();
public:
	/* TCustomChartElement.Create */ inline __fastcall virtual TTeeCustomTool(System::Classes::TComponent* AOwner) : TCustomChartElement(AOwner) { }
	/* TCustomChartElement.Destroy */ inline __fastcall virtual ~TTeeCustomTool() { }
	
};


#ifndef _WIN64
typedef System::TMetaClass* TTeeCustomToolClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TTeeCustomToolClass);
#endif /* _WIN64 */

class PASCALIMPLEMENTATION TChartTools : public System::Generics::Collections::TList__1<TTeeCustomTool*>
{
	typedef System::Generics::Collections::TList__1<TTeeCustomTool*> inherited;
	
private:
	TCustomAxisPanel* FOwner;
	void __fastcall InternalAdd(TTeeCustomTool* ATool);
	void __fastcall SetActive(bool Value);
	
public:
	HIDESBASE TTeeCustomTool* __fastcall Add(TTeeCustomTool* const Tool)/* overload */;
	HIDESBASE TTeeCustomTool* __fastcall Add(const TTeeCustomToolClass Tool)/* overload */;
	HIDESBASE void __fastcall Clear();
	__property bool Active = {write=SetActive, nodefault};
	__property TCustomAxisPanel* Owner = {read=FOwner};
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Create */ inline __fastcall TChartTools()/* overload */ : System::Generics::Collections::TList__1<TTeeCustomTool*>() { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Create */ inline __fastcall TChartTools(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTeeCustomTool*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTeeCustomTool*>(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Create */ inline __fastcall TChartTools(System::Generics::Collections::TEnumerable__1<TTeeCustomTool*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTeeCustomTool*>(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Create */ inline __fastcall TChartTools(TTeeCustomTool* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTeeCustomTool*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Destroy */ inline __fastcall virtual ~TChartTools() { }
	
};


class PASCALIMPLEMENTATION TTeeCustomAnimation : public TTeeCustomTool
{
	typedef TTeeCustomTool inherited;
	
protected:
	virtual void __fastcall SetParentChart(TCustomAxisPanel* const Value);
	
public:
	virtual void __fastcall Play() = 0 ;
	System::UnicodeString __fastcall Title();
public:
	/* TCustomChartElement.Create */ inline __fastcall virtual TTeeCustomAnimation(System::Classes::TComponent* AOwner) : TTeeCustomTool(AOwner) { }
	/* TCustomChartElement.Destroy */ inline __fastcall virtual ~TTeeCustomAnimation() { }
	
};


#ifndef _WIN64
typedef System::TMetaClass* TTeeCustomAnimationClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TTeeCustomAnimationClass);
#endif /* _WIN64 */

class PASCALIMPLEMENTATION TChartAnimations : public TChartTools
{
	typedef TChartTools inherited;
	
public:
	TTeeCustomAnimation* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTeeCustomAnimation* __fastcall Get(int Index);
	
public:
	HIDESBASE TTeeCustomAnimation* __fastcall Add(TTeeCustomAnimation* const Value)/* overload */;
	TTeeCustomAnimation* __fastcall AddClass(const TTeeCustomAnimationClass Value)/* overload */;
	__property TTeeCustomAnimation* Items[int Index] = {read=Get/*, default*/};
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Create */ inline __fastcall TChartAnimations()/* overload */ : TChartTools() { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Create */ inline __fastcall TChartAnimations(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTeeCustomTool*> > AComparer)/* overload */ : TChartTools(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Create */ inline __fastcall TChartAnimations(System::Generics::Collections::TEnumerable__1<TTeeCustomTool*>* const Collection)/* overload */ : TChartTools(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Create */ inline __fastcall TChartAnimations(TTeeCustomTool* const *Values, const int Values_High)/* overload */ : TChartTools(Values, Values_High) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeCustomTool>.Destroy */ inline __fastcall virtual ~TChartAnimations() { }
	
	/* Hoisted overloads: */
	
public:
	inline TTeeCustomTool* __fastcall  Add(TTeeCustomTool* const Tool){ return TChartTools::Add(Tool); }
	inline TTeeCustomTool* __fastcall  Add(const TTeeCustomToolClass Tool){ return TChartTools::Add(Tool); }
	
};


class PASCALIMPLEMENTATION TTeeCustomToolSeries : public TTeeCustomTool
{
	typedef TTeeCustomTool inherited;
	
private:
	TChartSeries* FSeries;
	
protected:
	__classmethod virtual System::UnicodeString __fastcall GetEditorClass();
	TChartAxis* __fastcall GetHorizAxis();
	TChartAxis* __fastcall GetVertAxis();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall SetSeries(TChartSeries* const Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TChartSeries* Series = {read=FSeries, write=SetSeries};
public:
	/* TCustomChartElement.Create */ inline __fastcall virtual TTeeCustomToolSeries(System::Classes::TComponent* AOwner) : TTeeCustomTool(AOwner) { }
	/* TCustomChartElement.Destroy */ inline __fastcall virtual ~TTeeCustomToolSeries() { }
	
};


class PASCALIMPLEMENTATION TTeeCustomToolAxis : public TTeeCustomTool
{
	typedef TTeeCustomTool inherited;
	
private:
	TChartAxis* FAxis;
	void __fastcall ReadAxis(System::Classes::TReader* Reader);
	void __fastcall WriteAxis(System::Classes::TWriter* Writer);
	
protected:
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	__classmethod virtual System::UnicodeString __fastcall GetEditorClass();
	void __fastcall InternalSetAxis(TChartAxis* const Value);
	virtual void __fastcall SetAxis(TChartAxis* const Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TChartAxis* Axis = {read=FAxis, write=SetAxis, stored=false};
public:
	/* TCustomChartElement.Create */ inline __fastcall virtual TTeeCustomToolAxis(System::Classes::TComponent* AOwner) : TTeeCustomTool(AOwner) { }
	/* TCustomChartElement.Destroy */ inline __fastcall virtual ~TTeeCustomToolAxis() { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartPage : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FAutoScale;
	int FCurrent;
	int FPointsPerPage;
	bool FScaleLastPage;
	TCustomAxisPanel* IParent;
	void __fastcall SetAutoScale(const bool Value);
	void __fastcall SetCurrent(int Value);
	void __fastcall SetPointsPerPage(const int Value);
	void __fastcall SetScaleLastPage(const bool Value);
	
public:
	__fastcall TChartPage();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	int __fastcall Count();
	int __fastcall FirstValueIndex();
	void __fastcall NextPage();
	void __fastcall PreviousPage();
	__property TCustomAxisPanel* Parent = {read=IParent};
	
__published:
	__property bool AutoScale = {read=FAutoScale, write=SetAutoScale, default=0};
	__property int Current = {read=FCurrent, write=SetCurrent, default=1};
	__property int MaxPointsPerPage = {read=FPointsPerPage, write=SetPointsPerPage, default=0};
	__property bool ScaleLastPage = {read=FScaleLastPage, write=SetScaleLastPage, default=1};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TChartPage() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeSeriesEvent : public Vcltee::Teeprocs::TTeeEvent
{
	typedef Vcltee::Teeprocs::TTeeEvent inherited;
	
public:
	TChartSeriesEvent Event;
	TCustomChartSeries* Series;
public:
	/* TObject.Create */ inline __fastcall TTeeSeriesEvent() : Vcltee::Teeprocs::TTeeEvent() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTeeSeriesEvent() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef void __fastcall (__closure *TSeriesNotifyEvent)(TCustomChartSeries* Sender);

typedef void __fastcall (__closure *TSeriesDrawValue)(TChartSeries* Series, int Index);

typedef void __fastcall (__closure *TValidDataSourceEvent)(TCustomAxisPanel* Sender, TChartSeries* ASeries, System::Classes::TComponent* AComponent, bool &Valid);

#ifndef _WIN64
typedef System::TMetaClass* TChartSeriesClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TChartSeriesClass);
#endif /* _WIN64 */

class PASCALIMPLEMENTATION TCustomAxisPanel : public Vcltee::Teeprocs::TCustomTeePanelExtended
{
	typedef Vcltee::Teeprocs::TCustomTeePanelExtended inherited;
	
public:
	TChartSeries* operator[](int Index) { return this->Series[Index]; }
	
private:
	int F3DPercent;
	TChartAnimations* FAnimations;
	TChartAxes* FAxes;
	bool FAxisBehind;
	bool FAxisVisible;
	bool FClipPoints;
	TChartCustomAxes* FCustomAxes;
	TTeeHover* FHover;
	TChartSeriesList* FSeriesList;
	TChartDepthAxis* FDepthAxis;
	TChartDepthAxis* FDepthTopAxis;
	TChartAxis* FTopAxis;
	TChartAxis* FBottomAxis;
	TChartAxis* FLeftAxis;
	TChartAxis* FRightAxis;
	bool FView3DWalls;
	TSeriesNotifyEvent FOnAddSeries;
	System::Classes::TNotifyEvent FOnBeforeDrawChart;
	System::Classes::TNotifyEvent FOnBeforeDrawAxes;
	System::Classes::TNotifyEvent FOnBeforeDrawSeries;
	TAxisOnGetLabel FOnGetAxisLabel;
	TAxisOnGetNextLabel FOnGetNextAxisLabel;
	System::Classes::TNotifyEvent FOnPageChange;
	TSeriesNotifyEvent FOnRemoveSeries;
	TChartPage* FPage;
	bool FCustomWidth3D;
	int FMaxZOrder;
	int FSeriesWidth3D;
	int FSeriesHeight3D;
	TChartTools* FTools;
	bool InvertedRotation;
	void __fastcall BroadcastToolEvent(TChartToolEvent AEvent);
	void __fastcall BroadcastAnimationEvent(TChartToolEvent AEvent);
	void __fastcall CalcInvertedRotation();
	void __fastcall ChangedAxisScale(TChartAxis* const Axis);
	void __fastcall CheckOtherSeries(TChartSeries* const Dest, TChartSeries* const Source);
	void __fastcall DoSeriesParallel(int Index);
	TChartSeries* __fastcall FindSameSeriesClass(TCustomChartSeries* const ASeries);
	TChartSeries* __fastcall FindThemedSeries();
	TTeeCustomTool* __fastcall FindSameToolClass(TTeeCustomTool* const ATool);
	TChartAxis* __fastcall FindSameAxisClass(TChartAxis* const AAxis);
	TChartSeries* __fastcall GetAxisSeriesMaxPoints(TChartAxis* const Axis);
	int __fastcall GetPage();
	int __fastcall GetPointsPerPage();
	bool __fastcall GetScaleLastPage();
	TChartSeries* __fastcall GetSeries(int Index);
	TSeriesGroups* __fastcall GetSeriesGroups();
	void __fastcall InternalAddSeries(TCustomChartSeries* const ASeries);
	HIDESBASE void __fastcall InternalDoMouseLeave();
	double __fastcall InternalMinMax(TChartAxis* const AAxis, bool IsMin, bool IsX);
	bool __fastcall IsCustomAxesStored();
	bool __fastcall IsSeriesGroupsStored();
	bool __fastcall NoActiveSeries(TChartAxis* const AAxis);
	void __fastcall ReadMaxPointsPerPage(System::Classes::TReader* Reader);
	void __fastcall ReadPage(System::Classes::TReader* Reader);
	void __fastcall ReadScaleLastPage(System::Classes::TReader* Reader);
	void __fastcall Set3DPercent(int Value);
	void __fastcall SetAxisBehind(bool Value);
	void __fastcall SetAxisVisible(bool Value);
	void __fastcall SetBottomAxis(TChartAxis* const Value);
	void __fastcall SetClipPoints(bool Value);
	void __fastcall SetCustomAxes(TChartCustomAxes* const Value);
	void __fastcall SetDepthAxis(TChartDepthAxis* const Value);
	void __fastcall SetDepthTopAxis(TChartDepthAxis* const Value);
	void __fastcall SetHover(TTeeHover* const Value);
	void __fastcall SetLeftAxis(TChartAxis* const Value);
	void __fastcall SetPages(TChartPage* const Value);
	void __fastcall SetPointsPerPage(const int Value);
	void __fastcall SetRightAxis(TChartAxis* const Value);
	void __fastcall SetScaleLastPage(const bool Value);
	void __fastcall SetSeriesGroups(TSeriesGroups* const Value);
	void __fastcall SetTopAxis(TChartAxis* const Value);
	void __fastcall SetView3DWalls(bool Value);
	
protected:
	bool DoNotBroadcast;
	TSeriesDrawValue FOnDrawValue;
	TValidDataSourceEvent FOnValidDataSource;
	System::Uitypes::TColor LegendColor;
	Vcltee::Tecanvas::TTeePen* LegendPen;
	int ParallelThreads;
	void __fastcall ApplyThemeSeries(TCustomChartSeries* const ASeries);
	void __fastcall ApplyThemeTools(TTeeCustomTool* const ATool);
	void __fastcall ApplyThemeAxes(TChartAxis* const AAxis);
	void __fastcall BroadcastSeriesEvent(TCustomChartSeries* const ASeries, TChartSeriesEvent Event);
	bool __fastcall CalcIsAxisVisible(TChartAxis* const Axis);
	virtual void __fastcall CalcWallsRect() = 0 ;
	virtual int __fastcall CalcWallSize(TChartAxis* Axis) = 0 ;
	bool __fastcall CheckMouseAxes(int x, int y);
	bool __fastcall CheckMouseSeries(int x, int y);
	void __fastcall ColorPaletteChanged();
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	virtual void __fastcall DoOnAfterDraw();
	virtual void __fastcall DoOnBeforeDrawAxes();
	virtual void __fastcall DoOnBeforeDrawChart();
	virtual void __fastcall DoOnBeforeDrawSeries();
	void __fastcall DrawAxesSeries();
	virtual void __fastcall DrawTitlesAndLegend(bool BeforeSeries) = 0 ;
	virtual bool __fastcall DrawBackWallAfter(int Z);
	virtual void __fastcall DrawLegendShape(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* const AGraphic = (Vcl::Graphics::TGraphic*)(0x0)) = 0 ;
	virtual void __fastcall DrawWalls() = 0 ;
	DYNAMIC System::Classes::TComponent* __fastcall GetDesignOwner();
	bool __fastcall HasActiveSeries(TChartAxis* const Axis, bool Default = false);
	virtual void __fastcall InternalDraw(const System::Types::TRect &UserRectangle);
	bool __fastcall IsAxisVisible(TChartAxis* const Axis);
	virtual void __fastcall Loaded();
	DYNAMIC void __fastcall RemovedDataSource(TChartSeries* ASeries, System::Classes::TComponent* AComponent);
	void __fastcall SetPage(const int Value);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Winapi::Messages::TMessage &Message);
	
public:
	TTeeCustomDesigner* Designer;
	Vcltee::Teeprocs::TColorArray ColorPalette;
	__fastcall virtual TCustomAxisPanel(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TCustomAxisPanel();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	TChartSeries* __fastcall ActiveSeriesLegend(int ItemIndex);
	TChartSeries* __fastcall AddSeries(TChartSeries* const ASeries)/* overload */;
	TChartSeries* __fastcall AddSeries(TChartSeriesClass ASeriesClass)/* overload */;
	void __fastcall AddSeries(TChartSeries* *SeriesArray, const int SeriesArray_High)/* overload */;
	void __fastcall CalcSize3DWalls();
	virtual void __fastcall CheckDatasource(TChartSeries* ASeries);
	int __fastcall CountActiveSeries();
	void __fastcall ExchangeSeries(int a, int b)/* overload */;
	void __fastcall ExchangeSeries(TCustomChartSeries* a, TCustomChartSeries* b)/* overload */;
	virtual System::UnicodeString __fastcall FormattedValueLegend(TChartSeries* ASeries, int ValueIndex);
	void __fastcall FreeAllSeries(TChartSeriesClass SeriesClass = 0x0);
	TChartSeries* __fastcall GetAxisSeries(TChartAxis* const Axis);
	DYNAMIC void __fastcall GetChildren(System::Classes::TGetChildProc Proc, System::Classes::TComponent* Root);
	System::Uitypes::TColor __fastcall GetDefaultColor(int Index);
	System::Uitypes::TColor __fastcall GetFreeSeriesColor(bool CheckBackground = true, TChartSeries* const Series = (TChartSeries*)(0x0));
	int __fastcall GetMaxValuesCount();
	virtual bool __fastcall IsFreeSeriesColor(System::Uitypes::TColor AColor, bool CheckBackground, TChartSeries* Series = (TChartSeries*)(0x0)) = 0 ;
	DYNAMIC bool __fastcall IsValidDataSource(TChartSeries* ASeries, System::Classes::TComponent* AComponent);
	double __fastcall MaxXValue(TChartAxis* const AAxis);
	double __fastcall MaxYValue(TChartAxis* const AAxis);
	double __fastcall MinXValue(TChartAxis* const AAxis);
	double __fastcall MinYValue(TChartAxis* const AAxis);
	int __fastcall MaxMarkWidth();
	int __fastcall MaxTextWidth();
	DYNAMIC int __fastcall NumPages();
	void __fastcall PrintPages(int FromPage = 0x1, int ToPage = 0x0);
	void __fastcall RemoveSeries(TCustomChartSeries* const ASeries)/* overload */;
	void __fastcall RemoveSeries(int SeriesIndex)/* overload */;
	__property TChartSeries* Series[int Index] = {read=GetSeries/*, default*/};
	int __fastcall SeriesCount();
	TChartSeries* __fastcall SeriesLegend(int ItemIndex, bool OnlyActive);
	System::UnicodeString __fastcall SeriesTitleLegend(int SeriesIndex, bool OnlyActive = false);
	__property TChartAxes* Axes = {read=FAxes};
	__property TChartAxes* AxesList = {read=FAxes};
	__property TChartCustomAxes* CustomAxes = {read=FCustomAxes, write=SetCustomAxes, stored=IsCustomAxesStored};
	__property bool CustomWidth3D = {read=FCustomWidth3D, write=FCustomWidth3D, default=0};
	__property int MaxZOrder = {read=FMaxZOrder, write=FMaxZOrder, nodefault};
	__property int SeriesWidth3D = {read=FSeriesWidth3D, nodefault};
	__property int SeriesHeight3D = {read=FSeriesHeight3D, nodefault};
	__property TChartAnimations* Animations = {read=FAnimations};
	__property bool AxisBehind = {read=FAxisBehind, write=SetAxisBehind, default=1};
	__property bool AxisVisible = {read=FAxisVisible, write=SetAxisVisible, default=1};
	__property TChartAxis* BottomAxis = {read=FBottomAxis, write=SetBottomAxis};
	__property int Chart3DPercent = {read=F3DPercent, write=Set3DPercent, default=15};
	__property bool ClipPoints = {read=FClipPoints, write=SetClipPoints, default=1};
	__property Color = {default=-16777201};
	__property TChartDepthAxis* DepthAxis = {read=FDepthAxis, write=SetDepthAxis};
	__property TChartDepthAxis* DepthTopAxis = {read=FDepthTopAxis, write=SetDepthTopAxis};
	__property TTeeHover* Hover = {read=FHover, write=SetHover};
	__property TChartAxis* LeftAxis = {read=FLeftAxis, write=SetLeftAxis};
	__property int MaxPointsPerPage = {read=GetPointsPerPage, write=SetPointsPerPage, nodefault};
	__property int Page = {read=GetPage, write=SetPage, nodefault};
	__property TChartPage* Pages = {read=FPage, write=SetPages};
	__property TChartAxis* RightAxis = {read=FRightAxis, write=SetRightAxis};
	__property bool ScaleLastPage = {read=GetScaleLastPage, write=SetScaleLastPage, nodefault};
	__property TSeriesGroups* SeriesGroups = {read=GetSeriesGroups, write=SetSeriesGroups, stored=IsSeriesGroupsStored};
	__property TChartSeriesList* SeriesList = {read=FSeriesList};
	__property TChartTools* Tools = {read=FTools};
	__property TChartAxis* TopAxis = {read=FTopAxis, write=SetTopAxis};
	__property bool View3DWalls = {read=FView3DWalls, write=SetView3DWalls, default=1};
	__property TSeriesNotifyEvent OnAddSeries = {read=FOnAddSeries, write=FOnAddSeries};
	__property System::Classes::TNotifyEvent OnBeforeDrawChart = {read=FOnBeforeDrawChart, write=FOnBeforeDrawChart};
	__property System::Classes::TNotifyEvent OnBeforeDrawAxes = {read=FOnBeforeDrawAxes, write=FOnBeforeDrawAxes};
	__property System::Classes::TNotifyEvent OnBeforeDrawSeries = {read=FOnBeforeDrawSeries, write=FOnBeforeDrawSeries};
	__property TAxisOnGetLabel OnGetAxisLabel = {read=FOnGetAxisLabel, write=FOnGetAxisLabel};
	__property TAxisOnGetNextLabel OnGetNextAxisLabel = {read=FOnGetNextAxisLabel, write=FOnGetNextAxisLabel};
	__property System::Classes::TNotifyEvent OnPageChange = {read=FOnPageChange, write=FOnPageChange};
	__property TSeriesNotifyEvent OnRemoveSeries = {read=FOnRemoveSeries, write=FOnRemoveSeries};
	__property TValidDataSourceEvent OnValidDataSource = {read=FOnValidDataSource, write=FOnValidDataSource};
public:
	/* TWinControl.CreateParented */ inline __fastcall TCustomAxisPanel(HWND ParentWindow) : Vcltee::Teeprocs::TCustomTeePanelExtended(ParentWindow) { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TSeriesMarkPosition : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	System::Types::TPoint ArrowFrom;
	bool ArrowFix;
	System::Types::TPoint ArrowTo;
	bool Custom;
	int Height;
	System::Types::TPoint LeftTop;
	int Width;
	System::Types::TPoint MidPoint;
	bool HasMid;
	void __fastcall Assign(TSeriesMarkPosition* const Source);
	System::Types::TRect __fastcall Bounds();
	void __fastcall Offset(const System::Types::TPoint &P);
public:
	/* TObject.Create */ inline __fastcall TSeriesMarkPosition() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TSeriesMarkPosition() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TSeriesMarksPositions : public System::Generics::Collections::TObjectList__1<TSeriesMarkPosition*>
{
	typedef System::Generics::Collections::TObjectList__1<TSeriesMarkPosition*> inherited;
	
public:
	TSeriesMarkPosition* operator[](int Index) { return this->Position[Index]; }
	
private:
	TSeriesMarks* IMarks;
	void __fastcall DeleteMany(const int Start, const int Quantity);
	TSeriesMarkPosition* __fastcall Get(int Index);
	void __fastcall Put(int Index, TSeriesMarkPosition* const APosition);
	
public:
	void __fastcall Automatic(int Index);
	bool __fastcall ExistCustom();
	void __fastcall MoveTo(TSeriesMarkPosition* &Position, const int XPos, const int YPos);
	__property TSeriesMarkPosition* Position[int Index] = {read=Get, write=Put/*, default*/};
public:
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TSeriesMarkPosition>.Create */ inline __fastcall TSeriesMarksPositions()/* overload */ : System::Generics::Collections::TObjectList__1<TSeriesMarkPosition*>() { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TSeriesMarkPosition>.Create */ inline __fastcall TSeriesMarksPositions(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TSeriesMarkPosition*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TSeriesMarkPosition>.Create */ inline __fastcall TSeriesMarksPositions(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TSeriesMarkPosition*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TSeriesMarkPosition*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TSeriesMarkPosition>.Create */ inline __fastcall TSeriesMarksPositions(System::Generics::Collections::TEnumerable__1<TSeriesMarkPosition*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TSeriesMarkPosition*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TSeriesMarkPosition>.Destroy */ inline __fastcall virtual ~TSeriesMarksPositions() { }
	
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TSeriesMarkPosition>.Create */ inline __fastcall TSeriesMarksPositions(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TSeriesMarkPosition*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TSeriesMarkPosition*>(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TSeriesMarkPosition>.Create */ inline __fastcall TSeriesMarksPositions(System::Generics::Collections::TEnumerable__1<TSeriesMarkPosition*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TSeriesMarkPosition*>(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TSeriesMarkPosition>.Create */ inline __fastcall TSeriesMarksPositions(TSeriesMarkPosition* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TSeriesMarkPosition*>(Values, Values_High) { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TMarksItem : public TCustomTextShape
{
	typedef TCustomTextShape inherited;
	
private:
	bool ICustomText;
	System::Classes::TStrings* IText;
	System::Classes::TStrings* __fastcall GetText();
	HIDESBASE void __fastcall SetText(System::Classes::TStrings* const Value);
	void __fastcall TextChanged(System::TObject* Sender);
	
protected:
	virtual void __fastcall ChangedText();
	
public:
	__fastcall virtual ~TMarksItem();
	
__published:
	__property Bevel = {default=0};
	__property BevelWidth = {default=2};
	__property Children;
	__property ChildLayout = {default=0};
	__property Color = {default=14811135};
	__property Emboss;
	__property Font;
	__property Gradient;
	__property Picture;
	__property Shadow;
	__property ShapeCallout;
	__property ShapeStyle = {default=0};
	__property System::Classes::TStrings* Text = {read=GetText, write=SetText};
	__property Transparency = {default=0};
	__property Transparent;
public:
	/* TCustomTextShape.Create */ inline __fastcall virtual TMarksItem(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TCustomTextShape(AOwner) { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TMarksItems : public System::Generics::Collections::TObjectList__1<TMarksItem*>
{
	typedef System::Generics::Collections::TObjectList__1<TMarksItem*> inherited;
	
public:
	TMarksItem* operator[](int Index) { return this->Format[Index]; }
	
private:
	Vcltee::Teeprocs::TTeeCustomShape* IMarks;
	bool ILoadingCustom;
	TMarksItem* __fastcall Get(int Index);
	TMarksItem* __fastcall InternalGet(int Index);
	
public:
	__property TMarksItem* Format[int Index] = {read=Get/*, default*/};
public:
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TMarksItem>.Create */ inline __fastcall TMarksItems()/* overload */ : System::Generics::Collections::TObjectList__1<TMarksItem*>() { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TMarksItem>.Create */ inline __fastcall TMarksItems(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TMarksItem*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TMarksItem>.Create */ inline __fastcall TMarksItems(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TMarksItem*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TMarksItem*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TMarksItem>.Create */ inline __fastcall TMarksItems(System::Generics::Collections::TEnumerable__1<TMarksItem*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TMarksItem*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TMarksItem>.Destroy */ inline __fastcall virtual ~TMarksItems() { }
	
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TMarksItem>.Create */ inline __fastcall TMarksItems(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TMarksItem*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TMarksItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TMarksItem>.Create */ inline __fastcall TMarksItems(System::Generics::Collections::TEnumerable__1<TMarksItem*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TMarksItem*>(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TMarksItem>.Create */ inline __fastcall TMarksItems(TMarksItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TMarksItem*>(Values, Values_High) { }
	
};


enum DECLSPEC_DENUM TSeriesMarksStyle : unsigned char { smsValue, smsPercent, smsLabel, smsLabelPercent, smsLabelValue, smsLegend, smsPercentTotal, smsLabelPercentTotal, smsXValue, smsXY, smsSeriesTitle, smsPointIndex, smsPercentRelative, smsLabelPercentValue, smsLabelOrValue };

enum DECLSPEC_DENUM TSeriesPointerStyle : unsigned char { psRectangle, psCircle, psTriangle, psDownTriangle, psCross, psDiagCross, psStar, psDiamond, psSmallDot, psNothing, psLeftTriangle, psRightTriangle, psHexagon, psVisual, psDonut, psArrow };

enum DECLSPEC_DENUM TPointerSizeUnits : unsigned char { suPixels, suAxis };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TSeriesPointer : public Vcltee::Teeprocs::TTeeCustomShapeBrushPen
{
	typedef Vcltee::Teeprocs::TTeeCustomShapeBrushPen inherited;
	
private:
	bool FDark3D;
	int FDarkPen;
	int FDepth;
	bool FDraw3D;
	Vcltee::Tecanvas::TTeeEmboss* FEmboss;
	bool FFullGradient;
	int FHorizSize;
	bool FInflate;
	bool FCenterPixel;
	Vcltee::Tecanvas::TTeePicture* FPicture;
	TChartSeries* FSeries;
	Vcltee::Tecanvas::TTeeShadow* FShadow;
	float FSizeFloat;
	TPointerSizeUnits FSizeUnits;
	TSeriesPointerStyle FStyle;
	Vcltee::Tecanvas::TTeeTransparency FTransparency;
	int FVertSize;
	TTeeSelected* FSelected;
	System::Uitypes::TColor __fastcall GetColor();
	Vcltee::Tecanvas::TTeeEmboss* __fastcall GetEmboss();
	Vcltee::Tecanvas::TTeeGradient* __fastcall GetGradient();
	Vcltee::Tecanvas::TTeePicture* __fastcall GetPicture();
	Vcltee::Tecanvas::TTeeShadow* __fastcall GetShadow();
	int __fastcall GetSize();
	TTeeSelected* __fastcall GetSelected();
	bool __fastcall IsFullStored();
	void __fastcall SetColor(const System::Uitypes::TColor Value);
	void __fastcall SetDark3D(bool Value);
	void __fastcall SetDarkPen(int Value);
	void __fastcall SetDepth(int Value);
	void __fastcall SetDraw3D(bool Value);
	void __fastcall SetEmboss(Vcltee::Tecanvas::TTeeEmboss* const Value);
	void __fastcall SetFullGradient(bool Value);
	void __fastcall SetGradient(Vcltee::Tecanvas::TTeeGradient* const Value);
	void __fastcall SetHorizSize(int Value);
	void __fastcall SetInflate(bool Value);
	void __fastcall SetCenterPixel(bool Value);
	void __fastcall SetPicture(Vcltee::Tecanvas::TTeePicture* const Value);
	void __fastcall SetSize(const int Value);
	void __fastcall SetSizeFloat(const float Value);
	void __fastcall SetSizeUnits(const TPointerSizeUnits Value);
	void __fastcall SetShadow(Vcltee::Tecanvas::TTeeShadow* const Value);
	void __fastcall SetStyle(TSeriesPointerStyle Value);
	void __fastcall SetTransparency(const Vcltee::Tecanvas::TTeeTransparency Value);
	void __fastcall SetVertSize(int Value);
	void __fastcall SetSelected(TTeeSelected* const Value);
	
protected:
	bool AllowChangeSize;
	bool DefaultFullGradient;
	int Z;
	void __fastcall CalcHorizMargins(int &LeftMargin, int &RightMargin);
	void __fastcall CalcSize(/* out */ int &AHoriz, /* out */ int &AVert);
	void __fastcall CalcVerticalMargins(int &TopMargin, int &BottomMargin);
	void __fastcall Change3D(bool Value);
	void __fastcall ChangeHorizSize(int NewSize);
	void __fastcall ChangeStyle(TSeriesPointerStyle NewStyle);
	void __fastcall ChangeVertSize(int NewSize);
	int __fastcall GetStartZ();
	int __fastcall GetMiddleZ();
	int __fastcall GetEndZ();
	void __fastcall Prepare();
	
public:
	__fastcall TSeriesPointer(TChartSeries* const AOwner);
	__fastcall virtual ~TSeriesPointer();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	bool __fastcall Clicked(const TSeriesPointerStyle AStyle, const System::Types::TPoint &P, int X, int Y);
	void __fastcall Draw(const System::Types::TPoint &P)/* overload */;
	void __fastcall Draw(int X, int Y)/* overload */;
	void __fastcall Draw(int px, int py, System::Uitypes::TColor ColorValue, TSeriesPointerStyle AStyle)/* overload */;
	void __fastcall DrawPointer(Vcltee::Tecanvas::TCanvas3D* const ACanvas, bool Is3D, int px, int py, int Horiz, int Vert, System::Uitypes::TColor ColorValue, TSeriesPointerStyle AStyle);
	void __fastcall PrepareCanvas(Vcltee::Tecanvas::TCanvas3D* const ACanvas, System::Uitypes::TColor ColorValue);
	__property System::Uitypes::TColor Color = {read=GetColor, write=SetColor, nodefault};
	__property TChartSeries* ParentSeries = {read=FSeries};
	__property int Size = {read=GetSize, write=SetSize, nodefault};
	__property float SizeFloat = {read=FSizeFloat, write=SetSizeFloat};
	__property bool CenterPixel = {read=FCenterPixel, write=SetCenterPixel, nodefault};
	
__published:
	__property Brush;
	__property bool Dark3D = {read=FDark3D, write=SetDark3D, default=1};
	__property int DarkPen = {read=FDarkPen, write=SetDarkPen, default=0};
	__property int Depth = {read=FDepth, write=SetDepth, default=0};
	__property bool Draw3D = {read=FDraw3D, write=SetDraw3D, default=1};
	__property Vcltee::Tecanvas::TTeeEmboss* Emboss = {read=GetEmboss, write=SetEmboss};
	__property bool FullGradient = {read=FFullGradient, write=SetFullGradient, stored=IsFullStored, nodefault};
	__property Vcltee::Tecanvas::TTeeGradient* Gradient = {read=GetGradient, write=SetGradient};
	__property int HorizSize = {read=FHorizSize, write=SetHorizSize, default=4};
	__property bool InflateMargins = {read=FInflate, write=SetInflate, nodefault};
	__property Pen;
	__property Vcltee::Tecanvas::TTeePicture* Picture = {read=GetPicture, write=SetPicture};
	__property Vcltee::Tecanvas::TTeeShadow* Shadow = {read=GetShadow, write=SetShadow};
	__property TPointerSizeUnits SizeUnits = {read=FSizeUnits, write=SetSizeUnits, default=0};
	__property TSeriesPointerStyle Style = {read=FStyle, write=SetStyle, nodefault};
	__property Vcltee::Tecanvas::TTeeTransparency Transparency = {read=FTransparency, write=SetTransparency, default=0};
	__property int VertSize = {read=FVertSize, write=SetVertSize, default=4};
	__property Visible;
	__property TTeeSelected* Selected = {read=GetSelected, write=SetSelected};
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TArrowHeadStyle : unsigned char { ahNone, ahLine, ahSolid };

typedef Vcltee::Tecanvas::TWhitePen TChartArrowPen;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TCallout : public TSeriesPointer
{
	typedef TSeriesPointer inherited;
	
private:
	Vcltee::Tecanvas::TWhitePen* FArrow;
	TArrowHeadStyle FArrowHead;
	int FDistance;
	int FArrowHeadSize;
	void __fastcall SetDistance(const int Value);
	void __fastcall SetArrow(Vcltee::Tecanvas::TWhitePen* const Value);
	void __fastcall SetArrowHead(const TArrowHeadStyle Value);
	void __fastcall SetArrowHeadSize(const int Value);
	
protected:
	HIDESBASE void __fastcall Draw(System::Uitypes::TColor AColor, const System::Types::TPoint &AFrom, const System::Types::TPoint &AMid, const System::Types::TPoint &ATo, int Z, bool MidPoint = false)/* overload */;
	HIDESBASE void __fastcall Draw(Vcltee::Teeprocs::TCustomTeePanel* const AParent, System::Uitypes::TColor AColor, const System::Types::TPoint &AFrom, const System::Types::TPoint &AMid, const System::Types::TPoint &ATo, int Z, bool MidPoint = false)/* overload */;
	
public:
	__fastcall TCallout(TChartSeries* const AOwner);
	__fastcall virtual ~TCallout();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property Vcltee::Tecanvas::TWhitePen* Arrow = {read=FArrow, write=SetArrow};
	__property TArrowHeadStyle ArrowHead = {read=FArrowHead, write=SetArrowHead, default=0};
	__property int ArrowHeadSize = {read=FArrowHeadSize, write=SetArrowHeadSize, default=8};
	__property int Distance = {read=FDistance, write=SetDistance, default=0};
	__property Draw3D = {default=0};
	__property InflateMargins = {default=1};
	__property Style = {default=0};
	__property Visible = {default=1};
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Draw(const System::Types::TPoint &P){ TSeriesPointer::Draw(P); }
	inline void __fastcall  Draw(int X, int Y){ TSeriesPointer::Draw(X, Y); }
	inline void __fastcall  Draw(int px, int py, System::Uitypes::TColor ColorValue, TSeriesPointerStyle AStyle){ TSeriesPointer::Draw(px, py, ColorValue, AStyle); }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TMarksCallout : public TCallout
{
	typedef TCallout inherited;
	
private:
	int FLength;
	void __fastcall ApplyArrowLength(TSeriesMarkPosition* const APosition);
	bool __fastcall IsLengthStored();
	void __fastcall SetLength(const int Value);
	
protected:
	int DefaultLength;
	
public:
	__fastcall TMarksCallout(TChartSeries* const AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property int Length = {read=FLength, write=SetLength, stored=IsLengthStored, nodefault};
	__property Visible = {default=0};
public:
	/* TCallout.Destroy */ inline __fastcall virtual ~TMarksCallout() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TSeriesMarksSymbol : public Vcltee::Teeprocs::TTeeCustomShape
{
	typedef Vcltee::Teeprocs::TTeeCustomShape inherited;
	
private:
	bool __fastcall ShouldDraw();
	
public:
	__fastcall virtual TSeriesMarksSymbol(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	
__published:
	__property Bevel = {default=0};
	__property BevelWidth = {default=2};
	__property Brush;
	__property Children;
	__property ChildLayout = {default=0};
	__property Emboss;
	__property Frame;
	__property Gradient;
	__property Pen;
	__property Picture;
	__property Shadow;
	__property ShapeCallout;
	__property ShapeStyle = {default=0};
	__property Transparency = {default=0};
	__property Visible = {default=0};
public:
	/* TTeeCustomShape.Destroy */ inline __fastcall virtual ~TSeriesMarksSymbol() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TSeriesMarkShape : public TCustomTextShape
{
	typedef TCustomTextShape inherited;
	
private:
	TSeriesMarksStyle FMarkerStyle;
	TSeriesMarks* IParent;
	void __fastcall SetStyle(const TSeriesMarksStyle Value);
	
__published:
	__property Bevel = {default=0};
	__property BevelWidth = {default=2};
	__property Brush;
	__property Children;
	__property ChildLayout = {default=0};
	__property Emboss;
	__property Font;
	__property Frame;
	__property Gradient;
	__property Picture;
	__property RoundSize = {default=16};
	__property Shadow;
	__property ShapeStyle = {default=1};
	__property Transparency = {default=0};
	__property Transparent;
	__property Visible;
	__property ClipText = {default=1};
	__property Cursor = {default=0};
	__property Margins;
	__property TextAlignment = {default=2};
	__property TextFormat = {default=0};
	__property VertTextAlign = {default=0};
	__property TSeriesMarksStyle Style = {read=FMarkerStyle, write=SetStyle, default=14};
public:
	/* TCustomTextShape.Create */ inline __fastcall virtual TSeriesMarkShape(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TCustomTextShape(AOwner) { }
	/* TCustomTextShape.Destroy */ inline __fastcall virtual ~TSeriesMarkShape() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TTailAlign : unsigned char { ttaNear, ttaCenter, ttaFar };

enum DECLSPEC_DENUM TTailEdge : unsigned char { tteLeft, tteTop, tteRight, tteBottom };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TMarksTail : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FAutoAlign;
	bool FCustomPoint;
	System::Types::TPoint FCustomPointPos;
	int FHeight;
	TTailAlign FAlign;
	int FMargin;
	bool FVisible;
	int FWidth;
	TTailEdge FEdge;
	TChartSeries* ISeries;
	Vcltee::Tecanvas::TPointArray __fastcall GetPoints(const System::Types::TRect &R, const System::Types::TPoint &AFrom, const System::Types::TPoint &ATo)/* overload */;
	Vcltee::Tecanvas::TPointArray __fastcall GetPoints(const TTailAlign align, const System::Types::TRect &R)/* overload */;
	void __fastcall SetAlign(const TTailAlign Value);
	void __fastcall SetCustomPoint(bool Value);
	void __fastcall SetCustomPointPos(const System::Types::TPoint &Value);
	void __fastcall SetHeight(int Value);
	void __fastcall SetVisible(bool Value);
	void __fastcall SetAutoAlign(bool Value);
	void __fastcall SetWidth(int Value);
	void __fastcall SetEdge(TTailEdge Value);
	
public:
	__fastcall TMarksTail(TChartSeries* const AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property bool CustomPoint = {read=FCustomPoint, write=SetCustomPoint, default=0};
	__property System::Types::TPoint CustomPointPos = {read=FCustomPointPos, write=SetCustomPointPos};
	__property TTailEdge Edge = {read=FEdge, write=SetEdge, default=3};
	
__published:
	__property bool AutoAlign = {read=FAutoAlign, write=SetAutoAlign, default=1};
	__property int Height = {read=FHeight, write=SetHeight, default=8};
	__property TTailAlign Align = {read=FAlign, write=SetAlign, default=1};
	__property int Margin = {read=FMargin, write=FMargin, default=0};
	__property bool Visible = {read=FVisible, write=SetVisible, default=0};
	__property int Width = {read=FWidth, write=SetWidth, default=8};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TMarksTail() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TSeriesMarksImages : unsigned char { miSymbol, miOnly, miNone };

enum DECLSPEC_DENUM THoverElement : unsigned char { hePrevious, heCurrent, heNext, heJoin };

typedef System::Set<THoverElement, THoverElement::hePrevious, THoverElement::heJoin> THoverElements;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TSeriesMarks : public TSeriesMarkShape
{
	typedef TSeriesMarkShape inherited;
	
public:
	TMarksItem* operator[](int Index) { return this->Item[Index]; }
	
private:
	int FAngle;
	TAutomaticText* FAutomatic;
	TMarksCallout* FCallout;
	bool FClip;
	int FDrawEvery;
	bool FFontSeriesColor;
	TMarksItems* FItems;
	bool FMultiLine;
	bool FOnTop;
	TSeriesMarksPositions* FPositions;
	TSeriesMarksImages FUseImages;
	bool FUseSeriesTransparency;
	TChartSeries* FSeries;
	bool FSoftClip;
	TSeriesMarksSymbol* FSymbol;
	TMarksTail* FTail;
	int FZPosition;
	int __fastcall CalcEvery();
	void __fastcall Delete(const int ValueIndex);
	int __fastcall GetArrowLength();
	Vcltee::Tecanvas::TWhitePen* __fastcall GetArrowPen();
	bool __fastcall GetAutoPosition();
	System::Uitypes::TColor __fastcall GetBackColor();
	HIDESBASE TMarksCallout* __fastcall GetCallout();
	TMarksItem* __fastcall GetItem(int Index);
	TSeriesMarksSymbol* __fastcall GetSymbol();
	TMarksTail* __fastcall GetTail();
	System::Classes::TAlignment __fastcall GetTextAlign();
	HIDESBASE void __fastcall InternalDraw(int Index, System::Uitypes::TColor AColor, const System::UnicodeString AText, TSeriesMarkPosition* APosition);
	void __fastcall ReadItems(System::Classes::TStream* Stream);
	HIDESBASE void __fastcall SetAngle(int Value);
	HIDESBASE void __fastcall SetCallout(TMarksCallout* const Value);
	void __fastcall SetArrowPen(Vcltee::Tecanvas::TWhitePen* const Value);
	void __fastcall SetArrowLength(int Value);
	void __fastcall SetAutomatic(TAutomaticText* const Value);
	void __fastcall SetAutoPosition(bool Value);
	void __fastcall SetBackColor(System::Uitypes::TColor Value);
	void __fastcall SetClip(bool Value);
	void __fastcall SetDrawEvery(int Value);
	void __fastcall SetFontSeriesColor(const bool Value);
	void __fastcall SetMultiline(bool Value);
	void __fastcall SetOnTop(const bool Value);
	void __fastcall SetSoftClip(const bool Value);
	void __fastcall SetSymbol(TSeriesMarksSymbol* const Value);
	void __fastcall SetTail(TMarksTail* const Value);
	HIDESBASE void __fastcall SetTextAlign(const System::Classes::TAlignment Value);
	void __fastcall SetUseImages(const TSeriesMarksImages Value);
	void __fastcall SetUseSeriesTransparency(const bool Value);
	void __fastcall WriteItems(System::Classes::TStream* Stream);
	
protected:
	bool __fastcall AntiOverlap(int First, int ValueIndex, TSeriesMarkPosition* const APosition);
	System::Types::TPoint __fastcall ConvertTo2D(const System::Types::TPoint &Point, const System::Types::TPoint &P);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	virtual Vcltee::Teeprocs::TTeeCustomShapeClass __fastcall GetChildClass();
	DYNAMIC void __fastcall InitEmboss(Vcltee::Tecanvas::TTeeEmboss* const AEmboss);
	DYNAMIC void __fastcall InitShadow(Vcltee::Tecanvas::TTeeShadow* const AShadow);
	Vcltee::Teeprocs::TTeeCustomShape* __fastcall MarkItem(int ValueIndex);
	virtual void __fastcall SetParent(Vcltee::Teeprocs::TCustomTeePanel* Value);
	int __fastcall TextWidth(int ValueIndex);
	System::Types::TRect __fastcall TotalBounds(int ValueIndex, TSeriesMarkPosition* const APosition);
	void __fastcall UsePosition(int Index, TSeriesMarkPosition* &MarkPosition);
	
public:
	__fastcall TSeriesMarks(TChartSeries* AOwner)/* overload */;
	__fastcall virtual ~TSeriesMarks();
	void __fastcall ApplyArrowLength(TSeriesMarkPosition* const APosition);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Clear();
	int __fastcall Clicked(int X, int Y)/* overload */;
	int __fastcall Clicked(const System::Types::TPoint &P)/* overload */;
	void __fastcall DrawItem(Vcltee::Teeprocs::TTeeCustomShape* const Shape, System::Uitypes::TColor AColor, const System::UnicodeString Text, TSeriesMarkPosition* const APosition);
	__classmethod void __fastcall InitGradient(Vcltee::Tecanvas::TTeeGradient* const AGradient);
	__property TAutomaticText* Automatic = {read=FAutomatic, write=SetAutomatic};
	__property bool FontSeriesColor = {read=FFontSeriesColor, write=SetFontSeriesColor, default=0};
	__property bool OnTop = {read=FOnTop, write=SetOnTop, default=0};
	__property TMarksItem* Item[int Index] = {read=GetItem/*, default*/};
	__property TMarksItems* Items = {read=FItems};
	__property TChartSeries* ParentSeries = {read=FSeries};
	__property TSeriesMarksPositions* Positions = {read=FPositions};
	void __fastcall ResetPositions();
	__property int ZPosition = {read=FZPosition, write=FZPosition, nodefault};
	
__published:
	__property int Angle = {read=FAngle, write=SetAngle, default=0};
	__property Vcltee::Tecanvas::TWhitePen* Arrow = {read=GetArrowPen, write=SetArrowPen};
	__property int ArrowLength = {read=GetArrowLength, write=SetArrowLength, stored=false, nodefault};
	__property bool AutoPosition = {read=GetAutoPosition, write=SetAutoPosition, default=1};
	__property System::Uitypes::TColor BackColor = {read=GetBackColor, write=SetBackColor, default=14811135};
	__property TMarksCallout* Callout = {read=GetCallout, write=SetCallout};
	__property bool Clip = {read=FClip, write=SetClip, default=0};
	__property int DrawEvery = {read=FDrawEvery, write=SetDrawEvery, default=1};
	__property bool MultiLine = {read=FMultiLine, write=SetMultiline, default=0};
	__property bool SoftClip = {read=FSoftClip, write=SetSoftClip, default=0};
	__property TSeriesMarksSymbol* Symbol = {read=GetSymbol, write=SetSymbol};
	__property TMarksTail* Tail = {read=GetTail, write=SetTail};
	__property System::Classes::TAlignment TextAlign = {read=GetTextAlign, write=SetTextAlign, default=2};
	__property TSeriesMarksImages UseImages = {read=FUseImages, write=SetUseImages, default=0};
	__property bool UseSeriesTransparency = {read=FUseSeriesTransparency, write=SetUseSeriesTransparency, default=1};
	__property Color = {default=14811135};
	__property RoundSize = {default=4};
public:
	/* TCustomTextShape.Create */ inline __fastcall virtual TSeriesMarks(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TSeriesMarkShape(AOwner) { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TDataSourcesList : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<System::Classes::TComponent*> _TDataSourcesList__1;
	
	
public:
	System::Classes::TComponent* operator[](int Index) { return this->Items[Index]; }
	
private:
	_TDataSourcesList__1 List;
	TChartSeries* Series;
	int __fastcall InheritedAdd(System::Classes::TComponent* const Value);
	void __fastcall InheritedClear();
	System::Classes::TComponent* __fastcall Get(int Index);
	
public:
	int __fastcall Add(System::Classes::TComponent* const Value);
	void __fastcall Clear();
	int __fastcall Count();
	int __fastcall IndexOf(System::Classes::TComponent* const Value);
	void __fastcall Remove(System::Classes::TComponent* const Value);
	__property System::Classes::TComponent* Items[int Index] = {read=Get/*, default*/};
public:
	/* TObject.Create */ inline __fastcall TDataSourcesList() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TDataSourcesList() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef bool __fastcall (__closure *TSeriesOnBeforeAdd)(TChartSeries* Sender);

typedef void __fastcall (__closure *TSeriesOnAfterAdd)(TChartSeries* Sender, int ValueIndex);

typedef void __fastcall (__closure *TSeriesOnClear)(TChartSeries* Sender);

typedef void __fastcall (__closure *TSeriesOnGetMarkText)(TChartSeries* Sender, int ValueIndex, System::UnicodeString &MarkText);

enum DECLSPEC_DENUM Vcltee_Teengine__94 : unsigned char { rOnDelete, rOnModify, rOnInsert, rOnClear };

typedef System::Set<Vcltee_Teengine__94, Vcltee_Teengine__94::rOnDelete, Vcltee_Teengine__94::rOnClear> TSeriesRecalcOptions;

enum DECLSPEC_DENUM TFunctionPeriodStyle : unsigned char { psNumPoints, psRange };

enum DECLSPEC_DENUM TFunctionPeriodAlign : unsigned char { paFirst, paCenter, paLast };

class PASCALIMPLEMENTATION TTeeFunction : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	bool FCalcByValue;
	bool FIncludeNulls;
	double FPeriod;
	TFunctionPeriodStyle FPeriodStyle;
	TFunctionPeriodAlign FPeriodAlign;
	TChartSeries* FParent;
	void __fastcall SetCalcByValue(const bool Value);
	void __fastcall SetIncludeNulls(const bool Value);
	void __fastcall SetPeriod(const double Value);
	void __fastcall SetParentSeries(TChartSeries* const AParent);
	void __fastcall SetPeriodAlign(TFunctionPeriodAlign Value);
	void __fastcall SetPeriodStyle(TFunctionPeriodStyle Value);
	
protected:
	bool IUpdating;
	bool CanUsePeriod;
	bool NoSourceRequired;
	bool SingleSource;
	bool HideSourceList;
	void __fastcall AddFunctionXY(bool YMandatorySource, const double tmpX, const double tmpY);
	virtual void __fastcall CalculatePeriod(TChartSeries* Source, const double tmpX, int FirstIndex, int LastIndex);
	virtual void __fastcall AddValue(const double Value, const TChartValues Values, int Index);
	virtual double __fastcall CalculateValue(const TChartValues Values);
	virtual void __fastcall CalculateAllPoints(TChartSeries* Source, TChartValueList* NotMandatorySource);
	virtual void __fastcall CalculateByPeriod(TChartSeries* Source, TChartValueList* NotMandatorySource);
	DYNAMIC void __fastcall Clear();
	virtual void __fastcall DoCalculation(TChartSeries* Source, TChartValueList* NotMandatorySource);
	__classmethod virtual TChartSeriesClass __fastcall GallerySource();
	__classmethod virtual System::UnicodeString __fastcall GetEditorClass();
	void __fastcall InternalSetPeriod(const double APeriod);
	DYNAMIC bool __fastcall IsValidSource(TChartSeries* const Value);
	virtual void __fastcall PrepareForGallery(TCustomAxisPanel* const Chart);
	DYNAMIC void __fastcall SetParentComponent(System::Classes::TComponent* Value);
	void __fastcall SplitAxes();
	TChartValueList* __fastcall ValueList(TChartSeries* const ASeries);
	
public:
	__fastcall virtual TTeeFunction(System::Classes::TComponent* AOwner);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	DYNAMIC void __fastcall AddPoints(TChartSeries* Source);
	void __fastcall BeginUpdate();
	virtual double __fastcall Calculate(TChartSeries* const SourceSeries, int First, int Last);
	virtual double __fastcall CalculateMany(TDataSourcesList* const SourceSeriesList, int ValueIndex);
	virtual double __fastcall CalculateManyByValue(TDataSourcesList* const SourceSeriesList, double Value);
	void __fastcall EndUpdate();
	DYNAMIC System::Classes::TComponent* __fastcall GetParentComponent();
	DYNAMIC bool __fastcall HasParent();
	__property TChartSeries* ParentSeries = {read=FParent, write=SetParentSeries};
	void __fastcall ReCalculate();
	
__published:
	__property bool CalcByValue = {read=FCalcByValue, write=SetCalcByValue, default=0};
	__property bool IncludeNulls = {read=FIncludeNulls, write=SetIncludeNulls, default=1};
	__property double Period = {read=FPeriod, write=SetPeriod};
	__property TFunctionPeriodAlign PeriodAlign = {read=FPeriodAlign, write=SetPeriodAlign, default=1};
	__property TFunctionPeriodStyle PeriodStyle = {read=FPeriodStyle, write=SetPeriodStyle, default=0};
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TTeeFunction() { }
	
};


class PASCALIMPLEMENTATION TTeeMovingFunction : public TTeeFunction
{
	typedef TTeeFunction inherited;
	
protected:
	virtual void __fastcall DoCalculation(TChartSeries* Source, TChartValueList* NotMandatorySource);
	
public:
	__fastcall virtual TTeeMovingFunction(System::Classes::TComponent* AOwner);
	
__published:
	__property Period = {default=0};
	__property PeriodAlign = {default=2};
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TTeeMovingFunction() { }
	
};


class PASCALIMPLEMENTATION TChartValueLists : public System::Generics::Collections::TObjectList__1<TChartValueList*>
{
	typedef System::Generics::Collections::TObjectList__1<TChartValueList*> inherited;
	
public:
	TChartValueList* operator[](int Index) { return this->ValueList[Index]; }
	
private:
	TChartValueList* __fastcall Get(int Index);
	
public:
	__property TChartValueList* ValueList[int Index] = {read=Get/*, default*/};
public:
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartValueList>.Create */ inline __fastcall TChartValueLists()/* overload */ : System::Generics::Collections::TObjectList__1<TChartValueList*>() { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartValueList>.Create */ inline __fastcall TChartValueLists(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TChartValueList*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartValueList>.Create */ inline __fastcall TChartValueLists(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TChartValueList*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TChartValueList*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartValueList>.Create */ inline __fastcall TChartValueLists(System::Generics::Collections::TEnumerable__1<TChartValueList*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<TChartValueList*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeEngine_TChartValueList>.Destroy */ inline __fastcall virtual ~TChartValueLists() { }
	
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartValueList>.Create */ inline __fastcall TChartValueLists(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TChartValueList*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<TChartValueList*>(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartValueList>.Create */ inline __fastcall TChartValueLists(System::Generics::Collections::TEnumerable__1<TChartValueList*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<TChartValueList*>(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartValueList>.Create */ inline __fastcall TChartValueLists(TChartValueList* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<TChartValueList*>(Values, Values_High) { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TSeriesLegend : public TCustomTextShape
{
	typedef TCustomTextShape inherited;
	
__published:
	__property Picture;
	__property Text = {default=0};
	__property Visible;
public:
	/* TCustomTextShape.Create */ inline __fastcall virtual TSeriesLegend(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TCustomTextShape(AOwner) { }
	/* TCustomTextShape.Destroy */ inline __fastcall virtual ~TSeriesLegend() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM Vcltee_Teengine__45 : unsigned char { tssIsTemplate, tssDenyChangeType, tssDenyDelete, tssDenyClone, tssIsPersistent, tssHideDataSource };

typedef System::Set<Vcltee_Teengine__45, Vcltee_Teengine__45::tssIsTemplate, Vcltee_Teengine__45::tssHideDataSource> TChartSeriesStyle;

class PASCALIMPLEMENTATION TCustomChartSeries : public TCustomChartElement
{
	typedef TCustomChartElement inherited;
	
private:
	System::UnicodeString FIdentifier;
	TSeriesLegend* FLegend;
	TChartSeriesStyle FStyle;
	System::UnicodeString FTitle;
	int __fastcall GetIndex();
	TSeriesLegend* __fastcall GetLegend();
	System::UnicodeString __fastcall GetLegendTitle();
	bool __fastcall GetShowInLegend();
	void __fastcall ReadIdentifier(System::Classes::TReader* Reader);
	void __fastcall WriteIdentifier(System::Classes::TWriter* Writer);
	void __fastcall ReadStyle(System::Classes::TReader* Reader);
	void __fastcall WriteStyle(System::Classes::TWriter* Writer);
	void __fastcall RepaintDesigner();
	void __fastcall SetLegend(TSeriesLegend* const Value);
	void __fastcall SetLegendTitle(const System::UnicodeString Value);
	void __fastcall SetShowInLegend(const bool Value);
	void __fastcall SetTitle(const System::UnicodeString Value);
	
protected:
	Vcltee::Tecanvas::TTeeTransform* Transform;
	DYNAMIC void __fastcall Added();
	virtual void __fastcall CalcHorizMargins(int &LeftMargin, int &RightMargin);
	virtual void __fastcall CalcVerticalMargins(int &TopMargin, int &BottomMargin);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	virtual void __fastcall DoBeforeDrawChart();
	DYNAMIC void __fastcall GalleryChanged3D(bool Is3D);
	DYNAMIC void __fastcall RecalcAxisMargins(TChartAxis* const Axis, System::Types::TRect &R);
	DYNAMIC void __fastcall Removed();
	virtual void __fastcall SetActive(bool Value);
	
public:
	__fastcall virtual ~TCustomChartSeries();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	bool __fastcall SameClass(TChartSeries* const tmpSeries);
	__property int SeriesIndex = {read=GetIndex, nodefault};
	__property TSeriesLegend* Legend = {read=GetLegend, write=SetLegend};
	__property System::UnicodeString LegendTitle = {read=GetLegendTitle, write=SetLegendTitle};
	__property bool ShowInLegend = {read=GetShowInLegend, write=SetShowInLegend, default=1};
	__property System::UnicodeString Title = {read=FTitle, write=SetTitle};
	__property System::UnicodeString Identifier = {read=FIdentifier, write=FIdentifier};
	__property TChartSeriesStyle Style = {read=FStyle, write=FStyle, default=0};
public:
	/* TCustomChartElement.Create */ inline __fastcall virtual TCustomChartSeries(System::Classes::TComponent* AOwner) : TCustomChartElement(AOwner) { }
	
};


struct DECLSPEC_DRECORD TSeriesRandomBounds
{
public:
	double tmpX;
	double StepX;
	double tmpY;
	double MinY;
	double DifY;
};


#ifndef _WIN64
typedef System::TMetaClass* TTeeFunctionClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TTeeFunctionClass);
#endif /* _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeSeriesType : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	TChartSeriesClass SeriesClass;
	TTeeFunctionClass FunctionClass;
	System::UnicodeString *Description;
	System::UnicodeString *GalleryPage;
	int NumGallerySeries;
	int SubIndex;
	System::UnicodeString __fastcall Caption();
public:
	/* TObject.Create */ inline __fastcall TTeeSeriesType() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTeeSeriesType() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef TCustomAxisPanel* __fastcall (__closure *TChartSubGalleryProc)(const System::UnicodeString AName);

enum DECLSPEC_DENUM TLegendTextStyle : unsigned char { ltsPlain, ltsLeftValue, ltsRightValue, ltsLeftPercent, ltsRightPercent, ltsXValue, ltsValue, ltsPercent, ltsXAndValue, ltsXAndPercent, ltsXAndText, ltsXAndValueAndText };

enum DECLSPEC_DENUM TeeFormatFlags : unsigned char { tfNoMandatory, tfColor, tfLabel, tfMarkPosition, tfPictures };

typedef System::Set<TeeFormatFlags, TeeFormatFlags::tfNoMandatory, TeeFormatFlags::tfPictures> TeeFormatFlag;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TLabelsList : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<System::UnicodeString> _TLabelsList__1;
	
	
public:
	System::UnicodeString operator[](int Index) { return this->Labels[Index]; }
	
private:
	_TLabelsList__1 List;
	TChartSeries* Series;
	bool FCaseSensitive;
	bool IAnyEmpty;
	void __fastcall DeleteLabel(int ValueIndex);
	System::UnicodeString __fastcall GetLabel(int ValueIndex);
	void __fastcall SetLabel(int ValueIndex, const System::UnicodeString ALabel);
	void __fastcall InsertLabel(int ValueIndex, const System::UnicodeString ALabel);
	void __fastcall SetCaseSensitive(bool Value);
	
protected:
	void __fastcall Resize(const int ACount);
	
public:
	__fastcall virtual ~TLabelsList();
	void __fastcall Assign(TLabelsList* const Source);
	void __fastcall Clear();
	int __fastcall Count();
	void __fastcall Exchange(const int A, const int B);
	int __fastcall IndexOfLabel(const System::UnicodeString ALabel, bool CaseSensitive = true);
	__property System::UnicodeString Labels[int Index] = {read=GetLabel, write=SetLabel/*, default*/};
	__property bool CaseSensitive = {read=FCaseSensitive, write=SetCaseSensitive, default=1};
public:
	/* TObject.Create */ inline __fastcall TLabelsList() : System::TObject() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TVisualsList : public System::Generics::Collections::TObjectList__1<Vcltee::Tecanvas::TVisualBlock*>
{
	typedef System::Generics::Collections::TObjectList__1<Vcltee::Tecanvas::TVisualBlock*> inherited;
	
public:
	Vcltee::Tecanvas::TVisualBlock* operator[](int Index) { return this->Visuals[Index]; }
	
private:
	TChartSeries* FSeries;
	Vcltee::Tecanvas::TVisualBlock* FTemplate;
	void __fastcall DeleteVisual(int ValueIndex);
	Vcltee::Tecanvas::TVisualBlock* __fastcall GetVisual(int ValueIndex);
	void __fastcall InsertVisual(int ValueIndex, Vcltee::Tecanvas::TVisualBlock* const AVisual);
	void __fastcall SetTemplate(Vcltee::Tecanvas::TVisualBlock* const Value);
	void __fastcall SetVisual(int ValueIndex, Vcltee::Tecanvas::TVisualBlock* const AVisual);
	
public:
	void __fastcall Assign(TVisualsList* const Source);
	virtual void __fastcall Edit(int Index = 0xffffffff);
	__property TChartSeries* Series = {read=FSeries};
	__property Vcltee::Tecanvas::TVisualBlock* Template = {read=FTemplate, write=SetTemplate};
	__property Vcltee::Tecanvas::TVisualBlock* Visuals[int Index] = {read=GetVisual, write=SetVisual/*, default*/};
public:
	/* {System_Generics_Collections}TObjectList<VCLTee_TeCanvas_TVisualBlock>.Create */ inline __fastcall TVisualsList()/* overload */ : System::Generics::Collections::TObjectList__1<Vcltee::Tecanvas::TVisualBlock*>() { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeCanvas_TVisualBlock>.Create */ inline __fastcall TVisualsList(bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Vcltee::Tecanvas::TVisualBlock*>(AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeCanvas_TVisualBlock>.Create */ inline __fastcall TVisualsList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Vcltee::Tecanvas::TVisualBlock*> > AComparer, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Vcltee::Tecanvas::TVisualBlock*>(AComparer, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeCanvas_TVisualBlock>.Create */ inline __fastcall TVisualsList(System::Generics::Collections::TEnumerable__1<Vcltee::Tecanvas::TVisualBlock*>* const Collection, bool AOwnsObjects)/* overload */ : System::Generics::Collections::TObjectList__1<Vcltee::Tecanvas::TVisualBlock*>(Collection, AOwnsObjects) { }
	/* {System_Generics_Collections}TObjectList<VCLTee_TeCanvas_TVisualBlock>.Destroy */ inline __fastcall virtual ~TVisualsList() { }
	
public:
	/* {System_Generics_Collections}TList<VCLTee_TeCanvas_TVisualBlock>.Create */ inline __fastcall TVisualsList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Vcltee::Tecanvas::TVisualBlock*> > AComparer)/* overload */ : System::Generics::Collections::TObjectList__1<Vcltee::Tecanvas::TVisualBlock*>(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeCanvas_TVisualBlock>.Create */ inline __fastcall TVisualsList(System::Generics::Collections::TEnumerable__1<Vcltee::Tecanvas::TVisualBlock*>* const Collection)/* overload */ : System::Generics::Collections::TObjectList__1<Vcltee::Tecanvas::TVisualBlock*>(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeCanvas_TVisualBlock>.Create */ inline __fastcall TVisualsList(Vcltee::Tecanvas::TVisualBlock* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TObjectList__1<Vcltee::Tecanvas::TVisualBlock*>(Values, Values_High) { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeePictureList : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<Vcltee::Tecanvas::TTeePicture*> _TTeePictureList__1;
	
	
public:
	Vcltee::Tecanvas::TTeePicture* operator[](const int Index) { return this->Items[Index]; }
	
private:
	_TTeePictureList__1 List;
	TChartSeries* Series;
	void __fastcall Delete(const int ValueIndex);
	Vcltee::Tecanvas::TTeePicture* __fastcall Get(const int ValueIndex);
	void __fastcall Put(const int ValueIndex, Vcltee::Tecanvas::TTeePicture* const APicture);
	void __fastcall Insert(const int ValueIndex, Vcltee::Tecanvas::TTeePicture* const APicture);
	
public:
	bool OwnsPictures;
	bool Stored;
	__fastcall virtual ~TTeePictureList();
	void __fastcall Assign(TTeePictureList* const Source);
	void __fastcall Clear();
	int __fastcall Count();
	void __fastcall Exchange(int A, int B);
	static Vcltee::Tecanvas::TTeePicture* __fastcall Copy(Vcltee::Tecanvas::TTeePicture* const APicture);
	static Vcltee::Tecanvas::TTeePicture* __fastcall FromGraphic(Vcl::Graphics::TGraphic* const AGraphic);
	int __fastcall IndexOf(Vcltee::Tecanvas::TTeePicture* const APicture);
	__property Vcltee::Tecanvas::TTeePicture* Items[const int Index] = {read=Get, write=Put/*, default*/};
public:
	/* TObject.Create */ inline __fastcall TTeePictureList() : System::TObject() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TDetailAggregate : unsigned char { daSum, daCount, daAverage, daMin, daMax };

class PASCALIMPLEMENTATION TSeriesDetail : public TCustomSeriesList
{
	typedef TCustomSeriesList inherited;
	
private:
	TDetailAggregate FAggregate;
	TChartSeries* IParent;
	void __fastcall SetAggregate(const TDetailAggregate Value);
	
protected:
	double __fastcall Calculate(TChartValueList* const Values);
	
public:
	__fastcall virtual ~TSeriesDetail();
	TChartSeries* __fastcall CreateNew(TChartSeries* const AParent);
	void __fastcall ReCalculate();
	__property TDetailAggregate Aggregate = {read=FAggregate, write=SetAggregate, default=0};
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TSeriesDetail()/* overload */ : TCustomSeriesList() { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TSeriesDetail(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TChartSeries*> > AComparer)/* overload */ : TCustomSeriesList(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TSeriesDetail(System::Generics::Collections::TEnumerable__1<TChartSeries*>* const Collection)/* overload */ : TCustomSeriesList(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TChartSeries>.Create */ inline __fastcall TSeriesDetail(TChartSeries* const *Values, const int Values_High)/* overload */ : TCustomSeriesList(Values, Values_High) { }
	
};


enum DECLSPEC_DENUM TTreatNullsStyle : unsigned char { tnDontPaint, tnSkip, tnIgnore };

typedef System::Generics::Collections::TList__1<System::Uitypes::TColor>* TColorsList;

typedef System::DynamicArray<int> TIntArray;

enum DECLSPEC_DENUM TSeriesClickedPartStyle : unsigned char { scpNone, scpSegment, scpPointer, scpMark };

class PASCALIMPLEMENTATION TChartSeries : public TCustomChartSeries
{
	typedef TCustomChartSeries inherited;
	
private:
	System::Uitypes::TColor FColor;
	bool FColorEachPoint;
	System::UnicodeString FColorSource;
	System::Uitypes::TCursor FCursor;
	TDataSourcesList* FDataSources;
	int FDepth;
	TSeriesDetail* FDetail;
	TChartAxis* FGetHorizAxis;
	TChartAxis* FGetVertAxis;
	THoverElements FHoverElement;
	TLabelsList* FLabels;
	System::UnicodeString FLabelsSource;
	TCustomSeriesList* FLinkedSeries;
	TSeriesMarks* FMarks;
	System::UnicodeString FPercentFormat;
	TTeePictureList* FPictures;
	TTeeSelected* FSelected;
	Vcltee::Tecanvas::TTeeTransparency FTransparency;
	TTreatNullsStyle FTreatNulls;
	System::Classes::TStringList* FTempDataSources;
	System::UnicodeString FValueFormat;
	TChartValueLists* FValuesList;
	TVisualsList* FVisuals;
	TChartValueList* FX;
	TChartValueList* FY;
	double FDefaultNull;
	THorizAxis FHorizAxis;
	TChartAxis* FCustomHorizAxis;
	TChartAxis* FCustomVertAxis;
	int FZOrder;
	TVertAxis FVertAxis;
	TSeriesRecalcOptions FRecalcOptions;
	TTeeFunction* FTeeFunction;
	bool IsMouseInside;
	TChartListOrder ILabelOrder;
	System::Uitypes::TColor ISeriesColor;
	System::Classes::TNotifyEvent FAfterDrawValues;
	System::Classes::TNotifyEvent FBeforeDrawValues;
	TSeriesOnAfterAdd FOnAfterAdd;
	TSeriesOnBeforeAdd FOnBeforeAdd;
	TSeriesOnClear FOnClearValues;
	TSeriesClick FOnClick;
	TSeriesClick FOnDblClick;
	TSeriesOnGetMarkText FOnGetMarkText;
	System::Classes::TNotifyEvent FOnMouseEnter;
	System::Classes::TNotifyEvent FOnMouseLeave;
	void __fastcall BeginEntity();
	void __fastcall BroadcastEvent(TChartToolEvent AEvent);
	bool __fastcall CanAddRandomPoints();
	void __fastcall ChangeInternalColor(System::Uitypes::TColor Value);
	int __fastcall CompareLabelIndex(int a, int b);
	System::Classes::TComponent* __fastcall GetDataSource();
	TDataSourcesList* __fastcall GetDataSources();
	TSeriesDetail* __fastcall GetDetail();
	Vcltee::Teeprocs::TBackImage* __fastcall GetImage();
	TCustomSeriesList* __fastcall GetLinkedSeries();
	TSeriesMarks* __fastcall GetMarks();
	System::UnicodeString __fastcall GetMarkTextStyle(bool MultiLine, int ValueIndex, TSeriesMarksStyle AStyle);
	TTeePictureList* __fastcall GetPictures();
	TTeeSelected* __fastcall GetSelected();
	TVisualsList* __fastcall GetVisuals();
	System::UnicodeString __fastcall GetXLabel(int Index);
	int __fastcall GetZOrder();
	void __fastcall GrowColors();
	int __fastcall InternalAddDataSource(System::Classes::TComponent* const Value);
	int __fastcall InternalSetDataSource(System::Classes::TComponent* const Value, bool ClearAll);
	void __fastcall InternalRemoveDataSource(System::Classes::TComponent* const Value);
	bool __fastcall IsDataSourceStored();
	bool __fastcall IsPercentFormatStored();
	bool __fastcall IsValidDataSource(System::Classes::TComponent* const Value);
	bool __fastcall IsValueFormatStored();
	void __fastcall NotifyColorChanged();
	void __fastcall ReadCustomHorizAxis(System::Classes::TReader* Reader);
	void __fastcall ReadCustomVertAxis(System::Classes::TReader* Reader);
	void __fastcall ReadDataSources(System::Classes::TReader* Reader);
	void __fastcall ReadDetail(System::Classes::TStream* Stream);
	void __fastcall RemoveAllLinkedSeries();
	void __fastcall SetColorSource(const System::UnicodeString Value);
	void __fastcall SetCustomHorizAxis(TChartAxis* const Value);
	void __fastcall SetCustomVertAxis(TChartAxis* const Value);
	void __fastcall SetDataSource(System::Classes::TComponent* const Value);
	void __fastcall SetDepth(const int Value);
	void __fastcall SetHorizAxis(const THorizAxis Value);
	void __fastcall SetImage(Vcltee::Teeprocs::TBackImage* const Value);
	void __fastcall SetLabelsSource(const System::UnicodeString Value);
	void __fastcall SetMarks(TSeriesMarks* const Value);
	void __fastcall SetPercentFormat(const System::UnicodeString Value);
	void __fastcall SetSelected(TTeeSelected* const Value);
	void __fastcall SetTreatNulls(const TTreatNullsStyle Value);
	void __fastcall SetValueColor(int ValueIndex, System::Uitypes::TColor AColor);
	void __fastcall SetVertAxis(const TVertAxis Value);
	void __fastcall SetXLabel(int Index, const System::UnicodeString Value);
	void __fastcall SetXValue(int Index, const double Value);
	void __fastcall SetYValue(int Index, const double Value);
	void __fastcall SetZOrder(int Value);
	void __fastcall WriteCustomHorizAxis(System::Classes::TWriter* Writer);
	void __fastcall WriteCustomVertAxis(System::Classes::TWriter* Writer);
	void __fastcall WriteDataSources(System::Classes::TWriter* Writer);
	void __fastcall WriteDetail(System::Classes::TStream* Stream);
	
protected:
	bool DontSaveData;
	bool ForceSaveData;
	System::Generics::Collections::TList__1<System::Uitypes::TColor>* FColors;
	int FFirstVisibleIndex;
	int FLastVisibleIndex;
	bool IHideWhenVisible;
	int INumSampleValues;
	int IUpdating;
	bool IUseSeriesColor;
	bool IUseNotMandatory;
	int IZOrder;
	Vcltee::Teeprocs::TTeeCustomShape* ILegend;
	int IFirstDrawIndex;
	bool IMandatoryPen;
	bool IMandatoryPen2D;
	bool FZoomSeries;
	bool INoAxisMinMax;
	TSeriesClickedPartStyle IClickedPart;
	TChartSeries* ParentSeries;
	virtual int __fastcall AddChartValue(TChartSeries* Source, int ValueIndex);
	DYNAMIC void __fastcall Added();
	virtual void __fastcall AddedValue(TChartSeries* Source, int ValueIndex);
	void __fastcall AddLinkedSeries(TChartSeries* const ASeries);
	DYNAMIC void __fastcall AddSampleValues(int NumValues, bool OnlyMandatory = false);
	virtual void __fastcall AddValues(TChartSeries* Source);
	virtual void __fastcall AssignFormatting(TChartSeries* Source);
	virtual TAxisLabelStyle __fastcall AxisLabelStyle(TChartAxis* const AAxis);
	virtual void __fastcall BeforeCalcAxis();
	void __fastcall CalcFirstLastPage(/* out */ int &First, /* out */ int &Last);
	virtual void __fastcall CalcZOrder();
	virtual void __fastcall CalcDepthPositions();
	virtual int __fastcall CalcLegendIndex(int LegendIndex);
	virtual void __fastcall CalcSelectionPos(int ValueIndex, /* out */ int &X, /* out */ int &Y);
	void __fastcall CalculateMarkPosition(Vcltee::Teeprocs::TTeeCustomShape* const Shape, const System::UnicodeString AText, int XPos, int YPos, TSeriesMarkPosition* &APosition);
	virtual bool __fastcall CanBeforeParallel();
	virtual bool __fastcall CanDrawMark(int ValueIndex);
	virtual void __fastcall ChangedAxisScale(TChartAxis* const Axis);
	virtual bool __fastcall CheckMouse(int x, int y);
	virtual void __fastcall ClearLists();
	virtual bool __fastcall ClickedPointer(int ValueIndex, int tmpX, int tmpY, int x, int y)/* overload */;
	bool __fastcall ClickedPointer(int ValueIndex, int tmpX, int tmpY, const System::Types::TPoint &P)/* overload */;
	__classmethod virtual void __fastcall CreateSubGallery(TChartSubGalleryProc AddSubChart);
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	virtual void __fastcall DeletedValue(TChartSeries* Source, int ValueIndex);
	virtual void __fastcall DoAfterDrawValues();
	virtual void __fastcall DoBeforeDrawValues();
	virtual void __fastcall DoBeforeParallel();
	virtual void __fastcall DrawAllValues();
	virtual void __fastcall DrawLegendShape(int ValueIndex, const System::Types::TRect &Rect);
	virtual void __fastcall DrawMark(int ValueIndex, const System::UnicodeString St, TSeriesMarkPosition* APosition);
	virtual void __fastcall DrawMarks();
	virtual void __fastcall DrawValue(int ValueIndex);
	virtual void __fastcall DrawHiddenValue(int ValueIndex, const double StartValue, const double EndValue, int GapSize, TChartAxis* Axis);
	virtual bool __fastcall DrawSeriesAscending();
	bool __fastcall FirstInZOrder();
	DYNAMIC void __fastcall GetChildren(System::Classes::TGetChildProc Proc, System::Classes::TComponent* Root);
	virtual System::UnicodeString __fastcall GetMarkLabel(int ValueIndex);
	System::UnicodeString __fastcall GetMarkText(int ValueIndex);
	System::Uitypes::TColor __fastcall GetSeriesColor();
	virtual System::Uitypes::TColor __fastcall GetValueColor(int ValueIndex);
	virtual double __fastcall GetxValue(int ValueIndex);
	virtual double __fastcall GetyValue(int ValueIndex);
	bool __fastcall HasLabels();
	virtual bool __fastcall HasPointLabels();
	virtual bool __fastcall HoverEnabled();
	int __fastcall HoverOverMark();
	int __fastcall HoverOverSegment();
	System::Uitypes::TColor __fastcall InternalColor(int ValueIndex);
	virtual bool __fastcall InvertedLegend();
	bool __fastcall IsColorStored();
	bool __fastcall IsDataStored();
	bool __fastcall IsPainted(const int ValueIndex);
	virtual bool __fastcall IsPointInChartRect(int ValueIndex);
	virtual void __fastcall Loaded();
	TChartAxis* __fastcall MandatoryAxis();
	virtual System::Types::TPoint __fastcall MarkOverlap(int ValueIndex, const System::Types::TRect &A, const System::Types::TRect &B);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall NotifyColorChange(int ValueIndex);
	virtual void __fastcall NotifyNewValue(TChartSeries* Sender, int ValueIndex);
	virtual void __fastcall NotifyValue(TValueEvent ValueEvent, int ValueIndex);
	virtual void __fastcall MouseDown(int ValueIndex, bool AtPointer, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);
	virtual bool __fastcall MoreSameZOrder();
	DYNAMIC void __fastcall PrepareForGallery();
	virtual bool __fastcall PrepareHoverPen(int ValueIndex);
	virtual void __fastcall PrepareLegendCanvas(int ValueIndex, System::Uitypes::TColor &BackColor, Vcl::Graphics::TBrushStyle &BrushStyle);
	__classmethod int __fastcall RandomValue(const int Range);
	void __fastcall ReadData(System::Classes::TStream* Stream);
	DYNAMIC void __fastcall Removed();
	void __fastcall RemoveLinkedSeries(TChartSeries* const ASeries);
	void __fastcall SetChartValueList(TChartValueList* const AValueList, TChartValueList* const Value);
	virtual void __fastcall SetColorEachPoint(bool Value);
	void __fastcall SetDefaultColor();
	void __fastcall SetHorizontal();
	void __fastcall SetMarkText(int ValueIndex, const System::UnicodeString Value);
	virtual void __fastcall SetParentChart(TCustomAxisPanel* const Value);
	virtual void __fastcall SetSeriesColor(System::Uitypes::TColor AColor);
	__classmethod virtual void __fastcall SetSubGallery(TChartSeries* ASeries, int Index);
	virtual void __fastcall SetTransparency(const Vcltee::Tecanvas::TTeeTransparency Value);
	virtual void __fastcall SetValueFormat(const System::UnicodeString Value);
	void __fastcall SetXValues(TChartValueList* const Value);
	void __fastcall SetYValues(TChartValueList* const Value);
	virtual bool __fastcall ShouldHoverMark(int ValueIndex);
	virtual TIntArray __fastcall SortDrawPoints(int FirstPoint, int LastPoint, bool SingleSeries);
	virtual TIntArray __fastcall SortDrawSeries(int FirstSeries, int LastSeries, int ValueIndex);
	virtual TChartValueList* __fastcall ValueListOfAxis(TChartAxis* const Axis);
	DYNAMIC void __fastcall WriteData(System::Classes::TStream* Stream);
	void __fastcall RecalcGetAxis();
	virtual bool __fastcall RaiseClicked();
	virtual int __fastcall ValueIndexToLegend(int ValueIndex);
	
public:
	bool CalcVisiblePoints;
	bool DrawBetweenPoints;
	bool AllowSinglePoint;
	bool HasZValues;
	int StartZ;
	int MiddleZ;
	int EndZ;
	TChartValueList* MandatoryValueList;
	bool ManualData;
	TChartValueList* NotMandatoryValueList;
	bool YMandatory;
	__fastcall virtual TChartSeries(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TChartSeries();
	virtual int __fastcall Add(const double AValue, const System::UnicodeString ALabel = System::UnicodeString(), System::Uitypes::TColor AColor = (System::Uitypes::TColor)(0x20000000))/* overload */;
	int __fastcall Add(const double *ADetail, const int ADetail_High, const System::UnicodeString ALabel = System::UnicodeString(), System::Uitypes::TColor AColor = (System::Uitypes::TColor)(0x20000000))/* overload */;
	int __fastcall AddArray(const int *Values, const int Values_High)/* overload */;
	int __fastcall AddArray(const double *Values, const int Values_High)/* overload */;
	int __fastcall AddArray(const double *XValues, const int XValues_High, const double *YValues, const int YValues_High)/* overload */;
	int __fastcall AddNull(const double Value)/* overload */;
	virtual int __fastcall AddNull(const System::UnicodeString ALabel = System::UnicodeString())/* overload */;
	virtual int __fastcall AddNullXY(const double X, const double Y, const System::UnicodeString ALabel = System::UnicodeString());
	int __fastcall AddX(const double AXValue, const System::UnicodeString ALabel = System::UnicodeString(), System::Uitypes::TColor AColor = (System::Uitypes::TColor)(0x20000000));
	virtual int __fastcall AddXY(const double AXValue, const double AYValue, const System::UnicodeString ALabel = System::UnicodeString(), System::Uitypes::TColor AColor = (System::Uitypes::TColor)(0x20000000));
	int __fastcall AddY(const double AYValue, const System::UnicodeString ALabel = System::UnicodeString(), System::Uitypes::TColor AColor = (System::Uitypes::TColor)(0x20000000));
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall AssignFormat(TChartSeries* const Source);
	virtual bool __fastcall AssociatedToAxis(TChartAxis* const Axis);
	void __fastcall BeginUpdate();
	DYNAMIC void __fastcall CheckOrder();
	virtual void __fastcall Clear();
	int __fastcall Count();
	virtual int __fastcall CountLegendItems();
	virtual void __fastcall Delete(int ValueIndex)/* overload */;
	virtual void __fastcall Delete(int Start, int Quantity, bool RemoveGap = false)/* overload */;
	void __fastcall EndUpdate();
	DYNAMIC void __fastcall FillSampleValues(int NumValues = 0x0);
	int __fastcall FirstDisplayedIndex();
	int __fastcall LastDisplayedIndex();
	bool __fastcall IsNull(int ValueIndex);
	DYNAMIC bool __fastcall IsValidSourceOf(TChartSeries* Value);
	DYNAMIC bool __fastcall IsValidSeriesSource(TChartSeries* Value);
	virtual int __fastcall LegendToValueIndex(int LegendIndex);
	virtual System::Uitypes::TColor __fastcall LegendItemColor(int LegendIndex);
	virtual System::UnicodeString __fastcall LegendString(int LegendIndex, TLegendTextStyle LegendTextStyle);
	__property TCustomSeriesList* LinkedSeries = {read=GetLinkedSeries};
	virtual double __fastcall MaxXValue();
	virtual double __fastcall MaxYValue();
	virtual double __fastcall MaxZValue();
	virtual double __fastcall MinXValue();
	virtual double __fastcall MinYValue();
	virtual double __fastcall MinZValue();
	DYNAMIC int __fastcall NumSampleValues();
	TSeriesRandomBounds __fastcall RandomBounds(int NumValues);
	void __fastcall RemoveDataSource(System::Classes::TComponent* const Value);
	void __fastcall SetNull(int ValueIndex, bool Null = true);
	void __fastcall SortByLabels(TChartListOrder Order = (TChartListOrder)(0x1));
	int __fastcall VisibleCount();
	__property TChartValueLists* ValuesList = {read=FValuesList};
	__property double XValue[int Index] = {read=GetxValue, write=SetXValue};
	__property double YValue[int Index] = {read=GetyValue, write=SetYValue};
	__property int ZOrder = {read=GetZOrder, write=SetZOrder, default=-1};
	int __fastcall MaxMarkWidth();
	virtual int __fastcall CalcXPos(int ValueIndex);
	virtual int __fastcall CalcXPosValue(const double Value);
	int __fastcall CalcXSizeValue(const double Value);
	virtual int __fastcall CalcYPos(int ValueIndex);
	virtual int __fastcall CalcYPosValue(const double Value);
	int __fastcall CalcYSizeValue(const double Value);
	int __fastcall CalcPosValue(const double Value);
	virtual double __fastcall XScreenToValue(int ScreenPos);
	virtual double __fastcall YScreenToValue(int ScreenPos);
	System::UnicodeString __fastcall XValueToText(const double AValue);
	System::UnicodeString __fastcall YValueToText(const double AValue);
	virtual void __fastcall CalcFirstLastVisibleIndex();
	void __fastcall ColorRange(TChartValueList* const AValueList, const double FromValue, const double ToValue, System::Uitypes::TColor AColor);
	void __fastcall CheckDataSource();
	__property TSeriesDetail* Detail = {read=GetDetail};
	__property TLabelsList* Labels = {read=FLabels};
	__property TTeePictureList* Pictures = {read=GetPictures};
	__property TVisualsList* Visuals = {read=GetVisuals};
	__property System::UnicodeString XLabel[int Index] = {read=GetXLabel, write=SetXLabel};
	__property System::UnicodeString ValueMarkText[int Index] = {read=GetMarkText, write=SetMarkText};
	__property System::Uitypes::TColor ValueColor[int Index] = {read=GetValueColor, write=SetValueColor};
	__property TChartValueList* XValues = {read=FX, write=SetXValues};
	__property TChartValueList* YValues = {read=FY, write=SetYValues};
	virtual TChartValueList* __fastcall GetYValueList(System::UnicodeString AListName);
	__property TChartAxis* GetVertAxis = {read=FGetVertAxis};
	__property TChartAxis* GetHorizAxis = {read=FGetHorizAxis};
	System::UnicodeString __fastcall MarkPercent(int ValueIndex, bool AddTotal = false);
	virtual int __fastcall Clicked(int x, int y)/* overload */;
	int __fastcall Clicked(const float X, const float Y)/* overload */;
	int __fastcall Clicked(const System::Types::TPoint &P)/* overload */;
	void __fastcall RefreshSeries();
	__property int FirstValueIndex = {read=FFirstVisibleIndex, nodefault};
	__property int LastValueIndex = {read=FLastVisibleIndex, nodefault};
	virtual double __fastcall GetOriginValue(int ValueIndex);
	virtual double __fastcall GetMarkValue(int ValueIndex);
	void __fastcall AssignValues(TChartSeries* const Source);
	virtual bool __fastcall DrawValuesForward();
	virtual bool __fastcall DrawSeriesForward(int ValueIndex);
	DYNAMIC void __fastcall SwapValueIndex(int a, int b);
	__property TSeriesRecalcOptions RecalcOptions = {read=FRecalcOptions, write=FRecalcOptions, default=15};
	int __fastcall GetCursorValueIndex();
	void __fastcall GetCursorValues(/* out */ double &XValue, /* out */ double &YValue);
	virtual void __fastcall DrawLegend(int ValueIndex, const System::Types::TRect &Rect);
	virtual bool __fastcall UseAxis();
	virtual bool __fastcall CanZoomScroll();
	virtual void __fastcall SetFunction(TTeeFunction* AFunction);
	__property System::Uitypes::TColor SeriesColor = {read=GetSeriesColor, write=SetSeriesColor, stored=IsColorStored, nodefault};
	__property double DefaultNullValue = {read=FDefaultNull, write=FDefaultNull};
	__property TChartAxis* CustomHorizAxis = {read=FCustomHorizAxis, write=SetCustomHorizAxis};
	__property TChartAxis* CustomVertAxis = {read=FCustomVertAxis, write=SetCustomVertAxis};
	__property TDataSourcesList* DataSources = {read=GetDataSources};
	__property TTeeFunction* FunctionType = {read=FTeeFunction, write=SetFunction};
	__property Vcltee::Teeprocs::TBackImage* Image = {read=GetImage, write=SetImage};
	void __fastcall CheckOtherSeries(TChartSeries* const Source);
	void __fastcall ReplaceList(TChartValueList* const OldList, TChartValueList* const NewList);
	__property Active = {default=1};
	__property System::Uitypes::TColor Color = {read=GetSeriesColor, write=SetSeriesColor, stored=IsColorStored, nodefault};
	__property bool ColorEachPoint = {read=FColorEachPoint, write=SetColorEachPoint, default=0};
	__property System::UnicodeString ColorSource = {read=FColorSource, write=SetColorSource};
	__property System::Uitypes::TCursor Cursor = {read=FCursor, write=FCursor, default=0};
	__property int Depth = {read=FDepth, write=SetDepth, default=-1};
	__property THorizAxis HorizAxis = {read=FHorizAxis, write=SetHorizAxis, default=1};
	__property TSeriesMarks* Marks = {read=GetMarks, write=SetMarks};
	__property ParentChart;
	__property System::Classes::TComponent* DataSource = {read=GetDataSource, write=SetDataSource, stored=IsDataSourceStored};
	__property System::UnicodeString PercentFormat = {read=FPercentFormat, write=SetPercentFormat, stored=IsPercentFormatStored};
	__property ShowInLegend = {default=1};
	__property Title = {default=0};
	__property Vcltee::Tecanvas::TTeeTransparency Transparency = {read=FTransparency, write=SetTransparency, default=0};
	__property TTreatNullsStyle TreatNulls = {read=FTreatNulls, write=SetTreatNulls, default=0};
	__property System::UnicodeString ValueFormat = {read=FValueFormat, write=SetValueFormat, stored=IsValueFormatStored};
	__property TVertAxis VertAxis = {read=FVertAxis, write=SetVertAxis, default=0};
	__property System::UnicodeString XLabelsSource = {read=FLabelsSource, write=SetLabelsSource};
	__property System::Classes::TNotifyEvent AfterDrawValues = {read=FAfterDrawValues, write=FAfterDrawValues};
	__property System::Classes::TNotifyEvent BeforeDrawValues = {read=FBeforeDrawValues, write=FBeforeDrawValues};
	__property TSeriesOnAfterAdd OnAfterAdd = {read=FOnAfterAdd, write=FOnAfterAdd};
	__property TSeriesOnBeforeAdd OnBeforeAdd = {read=FOnBeforeAdd, write=FOnBeforeAdd};
	__property TSeriesOnClear OnClearValues = {read=FOnClearValues, write=FOnClearValues};
	__property TSeriesClick OnClick = {read=FOnClick, write=FOnClick};
	__property TSeriesClick OnDblClick = {read=FOnDblClick, write=FOnDblClick};
	__property TSeriesOnGetMarkText OnGetMarkText = {read=FOnGetMarkText, write=FOnGetMarkText};
	__property System::Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property System::Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	
__published:
	__property THoverElements HoverElement = {read=FHoverElement, write=FHoverElement, nodefault};
	__property Legend;
	__property LegendTitle = {default=0};
	__property TTeeSelected* Selected = {read=GetSelected, write=SetSelected};
};


class PASCALIMPLEMENTATION TThemedSeries : public TChartSeries
{
	typedef TChartSeries inherited;
	
__published:
	__property Active = {default=1};
	__property ColorEachPoint = {default=0};
	__property ColorSource = {default=0};
	__property Cursor = {default=0};
	__property Depth = {default=-1};
	__property HorizAxis = {default=1};
	__property Marks;
	__property ParentChart;
	__property DataSource;
	__property PercentFormat = {default=0};
	__property SeriesColor;
	__property ShowInLegend = {default=1};
	__property Title = {default=0};
	__property Transparency = {default=0};
	__property ValueFormat = {default=0};
	__property VertAxis = {default=0};
	__property XLabelsSource = {default=0};
	__property XValues;
	__property YValues;
public:
	/* TChartSeries.Create */ inline __fastcall virtual TThemedSeries(System::Classes::TComponent* AOwner) : TChartSeries(AOwner) { }
	/* TChartSeries.Destroy */ inline __fastcall virtual ~TThemedSeries() { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION ChartException : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall ChartException(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall ChartException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall ChartException(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall ChartException(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall ChartException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall ChartException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall ChartException(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall ChartException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ChartException(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall ChartException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ChartException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall ChartException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~ChartException() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TSourceLoadMode : unsigned char { lmClear, lmAppend };

class PASCALIMPLEMENTATION TTeeSeriesSource : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	bool FActive;
	TSourceLoadMode FLoadMode;
	TChartSeries* FSeries;
	
protected:
	virtual void __fastcall Loaded();
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	virtual void __fastcall SetActive(const bool Value);
	virtual void __fastcall SetSeries(TChartSeries* const Value);
	
public:
	bool KeepDataOnClose;
	__fastcall virtual TTeeSeriesSource(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTeeSeriesSource();
	__classmethod virtual bool __fastcall Available(TCustomAxisPanel* AChart);
	__classmethod virtual System::UnicodeString __fastcall Description();
	__classmethod virtual System::Classes::TComponentClass __fastcall Editor();
	__classmethod virtual bool __fastcall HasNew();
	__classmethod virtual bool __fastcall HasSeries(TChartSeries* ASeries);
	virtual void __fastcall Close();
	virtual void __fastcall Load();
	virtual void __fastcall Open();
	void __fastcall Refresh();
	__property bool Active = {read=FActive, write=SetActive, default=0};
	__property TSourceLoadMode LoadMode = {read=FLoadMode, write=FLoadMode, default=0};
	__property TChartSeries* Series = {read=FSeries, write=SetSeries};
};


#ifndef _WIN64
typedef System::TMetaClass* TTeeSeriesSourceClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TTeeSeriesSourceClass);
#endif /* _WIN64 */

enum DECLSPEC_DENUM TTeeFieldType : unsigned char { tftNumber, tftDateTime, tftText, tftNone };

__interface  INTERFACE_UUID("{FE1CD916-A647-4B27-8580-3842E4019919}") ITeeScreenToPoint  : public System::IInterface 
{
	virtual void __fastcall ScreenToPoint(int X, int Y, int ValueIndex, bool ChangeX, bool ChangeY) = 0 ;
};

//-- var, const, procedure ---------------------------------------------------
static const int ChartMarkColor = int(0xe1ffff);
extern DELPHI_PACKAGE double MinAxisIncrement;
extern DELPHI_PACKAGE double MinAxisRange;
extern DELPHI_PACKAGE double DTMinValue;
extern DELPHI_PACKAGE double DTMaxValue;
static const System::Int8 TeeAllValues = System::Int8(-1);
static const System::Uitypes::TColor clTeeColor = System::Uitypes::TColor(536870912);
static const System::Word ChartSamplesMax = System::Word(0x3e8);
static const System::Int8 TeeAutoZOrder = System::Int8(-1);
static const System::Int8 TeeAutoDepth = System::Int8(-1);
static const System::Int8 TeeNoPointClicked = System::Int8(-1);
static const System::Int8 TeeDef3DPercent = System::Int8(0xf);
extern DELPHI_PACKAGE System::WideChar TeeColumnSeparator;
static const System::Int8 TeeInitialCustomAxis = System::Int8(0x6);
static const System::Int8 TeeDefaultLabelsSeparation = System::Int8(0xa);
static const System::Int8 TeeDefaultLabelsMargin = System::Int8(0xa);
extern DELPHI_PACKAGE bool TeeCheckMarkArrowColor;
extern DELPHI_PACKAGE bool TeeRandomAtRunTime;
extern DELPHI_PACKAGE int clTeeGallery1;
extern DELPHI_PACKAGE int clTeeGallery2;
extern DELPHI_PACKAGE int TeeMaxPixelPos;
extern DELPHI_PACKAGE int TeeAxisClickGap;
extern DELPHI_PACKAGE int TeeDefaultCapacity;
extern DELPHI_PACKAGE bool __fastcall TeeRectIntersects(const System::Types::TRect &A, const System::Types::TRect &B)/* overload */;
extern DELPHI_PACKAGE bool __fastcall TeeRectIntersects(/* out */ System::Types::TRect &Dest, const System::Types::TRect &A, const System::Types::TRect &B)/* overload */;
extern DELPHI_PACKAGE TeeFormatFlag __fastcall SeriesGuessContents(TChartSeries* const ASeries);
extern DELPHI_PACKAGE bool __fastcall IsZero(const double A, double Epsilon = 0.000000E+00);
extern DELPHI_PACKAGE System::UnicodeString __fastcall SeriesNameOrIndex(TCustomChartSeries* const ASeries);
extern DELPHI_PACKAGE System::UnicodeString __fastcall SeriesTitleOrName(TCustomChartSeries* const ASeries, const bool SingleLine = false);
extern DELPHI_PACKAGE void __fastcall FillSeriesItems(System::Classes::TStrings* const AItems, TCustomSeriesList* const AList, bool UseTitles = true);
extern DELPHI_PACKAGE System::Classes::TList* __fastcall TeeSources(void);
extern DELPHI_PACKAGE void __fastcall ShowMessageUser(const System::UnicodeString S);
extern DELPHI_PACKAGE bool __fastcall HasNoMandatoryValues(TChartSeries* const ASeries);
extern DELPHI_PACKAGE bool __fastcall HasColors(TChartSeries* const ASeries);
extern DELPHI_PACKAGE bool __fastcall HasLabels(TChartSeries* const ASeries);
extern DELPHI_PACKAGE void __fastcall TeeDrawBitmapEditor(Vcl::Graphics::TCanvas* const Canvas, TCustomChartElement* const Element, int Left, int Top);
}	/* namespace Teengine */
}	/* namespace Vcltee */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE_TEENGINE)
using namespace Vcltee::Teengine;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE)
using namespace Vcltee;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcltee_TeengineHPP
