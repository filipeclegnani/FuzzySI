// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCLTee.Chart.pas' rev: 35.00 (Windows)

#ifndef Vcltee_ChartHPP
#define Vcltee_ChartHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Collections.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Controls.hpp>
#include <VCLTee.TeeProcs.hpp>
#include <VCLTee.TeEngine.hpp>
#include <VCLTee.TeCanvas.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <System.Generics.Defaults.hpp>
#include <Vcl.Menus.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcltee
{
namespace Chart
{
//-- forward type declarations -----------------------------------------------
struct TAxisSavedScales;
class DELPHICLASS TCustomChartWall;
class DELPHICLASS TChartWall;
class DELPHICLASS LegendException;
class DELPHICLASS TLegendSymbol;
class DELPHICLASS TTeeCustomShapePosition;
class DELPHICLASS TTextShape;
class DELPHICLASS TStringsShape;
class DELPHICLASS TLegendTitle;
class DELPHICLASS TLegendItem;
class DELPHICLASS TLegendItems;
class DELPHICLASS TTeeLegendEvent;
class DELPHICLASS TCustomChartLegend;
class DELPHICLASS TChartLegend;
class DELPHICLASS TChartTitle;
class DELPHICLASS TChartFootTitle;
class DELPHICLASS TChartBackWall;
class DELPHICLASS TChartRightWall;
class DELPHICLASS TChartBottomWall;
class DELPHICLASS TChartLeftWall;
class DELPHICLASS TChartWalls;
class DELPHICLASS TCustomChart;
class DELPHICLASS TChart;
class DELPHICLASS TTeeSeriesTypes;
class DELPHICLASS TTeeToolTypes;
class DELPHICLASS TTeeDragObject;
class DELPHICLASS TCustomChartLink;
struct TColorPalette;
class DELPHICLASS TColorPalettes;
class DELPHICLASS TChartTheme;
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TAxisSavedScales
{
public:
	bool Auto;
	bool AutoMin;
	bool AutoMax;
	double Min;
	double Max;
};


typedef System::DynamicArray<TAxisSavedScales> TAllAxisSavedScales;

typedef System::StaticArray<System::UnicodeString, 3> TLegendItemText;

typedef System::StaticArray<int, 3> TLegendItemWidth;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TCustomChartWall : public Vcltee::Teeprocs::TTeeCustomShape
{
	typedef Vcltee::Teeprocs::TTeeCustomShape inherited;
	
private:
	bool FAutoHide;
	bool FDark3D;
	int FEnd;
	int FSize;
	int FStart;
	bool __fastcall ApplyDark3D();
	void __fastcall CalcPositions(/* out */ int &ATop, /* out */ int &ABottom);
	Vcltee::Tecanvas::TTeePen* __fastcall GetPen();
	void __fastcall InitColor(const System::Uitypes::TColor AColor);
	bool __fastcall IsColorStored();
	void __fastcall SetAutoHide(const bool Value);
	void __fastcall SetDark3D(const bool Value);
	void __fastcall SetEnd(const int Value);
	HIDESBASE void __fastcall SetPen(Vcltee::Tecanvas::TTeePen* const Value);
	void __fastcall SetSize(const int Value);
	void __fastcall SetStart(const int Value);
	bool __fastcall TryDrawWall(const int APos1, const int APos2, /* out */ Vcltee::Tecanvas::TTeeBlend* &ABlend);
	
protected:
	System::Uitypes::TColor DefaultColor;
	void __fastcall DoEndBlending(Vcltee::Tecanvas::TTeeBlend* const Blend);
	bool __fastcall ShouldDraw();
	
public:
	__fastcall virtual TCustomChartWall(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property bool AutoHide = {read=FAutoHide, write=SetAutoHide, default=0};
	__property Color = {stored=IsColorStored};
	__property bool Dark3D = {read=FDark3D, write=SetDark3D, default=1};
	__property int EndPosition = {read=FEnd, write=SetEnd, default=100};
	__property Vcltee::Tecanvas::TTeePen* Pen = {read=GetPen, write=SetPen};
	__property int Size = {read=FSize, write=SetSize, default=0};
	__property int StartPosition = {read=FStart, write=SetStart, default=0};
	__property Transparency = {default=0};
public:
	/* TTeeCustomShape.Destroy */ inline __fastcall virtual ~TCustomChartWall() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartWall : public TCustomChartWall
{
	typedef TCustomChartWall inherited;
	
__published:
	__property AutoHide = {default=0};
	__property Brush;
	__property Color;
	__property Dark3D = {default=1};
	__property EndPosition = {default=100};
	__property Gradient;
	__property Pen;
	__property RoundSize = {default=16};
	__property Size = {default=0};
	__property StartPosition = {default=0};
	__property Transparency = {default=0};
	__property Transparent;
	__property Visible = {default=1};
public:
	/* TCustomChartWall.Create */ inline __fastcall virtual TChartWall(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TCustomChartWall(AOwner) { }
	
public:
	/* TTeeCustomShape.Destroy */ inline __fastcall virtual ~TChartWall() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TLegendStyle : unsigned char { lsAuto, lsSeries, lsValues, lsLastValues, lsSeriesGroups };

enum DECLSPEC_DENUM TLegendAlignment : unsigned char { laLeft, laRight, laTop, laBottom };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION LegendException : public System::Sysutils::Exception
{
	typedef System::Sysutils::Exception inherited;
	
public:
	/* Exception.Create */ inline __fastcall LegendException(const System::UnicodeString Msg) : System::Sysutils::Exception(Msg) { }
	/* Exception.CreateFmt */ inline __fastcall LegendException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High) : System::Sysutils::Exception(Msg, Args, Args_High) { }
	/* Exception.CreateRes */ inline __fastcall LegendException(NativeUInt Ident)/* overload */ : System::Sysutils::Exception(Ident) { }
	/* Exception.CreateRes */ inline __fastcall LegendException(System::PResStringRec ResStringRec)/* overload */ : System::Sysutils::Exception(ResStringRec) { }
	/* Exception.CreateResFmt */ inline __fastcall LegendException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High) { }
	/* Exception.CreateResFmt */ inline __fastcall LegendException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High) { }
	/* Exception.CreateHelp */ inline __fastcall LegendException(const System::UnicodeString Msg, int AHelpContext) : System::Sysutils::Exception(Msg, AHelpContext) { }
	/* Exception.CreateFmtHelp */ inline __fastcall LegendException(const System::UnicodeString Msg, const System::TVarRec *Args, const int Args_High, int AHelpContext) : System::Sysutils::Exception(Msg, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall LegendException(NativeUInt Ident, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, AHelpContext) { }
	/* Exception.CreateResHelp */ inline __fastcall LegendException(System::PResStringRec ResStringRec, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall LegendException(System::PResStringRec ResStringRec, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(ResStringRec, Args, Args_High, AHelpContext) { }
	/* Exception.CreateResFmtHelp */ inline __fastcall LegendException(NativeUInt Ident, const System::TVarRec *Args, const int Args_High, int AHelpContext)/* overload */ : System::Sysutils::Exception(Ident, Args, Args_High, AHelpContext) { }
	/* Exception.Destroy */ inline __fastcall virtual ~LegendException() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef void __fastcall (__closure *TOnGetLegendText)(Vcltee::Teengine::TCustomAxisPanel* Sender, TLegendStyle LegendStyle, int Index, System::UnicodeString &LegendText);

enum DECLSPEC_DENUM TLegendSymbolSize : unsigned char { lcsPercent, lcsPixels };

enum DECLSPEC_DENUM TLegendSymbolPosition : unsigned char { spLeft, spRight };

typedef void __fastcall (__closure *TSymbolDrawEvent)(System::TObject* Sender, Vcltee::Teengine::TChartSeries* Series, int ValueIndex, const System::Types::TRect &R);

typedef int __fastcall (__closure *TSymbolCalcHeight)(void);

class PASCALIMPLEMENTATION TLegendSymbol : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FContinuous;
	bool FDefaultPen;
	Vcltee::Tecanvas::TTeeEmboss* FEmboss;
	Vcltee::Tecanvas::TTeeGradient* FGradient;
	int FHeight;
	TLegendSymbolSize FHeightUnits;
	TSymbolDrawEvent FOnDraw;
	Vcltee::Tecanvas::TTeePen* FPen;
	TLegendSymbolPosition FPosition;
	Vcltee::Tecanvas::TTeeShadow* FShadow;
	bool FSquared;
	bool FUseImages;
	bool FVisible;
	int FWidth;
	TLegendSymbolSize FWidthUnits;
	int __fastcall CalcHeight();
	void __fastcall CanvasChanged(System::TObject* Sender);
	void __fastcall Repaint();
	void __fastcall SetBooleanProperty(bool &Variable, const bool Value);
	void __fastcall SetContinuous(const bool Value);
	void __fastcall SetDefaultPen(const bool Value);
	void __fastcall SetEmboss(Vcltee::Tecanvas::TTeeEmboss* const Value);
	void __fastcall SetGradient(Vcltee::Tecanvas::TTeeGradient* const Value);
	void __fastcall SetHeight(const int Value);
	void __fastcall SetHeightUnits(const TLegendSymbolSize Value);
	void __fastcall SetPen(Vcltee::Tecanvas::TTeePen* const Value);
	void __fastcall SetPosition(const TLegendSymbolPosition Value);
	void __fastcall SetShadow(Vcltee::Tecanvas::TTeeShadow* const Value);
	void __fastcall SetSquared(const bool Value);
	void __fastcall SetUseImages(const bool Value);
	void __fastcall SetVisible(const bool Value);
	void __fastcall SetWidth(const int Value);
	void __fastcall SetWidthUnits(const TLegendSymbolSize Value);
	
protected:
	TSymbolCalcHeight CalcItemHeight;
	int __fastcall CalcWidth(int Value);
	void __fastcall Draw(System::Uitypes::TColor AColor, const System::Types::TRect &R);
	
public:
	Vcltee::Teeprocs::TCustomTeePanel* Parent;
	__fastcall TLegendSymbol(Vcltee::Teeprocs::TCustomTeePanel* const AParent);
	__fastcall virtual ~TLegendSymbol();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool Continuous = {read=FContinuous, write=SetContinuous, default=0};
	__property bool DefaultPen = {read=FDefaultPen, write=SetDefaultPen, default=1};
	__property Vcltee::Tecanvas::TTeeEmboss* Emboss = {read=FEmboss, write=SetEmboss};
	__property Vcltee::Tecanvas::TTeeGradient* Gradient = {read=FGradient, write=SetGradient};
	__property int Height = {read=FHeight, write=SetHeight, default=100};
	__property TLegendSymbolSize HeightUnits = {read=FHeightUnits, write=SetHeightUnits, default=0};
	__property Vcltee::Tecanvas::TTeePen* Pen = {read=FPen, write=SetPen};
	__property TLegendSymbolPosition Position = {read=FPosition, write=SetPosition, default=0};
	__property Vcltee::Tecanvas::TTeeShadow* Shadow = {read=FShadow, write=SetShadow};
	__property bool Squared = {read=FSquared, write=SetSquared, default=1};
	__property bool UseImages = {read=FUseImages, write=SetUseImages, default=1};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property int Width = {read=FWidth, write=SetWidth, default=20};
	__property TLegendSymbolSize WidthUnits = {read=FWidthUnits, write=SetWidthUnits, default=0};
	__property TSymbolDrawEvent OnDraw = {read=FOnDraw, write=FOnDraw};
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeCustomShapePosition : public Vcltee::Teengine::TCustomTextShape
{
	typedef Vcltee::Teengine::TCustomTextShape inherited;
	
private:
	int __fastcall GetLeft();
	int __fastcall GetTop();
	bool __fastcall IsCustomStored();
	void __fastcall SetCustomPosition(const bool Value);
	void __fastcall SetLeft(const int Value);
	void __fastcall SetTop(const int Value);
	
protected:
	bool FCustomPosition;
	bool DefaultCustom;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property bool CustomPosition = {read=FCustomPosition, write=SetCustomPosition, stored=IsCustomStored, nodefault};
	__property int Left = {read=GetLeft, write=SetLeft, stored=FCustomPosition, nodefault};
	__property int Top = {read=GetTop, write=SetTop, stored=FCustomPosition, nodefault};
public:
	/* TCustomTextShape.Create */ inline __fastcall virtual TTeeCustomShapePosition(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : Vcltee::Teengine::TCustomTextShape(AOwner) { }
	/* TCustomTextShape.Destroy */ inline __fastcall virtual ~TTeeCustomShapePosition() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTextShape : public TTeeCustomShapePosition
{
	typedef TTeeCustomShapePosition inherited;
	
__published:
	__property Alignment = {default=0};
	__property Angle = {default=0};
	__property AutoSize = {default=1};
	__property Bevel = {default=0};
	__property BevelWidth = {default=2};
	__property Brush;
	__property Children;
	__property ChildLayout = {default=0};
	__property ClipText = {default=1};
	__property Color = {default=16777215};
	__property Cursor = {default=0};
	__property CustomPosition;
	__property Emboss;
	__property Font;
	__property Frame;
	__property Gradient;
	__property Left;
	__property Margins;
	__property Picture;
	__property Shadow;
	__property ShapeCallout;
	__property ShapeStyle = {default=0};
	__property Text = {default=0};
	__property TextAlignment;
	__property TextFormat = {default=0};
	__property Top;
	__property Transparency = {default=0};
	__property Transparent;
	__property VertTextAlign = {default=0};
	__property Visible;
public:
	/* TCustomTextShape.Create */ inline __fastcall virtual TTextShape(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TTeeCustomShapePosition(AOwner) { }
	/* TCustomTextShape.Destroy */ inline __fastcall virtual ~TTextShape() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TStringsShape : public TTextShape
{
	typedef TTextShape inherited;
	
private:
	System::Classes::TStrings* FTitleText;
	bool IChangingText;
	System::UnicodeString __fastcall GetCaption();
	void __fastcall SetCaption(const System::UnicodeString Value);
	HIDESBASE void __fastcall SetText(System::Classes::TStrings* const Value);
	void __fastcall TextChanged(System::TObject* Sender);
	
protected:
	virtual void __fastcall ChangedText();
	
public:
	__fastcall virtual TStringsShape(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	__fastcall virtual ~TStringsShape();
	void __fastcall Clear();
	__property System::UnicodeString Caption = {read=GetCaption, write=SetCaption};
	
__published:
	__property System::Classes::TStrings* Text = {read=FTitleText, write=SetText};
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TCheckBoxesStyle : unsigned char { cbsCheck, cbsRadio };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TLegendTitle : public TStringsShape
{
	typedef TStringsShape inherited;
	
protected:
	DYNAMIC void __fastcall InitEmboss(Vcltee::Tecanvas::TTeeEmboss* const AEmboss);
	DYNAMIC void __fastcall InitShadow(Vcltee::Tecanvas::TTeeShadow* const AShadow);
	
public:
	__fastcall virtual TLegendTitle(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TextFormat = {default=0};
	__property Transparency = {default=0};
	__property Visible = {default=1};
public:
	/* TStringsShape.Destroy */ inline __fastcall virtual ~TLegendTitle() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TLegendItem : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FAlign;
	Vcltee::Tecanvas::TTeeFont* FFont;
	int FLeft;
	System::Types::TRect FSymbol;
	System::UnicodeString FText;
	System::UnicodeString FText2;
	System::UnicodeString FText3;
	int FTop;
	TCustomChartLegend* ILegend;
	Vcltee::Tecanvas::TTeeFont* __fastcall GetFont();
	void __fastcall SetAlign(const int Value);
	void __fastcall SetCustom(bool SetPos);
	void __fastcall SetFont(Vcltee::Tecanvas::TTeeFont* const Value);
	void __fastcall SetLeft(const int Value);
	void __fastcall SetText(const System::UnicodeString Value);
	void __fastcall SetText2(const System::UnicodeString Value);
	void __fastcall SetText3(const System::UnicodeString Value);
	void __fastcall SetTextVariable(System::UnicodeString &Variable, const System::UnicodeString Value);
	void __fastcall SetTop(const int Value);
	
public:
	__fastcall virtual ~TLegendItem();
	bool __fastcall HasFont();
	__property System::Types::TRect SymbolRect = {read=FSymbol, write=FSymbol};
	
__published:
	__property int Align = {read=FAlign, write=SetAlign, nodefault};
	__property Vcltee::Tecanvas::TTeeFont* Font = {read=GetFont, write=SetFont};
	__property int Left = {read=FLeft, write=SetLeft, nodefault};
	__property System::UnicodeString Text = {read=FText, write=SetText};
	__property System::UnicodeString Text2 = {read=FText2, write=SetText2};
	__property System::UnicodeString Text3 = {read=FText3, write=SetText3};
	__property int Top = {read=FTop, write=SetTop, nodefault};
public:
	/* TObject.Create */ inline __fastcall TLegendItem() : System::Classes::TPersistent() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TLegendItems : public System::Generics::Collections::TList__1<TLegendItem*>
{
	typedef System::Generics::Collections::TList__1<TLegendItem*> inherited;
	
public:
	TLegendItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	bool FCustom;
	bool FCustomPosition;
	TCustomChartLegend* ILegend;
	void __fastcall ClearItems();
	HIDESBASE TLegendItem* __fastcall GetItem(int Index);
	void __fastcall SetCustom(const bool Value);
	void __fastcall SetCustomPosition(const bool Value);
	
public:
	__fastcall virtual ~TLegendItems();
	HIDESBASE void __fastcall Clear();
	__property bool Custom = {read=FCustom, write=SetCustom, nodefault};
	__property bool CustomPosition = {read=FCustomPosition, write=SetCustomPosition, nodefault};
	__property TLegendItem* Items[int Index] = {read=GetItem/*, default*/};
public:
	/* {System_Generics_Collections}TList<VCLTee_Chart_TLegendItem>.Create */ inline __fastcall TLegendItems()/* overload */ : System::Generics::Collections::TList__1<TLegendItem*>() { }
	/* {System_Generics_Collections}TList<VCLTee_Chart_TLegendItem>.Create */ inline __fastcall TLegendItems(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TLegendItem*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TLegendItem*>(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_Chart_TLegendItem>.Create */ inline __fastcall TLegendItems(System::Generics::Collections::TEnumerable__1<TLegendItem*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TLegendItem*>(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_Chart_TLegendItem>.Create */ inline __fastcall TLegendItems(TLegendItem* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TLegendItem*>(Values, Values_High) { }
	
};


enum DECLSPEC_DENUM TLegendJustify : unsigned char { ljAutomatic, ljYes, ljNo };

typedef void __fastcall (__closure *TLegendCalcSize)(TCustomChartLegend* Sender, int &ASize);

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeLegendEvent : public Vcltee::Teeprocs::TTeeEvent
{
	typedef Vcltee::Teeprocs::TTeeEvent inherited;
	
public:
	/* TObject.Create */ inline __fastcall TTeeLegendEvent() : Vcltee::Teeprocs::TTeeEvent() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTeeLegendEvent() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TCustomChartLegend : public TTeeCustomShapePosition
{
	typedef TTeeCustomShapePosition inherited;
	
	
private:
	typedef System::DynamicArray<TLegendItemText> _TCustomChartLegend__1;
	
	typedef System::DynamicArray<TLegendItemWidth> _TCustomChartLegend__2;
	
	typedef System::DynamicArray<int> _TCustomChartLegend__3;
	
	typedef System::DynamicArray<int> _TCustomChartLegend__4;
	
	
public:
	TLegendItem* operator[](int Index) { return this->Item[Index]; }
	
private:
	TLegendAlignment FAlignment;
	bool FCheckBoxes;
	TCheckBoxesStyle FCheckBoxesStyle;
	bool FCurrentPage;
	Vcltee::Tecanvas::TTeeHiddenPen* FDividingLines;
	bool FDrawBehind;
	int FFirstValue;
	bool FFontSeriesColor;
	Vcltee::Tecanvas::TTeeTransparency FGlobalTransp;
	TLegendJustify FHorizJustify;
	int FHorizMargin;
	bool FInverted;
	TLegendItems* FItems;
	int FLeftPercent;
	TLegendStyle FLegendStyle;
	int FMaxNumRows;
	Vcltee::Teeprocs::TTeeUnits FPosUnits;
	bool FResizeChart;
	Vcltee::Teengine::TTeeSelected* FSelected;
	Vcltee::Teengine::TChartSeries* FSeries;
	TLegendSymbol* FSymbol;
	Vcltee::Teengine::TLegendTextStyle FTextStyle;
	int FTextSymbolGap;
	TLegendTitle* FTitle;
	int FTopLeftPos;
	int FTopPercent;
	int FVertMargin;
	int FVertSpacing;
	int IColorWidth;
	bool ICustomFont;
	int ILastValue;
	int ITotalItems;
	bool IDrawTitle;
	_TCustomChartLegend__1 IItems;
	_TCustomChartLegend__2 IItemsWidth;
	_TCustomChartLegend__3 IColorWidths;
	bool IJustify;
	int IMaxWidth;
	int ISpaceWidth;
	int ItemsTopMargin;
	int ItemHeight;
	int XLegendBox;
	int XLegendText;
	int XLegendColor;
	System::Uitypes::TCursor __fastcall CalcCursor();
	bool __fastcall CalcInverted();
	int __fastcall CalcItemHeight();
	int __fastcall CalcItemWidthColor(const int AWidth);
	void __fastcall CheckBoxChanged();
	int __fastcall ColumnWidth(const int AColumn);
	int __fastcall DividingWidth();
	int __fastcall FirstItemTop();
	TLegendItem* __fastcall GetItem(int Index);
	System::Types::TRect __fastcall GetRectLegend();
	Vcltee::Teengine::TTeeSelected* __fastcall GetSelected();
	int __fastcall GetSymbolWidth();
	TLegendTitle* __fastcall GetTitle();
	bool __fastcall GetVertical();
	bool __fastcall HasCheckBoxes();
	void __fastcall OffsetParent(const int Positive);
	void __fastcall PrepareSymbolPen();
	HIDESBASE void __fastcall SetAlignment(const TLegendAlignment Value);
	void __fastcall SetCheckBoxes(const bool Value);
	void __fastcall SetCheckBoxesStyle(const TCheckBoxesStyle Value);
	void __fastcall SetCurrentPage(const bool Value);
	void __fastcall SetDividingLines(Vcltee::Tecanvas::TTeeHiddenPen* const Value);
	void __fastcall SetDrawBehind(const bool Value);
	void __fastcall SetFirstValue(const int Value);
	void __fastcall SetFontSeriesColor(const bool Value);
	void __fastcall SetGlobalTransp(const Vcltee::Tecanvas::TTeeTransparency Value);
	void __fastcall SetHorizJustify(const TLegendJustify Value);
	void __fastcall SetHorizMargin(const int Value);
	void __fastcall SetInverted(const bool Value);
	void __fastcall SetLeftPercent(const int Value);
	void __fastcall SetLegendStyle(const TLegendStyle Value);
	void __fastcall SetMaxNumRows(const int Value);
	void __fastcall SetPosUnits(const Vcltee::Teeprocs::TTeeUnits Value);
	void __fastcall SetResizeChart(const bool Value);
	void __fastcall SetSelected(Vcltee::Teengine::TTeeSelected* const Value);
	void __fastcall SetSeries(Vcltee::Teengine::TChartSeries* const Value);
	void __fastcall SetSymbol(TLegendSymbol* const Value);
	void __fastcall SetSymbolWidth(const int Value);
	void __fastcall SetTextSymbolGap(const int Value);
	void __fastcall SetTextStyle(const Vcltee::Teengine::TLegendTextStyle Value);
	void __fastcall SetTitle(TLegendTitle* const Value);
	void __fastcall SetTopLeftPos(const int Value);
	void __fastcall SetTopPercent(const int Value);
	void __fastcall SetVertMargin(const int Value);
	void __fastcall SetVertSpacing(const int Value);
	int __fastcall TitleWidth();
	
protected:
	TLegendStyle InternalLegendStyle;
	TLegendCalcSize FOnCalcSize;
	void __fastcall CalcLegendStyle();
	bool __fastcall DoMouseDown(const int x, const int y, int PointIndex);
	Vcltee::Teengine::TChartSeries* __fastcall GetLegendSeries();
	
public:
	int NumCols;
	int NumRows;
	bool ColumnWidthAuto;
	_TCustomChartLegend__4 ColumnWidths;
	__fastcall virtual TCustomChartLegend(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	__fastcall virtual ~TCustomChartLegend();
	void __fastcall CalcRect();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	int __fastcall Clicked(int x, int y)/* overload */;
	int __fastcall Clicked(const System::Types::TPoint &P)/* overload */;
	void __fastcall DrawLegend();
	System::UnicodeString __fastcall FormattedValue(Vcltee::Teengine::TChartSeries* const ASeries, int ValueIndex);
	System::UnicodeString __fastcall FormattedLegend(int AIndex);
	bool __fastcall ShouldDraw();
	__property int TotalLegendItems = {read=ITotalItems, nodefault};
	__property System::Types::TRect RectLegend = {read=GetRectLegend};
	__property bool Vertical = {read=GetVertical, nodefault};
	__property TLegendAlignment Alignment = {read=FAlignment, write=SetAlignment, default=1};
	__property bool CheckBoxes = {read=FCheckBoxes, write=SetCheckBoxes, default=0};
	__property TCheckBoxesStyle CheckBoxesStyle = {read=FCheckBoxesStyle, write=SetCheckBoxesStyle, default=0};
	__property int ColorWidth = {read=GetSymbolWidth, write=SetSymbolWidth, default=20};
	__property bool CurrentPage = {read=FCurrentPage, write=SetCurrentPage, default=1};
	__property Vcltee::Tecanvas::TTeeHiddenPen* DividingLines = {read=FDividingLines, write=SetDividingLines};
	__property bool DrawBehind = {read=FDrawBehind, write=SetDrawBehind, default=0};
	__property int FirstValue = {read=FFirstValue, write=SetFirstValue, default=0};
	__property bool FontSeriesColor = {read=FFontSeriesColor, write=SetFontSeriesColor, default=0};
	__property Vcltee::Tecanvas::TTeeTransparency GlobalTransparency = {read=FGlobalTransp, write=SetGlobalTransp, default=0};
	__property TLegendJustify HorizJustify = {read=FHorizJustify, write=SetHorizJustify, default=0};
	__property int HorizMargin = {read=FHorizMargin, write=SetHorizMargin, default=0};
	__property bool Inverted = {read=FInverted, write=SetInverted, default=0};
	__property TLegendItem* Item[int Index] = {read=GetItem/*, default*/};
	__property TLegendItems* Items = {read=FItems};
	__property int LastValue = {read=ILastValue, nodefault};
	__property int LeftPercent = {read=FLeftPercent, write=SetLeftPercent, default=0};
	__property TLegendStyle LegendStyle = {read=FLegendStyle, write=SetLegendStyle, default=0};
	__property int MaxNumRows = {read=FMaxNumRows, write=SetMaxNumRows, default=0};
	__property Vcltee::Teeprocs::TTeeUnits PositionUnits = {read=FPosUnits, write=SetPosUnits, default=1};
	__property bool ResizeChart = {read=FResizeChart, write=SetResizeChart, default=1};
	__property Vcltee::Teengine::TTeeSelected* Selected = {read=GetSelected, write=SetSelected};
	__property Vcltee::Teengine::TChartSeries* Series = {read=FSeries, write=SetSeries};
	__property TLegendSymbol* Symbol = {read=FSymbol, write=SetSymbol};
	__property Vcltee::Teengine::TLegendTextStyle TextStyle = {read=FTextStyle, write=SetTextStyle, default=1};
	__property int TextSymbolGap = {read=FTextSymbolGap, write=SetTextSymbolGap, default=2};
	__property TLegendTitle* Title = {read=GetTitle, write=SetTitle};
	__property int TopPercent = {read=FTopPercent, write=SetTopPercent, default=0};
	__property int TopPos = {read=FTopLeftPos, write=SetTopLeftPos, default=10};
	__property int VertMargin = {read=FVertMargin, write=SetVertMargin, default=0};
	__property int VertSpacing = {read=FVertSpacing, write=SetVertSpacing, default=0};
	__property Visible;
};


class PASCALIMPLEMENTATION TChartLegend : public TCustomChartLegend
{
	typedef TCustomChartLegend inherited;
	
__published:
	__property Alignment = {default=1};
	__property Bevel = {default=0};
	__property BevelWidth = {default=2};
	__property Brush;
	__property CheckBoxes = {default=0};
	__property CheckBoxesStyle = {default=0};
	__property Children;
	__property Color = {default=16777215};
	__property ColorWidth = {default=20};
	__property CurrentPage = {default=1};
	__property CustomPosition;
	__property DividingLines;
	__property DrawBehind = {default=0};
	__property Emboss;
	__property FirstValue = {default=0};
	__property Font;
	__property FontSeriesColor = {default=0};
	__property Frame;
	__property GlobalTransparency = {default=0};
	__property Gradient;
	__property HorizJustify = {default=0};
	__property HorizMargin = {default=0};
	__property Inverted = {default=0};
	__property Left;
	__property LeftPercent = {default=0};
	__property LegendStyle = {default=0};
	__property MaxNumRows = {default=0};
	__property Picture;
	__property PositionUnits = {default=1};
	__property ResizeChart = {default=1};
	__property RoundSize = {default=16};
	__property Selected;
	__property Shadow;
	__property ShapeCallout;
	__property ShapeStyle = {default=0};
	__property Symbol;
	__property TextStyle = {default=1};
	__property TextSymbolGap = {default=2};
	__property Title;
	__property Top;
	__property TopPercent = {default=0};
	__property TopPos = {default=10};
	__property Transparency = {default=0};
	__property Transparent;
	__property VertMargin = {default=0};
	__property VertSpacing = {default=0};
	__property Visible;
	__property ClipText = {default=1};
	__property Cursor = {default=0};
	__property Margins;
	__property TextFormat = {default=0};
public:
	/* TCustomChartLegend.Create */ inline __fastcall virtual TChartLegend(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TCustomChartLegend(AOwner) { }
	/* TCustomChartLegend.Destroy */ inline __fastcall virtual ~TChartLegend() { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartTitle : public TStringsShape
{
	typedef TStringsShape inherited;
	
private:
	bool FAdjustFrame;
	int FVertMargin;
	bool IOnTop;
	System::Types::TRect __fastcall GetShapeBounds();
	void __fastcall SetAdjustFrame(bool Value);
	void __fastcall SetVertMargin(const int Value);
	bool __fastcall ShouldDraw();
	
public:
	__fastcall virtual TChartTitle(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	bool __fastcall Clicked(int x, int y)/* overload */;
	bool __fastcall Clicked(const System::Types::TPoint &P)/* overload */;
	void __fastcall DrawTitle();
	__property System::Types::TRect TitleRect = {read=GetShapeBounds};
	
__published:
	__property bool AdjustFrame = {read=FAdjustFrame, write=SetAdjustFrame, default=1};
	__property Alignment = {default=2};
	__property Bevel = {default=0};
	__property BevelWidth = {default=2};
	__property Brush;
	__property Children;
	__property ChildLayout = {default=0};
	__property Color = {default=16777215};
	__property CustomPosition;
	__property Emboss;
	__property Font;
	__property Frame;
	__property Gradient;
	__property Left;
	__property Picture;
	__property Shadow;
	__property ShapeCallout;
	__property ShapeStyle = {default=0};
	__property TextFormat = {default=0};
	__property Top;
	__property Transparency = {default=0};
	__property Transparent = {default=1};
	__property int VertMargin = {read=FVertMargin, write=SetVertMargin, default=5};
	__property Visible;
public:
	/* TStringsShape.Destroy */ inline __fastcall virtual ~TChartTitle() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartFootTitle : public TChartTitle
{
	typedef TChartTitle inherited;
	
public:
	__fastcall virtual TChartFootTitle(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
public:
	/* TStringsShape.Destroy */ inline __fastcall virtual ~TChartFootTitle() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef void __fastcall (__closure *TChartClick)(TCustomChart* Sender, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);

typedef void __fastcall (__closure *TChartClickAxis)(TCustomChart* Sender, Vcltee::Teengine::TChartAxis* Axis, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);

typedef void __fastcall (__closure *TChartClickSeries)(TCustomChart* Sender, Vcltee::Teengine::TChartSeries* Series, int ValueIndex, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);

typedef void __fastcall (__closure *TChartClickTitle)(TCustomChart* Sender, TChartTitle* ATitle, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);

typedef void __fastcall (__closure *TOnGetLegendPos)(TCustomChart* Sender, int Index, int &X, int &Y, int &XColor);

typedef void __fastcall (__closure *TOnGetLegendRect)(TCustomChart* Sender, System::Types::TRect &Rect);

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartBackWall : public TChartWall
{
	typedef TChartWall inherited;
	
protected:
	DYNAMIC void __fastcall InitEmboss(Vcltee::Tecanvas::TTeeEmboss* const AEmboss);
	DYNAMIC void __fastcall InitShadow(Vcltee::Tecanvas::TTeeShadow* const AShadow);
	
public:
	__fastcall virtual TChartBackWall(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */;
	
__published:
	__property Color = {default=12632256};
	__property Emboss;
	__property Picture;
	__property Shadow;
	__property Transparent = {default=1};
public:
	/* TTeeCustomShape.Destroy */ inline __fastcall virtual ~TChartBackWall() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartRightWall : public TChartWall
{
	typedef TChartWall inherited;
	
__published:
	__property Color = {default=12632256};
	__property Picture;
	__property Visible = {default=0};
public:
	/* TCustomChartWall.Create */ inline __fastcall virtual TChartRightWall(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TChartWall(AOwner) { }
	
public:
	/* TTeeCustomShape.Destroy */ inline __fastcall virtual ~TChartRightWall() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartBottomWall : public TChartWall
{
	typedef TChartWall inherited;
	
__published:
	__property Picture;
public:
	/* TCustomChartWall.Create */ inline __fastcall virtual TChartBottomWall(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TChartWall(AOwner) { }
	
public:
	/* TTeeCustomShape.Destroy */ inline __fastcall virtual ~TChartBottomWall() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartLeftWall : public TChartWall
{
	typedef TChartWall inherited;
	
__published:
	__property Picture;
public:
	/* TCustomChartWall.Create */ inline __fastcall virtual TChartLeftWall(Vcltee::Teeprocs::TCustomTeePanel* const AOwner)/* overload */ : TChartWall(AOwner) { }
	
public:
	/* TTeeCustomShape.Destroy */ inline __fastcall virtual ~TChartLeftWall() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartWalls : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TChartBackWall* FBack;
	TChartBottomWall* FBottom;
	TCustomChart* FChart;
	TChartLeftWall* FLeft;
	TChartRightWall* FRight;
	TChartRightWall* __fastcall GetRight();
	bool __fastcall GetVisible();
	void __fastcall SetBack(TChartBackWall* const Value);
	void __fastcall SetBottom(TChartBottomWall* const Value);
	void __fastcall SetLeft(TChartLeftWall* const Value);
	void __fastcall SetRight(TChartRightWall* const Value);
	void __fastcall SetSize(const int Value);
	void __fastcall SetVisible(const bool Value);
	
public:
	__fastcall TChartWalls(TCustomChart* const Chart);
	__fastcall virtual ~TChartWalls();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Hide();
	void __fastcall Show();
	__property TChartBackWall* Back = {read=FBack, write=SetBack};
	__property TChartBottomWall* Bottom = {read=FBottom, write=SetBottom};
	__property TChartLeftWall* Left = {read=FLeft, write=SetLeft};
	__property TChartRightWall* Right = {read=GetRight, write=SetRight};
	__property int Size = {write=SetSize, nodefault};
	__property bool Visible = {read=GetVisible, write=SetVisible, nodefault};
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef void __fastcall (__closure *TChartAllowScrollEvent)(Vcltee::Teengine::TChartAxis* Sender, double &AMin, double &AMax, bool &AllowScroll);

class PASCALIMPLEMENTATION TCustomChart : public Vcltee::Teengine::TCustomAxisPanel
{
	typedef Vcltee::Teengine::TCustomAxisPanel inherited;
	
private:
	int FColorPaletteIndex;
	TChartTitle* FFoot;
	TChartLegend* FLegend;
	TAllAxisSavedScales FSavedScales;
	TChartTitle* FSubFoot;
	TChartTitle* FSubTitle;
	TChartTitle* FTitle;
	TChartWalls* FWalls;
	TChartAllowScrollEvent FOnAllowScroll;
	TChartClickAxis FOnClickAxis;
	TChartClick FOnClickBackGround;
	TChartClick FOnClickLegend;
	TChartClickSeries FOnClickSeries;
	TChartClickTitle FOnClickTitle;
	TOnGetLegendPos FOnGetLegendPos;
	TOnGetLegendRect FOnGetLegendRect;
	TOnGetLegendText FOnGetLegendText;
	bool __fastcall ActiveSeriesUseAxis();
	bool __fastcall ActiveSeriesCanZoomScroll();
	HIDESBASE void __fastcall BroadcastMouseEvent(Vcltee::Teengine::TChartMouseEvent AEvent, System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);
	void __fastcall BroadcastWheelEvent(Vcltee::Teengine::TWheelMouseEvent AEvent, int WheelDelta, int X, int Y);
	void __fastcall BroadcastDragDropEvent(Vcltee::Teengine::TChartDragDropEvent AEvent, System::TObject* Source, int X, int Y, System::Uitypes::TDragState State, bool &Accept, Vcl::Controls::TDragObject* &DragObject);
	void __fastcall BroadcastKeyEvent(Vcltee::Teengine::TChartKeyEvent AEvent, System::Word &Key, System::WideChar &Key1, System::Classes::TShiftState Shift);
	Vcltee::Teengine::TChartClickedPart __fastcall CalcNeedClickedPart(const System::Types::TPoint &Pos, bool Needed);
	bool __fastcall CanWheelScroll();
	void __fastcall DrawBackWall();
	void __fastcall DrawLeftWall();
	void __fastcall DrawRightWall();
	bool __fastcall DrawWallFirst(int APos);
	TChartBackWall* __fastcall GetBackWall();
	TChartBottomWall* __fastcall GetBottomWall();
	TChartTitle* __fastcall GetFoot();
	Vcltee::Tecanvas::TTeePen* __fastcall GetFrame();
	TChartLeftWall* __fastcall GetLeftWall();
	TChartRightWall* __fastcall GetRightWall();
	TChartTitle* __fastcall GetSubFoot();
	TChartTitle* __fastcall GetSubTitle();
	TChartTitle* __fastcall GetTitle();
	void __fastcall InternalWheel(int WheelDelta);
	void __fastcall PrepareWallCanvas(TChartWall* const AWall);
	void __fastcall ReadBackColor(System::Classes::TReader* Reader);
	void __fastcall ReadColorPalette(System::Classes::TReader* Reader);
	void __fastcall ReadColorPaletteIndex(System::Classes::TReader* Reader);
	void __fastcall RestoreScales(TAllAxisSavedScales &Saved);
	TAllAxisSavedScales __fastcall SaveScales();
	void __fastcall ScrollVerticalAxes(bool Up);
	void __fastcall ScrollHorizontalAxes(bool Up);
	void __fastcall SetBackColor(System::Uitypes::TColor Value);
	void __fastcall SetBackWall(TChartBackWall* const Value);
	void __fastcall SetBottomWall(TChartBottomWall* const Value);
	void __fastcall SetColorPaletteIndex(const int Value);
	void __fastcall SetFoot(TChartTitle* const Value);
	void __fastcall SetFrame(Vcltee::Tecanvas::TTeePen* const Value);
	void __fastcall SetLeftWall(TChartLeftWall* const Value);
	void __fastcall SetLegend(TChartLegend* const Value);
	void __fastcall SetRightWall(TChartRightWall* const Value);
	void __fastcall SetSubFoot(TChartTitle* const Value);
	void __fastcall SetSubTitle(TChartTitle* const Value);
	void __fastcall SetTitle(TChartTitle* const Value);
	void __fastcall SetWalls(TChartWalls* const Value);
	void __fastcall WriteColorPalette(System::Classes::TWriter* Writer);
	void __fastcall WriteColorPaletteIndex(System::Classes::TWriter* Writer);
	void __fastcall AddZoomSnapshot();
	void __fastcall RemoveZoomSnapshot();
	void __fastcall ZoomBackOne();
	
protected:
	bool RestoredAxisScales;
	virtual void __fastcall CalcWallsRect();
	virtual int __fastcall CalcWallSize(Vcltee::Teengine::TChartAxis* Axis);
	DYNAMIC void __fastcall CalcZoomPoints();
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	DYNAMIC bool __fastcall DoMouseWheel(System::Classes::TShiftState Shift, int WheelDelta, const System::Types::TPoint &MousePos);
	DYNAMIC bool __fastcall DoMouseWheelDown(System::Classes::TShiftState Shift, const System::Types::TPoint &MousePos);
	DYNAMIC bool __fastcall DoMouseWheelUp(System::Classes::TShiftState Shift, const System::Types::TPoint &MousePos);
	void __fastcall DoZoom(const double TopI, const double TopF, const double BotI, const double BotF, const double LefI, const double LefF, const double RigI, const double RigF);
	bool __fastcall DrawLeftWallFirst();
	bool __fastcall DrawRightWallAfter();
	virtual void __fastcall DrawLegendShape(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* const AGraphic = (Vcl::Graphics::TGraphic*)(0x0));
	virtual void __fastcall DrawTitlesAndLegend(bool BeforeSeries);
	virtual void __fastcall DrawWalls();
	DYNAMIC System::TClass __fastcall Form3DClass();
	virtual System::Uitypes::TColor __fastcall GetBackColor();
	System::UnicodeString __fastcall InternalFormattedLegend(TCustomChartLegend* const ALegend, int SeriesOrValueIndex);
	DYNAMIC void __fastcall MouseDown(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(System::Uitypes::TMouseButton Button, System::Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(System::Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall DoEndDrag(System::TObject* Target, int X, int Y);
	DYNAMIC void __fastcall DoStartDrag(Vcl::Controls::TDragObject* &DragObject);
	DYNAMIC void __fastcall DragOver(System::TObject* Source, int X, int Y, System::Uitypes::TDragState State, bool &Accept);
	DYNAMIC void __fastcall KeyDown(System::Word &Key, System::Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(System::Word &Key, System::Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(System::WideChar &Key);
	
public:
	__fastcall virtual TCustomChart(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TCustomChart();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	System::UnicodeString __fastcall AxisTitleOrName(Vcltee::Teengine::TChartAxis* const Axis);
	void __fastcall CalcClickedPart(const System::Types::TPoint &Pos, /* out */ Vcltee::Teengine::TChartClickedPart &Part);
	DYNAMIC void __fastcall DragDrop(System::TObject* Source, int X, int Y);
	DYNAMIC void __fastcall FillSeriesSourceItems(Vcltee::Teengine::TChartSeries* ASeries, System::Classes::TGetStrProc Proc);
	DYNAMIC void __fastcall FillValueSourceItems(Vcltee::Teengine::TChartValueList* ValueList, System::Classes::TGetStrProc Proc);
	Vcltee::Teengine::TChartSeries* __fastcall GetASeries();
	DYNAMIC void __fastcall GetChildren(System::Classes::TGetChildProc Proc, System::Classes::TComponent* Root);
	virtual bool __fastcall IsFreeSeriesColor(System::Uitypes::TColor AColor, bool CheckBackground, Vcltee::Teengine::TChartSeries* ASeries = (Vcltee::Teengine::TChartSeries*)(0x0));
	void __fastcall NextPage();
	void __fastcall PreviousPage();
	void __fastcall RemoveAllSeries();
	void __fastcall ClearChart();
	void __fastcall SeriesDown(Vcltee::Teengine::TChartSeries* const ASeries);
	void __fastcall SeriesUp(Vcltee::Teengine::TChartSeries* const ASeries);
	DYNAMIC void __fastcall UndoZoom();
	void __fastcall ZoomPercent(const double PercentZoom);
	void __fastcall ZoomRect(const System::Types::TRect &Rect);
	virtual System::UnicodeString __fastcall FormattedValueLegend(Vcltee::Teengine::TChartSeries* ASeries, int ValueIndex);
	System::UnicodeString __fastcall FormattedLegend(int SeriesOrValueIndex);
	__property System::Uitypes::TColor BackColor = {read=GetBackColor, write=SetBackColor, nodefault};
	__property int ColorPaletteIndex = {read=FColorPaletteIndex, write=SetColorPaletteIndex, default=-1};
	__property TChartWalls* Walls = {read=FWalls, write=SetWalls};
	__property TChartBackWall* BackWall = {read=GetBackWall, write=SetBackWall};
	__property Vcltee::Tecanvas::TTeePen* Frame = {read=GetFrame, write=SetFrame};
	__property TChartBottomWall* BottomWall = {read=GetBottomWall, write=SetBottomWall};
	__property TChartTitle* Foot = {read=GetFoot, write=SetFoot};
	__property TChartLeftWall* LeftWall = {read=GetLeftWall, write=SetLeftWall};
	__property TChartLegend* Legend = {read=FLegend, write=SetLegend};
	__property TChartRightWall* RightWall = {read=GetRightWall, write=SetRightWall};
	__property TChartTitle* SubFoot = {read=GetSubFoot, write=SetSubFoot};
	__property TChartTitle* SubTitle = {read=GetSubTitle, write=SetSubTitle};
	__property TChartTitle* Title = {read=GetTitle, write=SetTitle};
	__property TChartAllowScrollEvent OnAllowScroll = {read=FOnAllowScroll, write=FOnAllowScroll};
	__property TChartClickAxis OnClickAxis = {read=FOnClickAxis, write=FOnClickAxis};
	__property TChartClick OnClickBackground = {read=FOnClickBackGround, write=FOnClickBackGround};
	__property TChartClick OnClickLegend = {read=FOnClickLegend, write=FOnClickLegend};
	__property TChartClickSeries OnClickSeries = {read=FOnClickSeries, write=FOnClickSeries};
	__property TChartClickTitle OnClickTitle = {read=FOnClickTitle, write=FOnClickTitle};
	__property TOnGetLegendPos OnGetLegendPos = {read=FOnGetLegendPos, write=FOnGetLegendPos};
	__property TOnGetLegendRect OnGetLegendRect = {read=FOnGetLegendRect, write=FOnGetLegendRect};
	__property TOnGetLegendText OnGetLegendText = {read=FOnGetLegendText, write=FOnGetLegendText};
	__property Align = {default=0};
	__property BevelInner = {default=0};
	__property BevelOuter = {default=2};
	__property BevelWidth = {default=1};
	__property BorderWidth = {default=0};
	__property Color = {default=-16777201};
	__property UseDockManager = {default=1};
	__property DockSite = {default=0};
	__property DragCursor = {default=-12};
	__property DragMode = {default=0};
	__property Enabled = {default=1};
	__property ParentColor = {default=0};
	__property ParentShowHint = {default=1};
	__property PopupMenu;
	__property TabStop = {default=1};
	__property ShowHint;
	__property TabOrder = {default=-1};
	__property Touch;
	__property Visible = {default=1};
	__property Anchors = {default=3};
	__property AutoSize = {default=0};
	__property Constraints;
	__property DragKind = {default=0};
	__property Locked = {default=0};
	__property OnClick;
	__property OnContextPopup;
	__property OnEndDrag;
	__property OnStartDrag;
	__property OnEnter;
	__property OnExit;
	__property OnKeyPress;
	__property OnDragDrop;
	__property OnDragOver;
	__property OnMouseWheelDown;
	__property OnMouseWheelUp;
	__property OnDblClick;
	__property OnKeyDown;
	__property OnKeyUp;
	__property OnMouseDown;
	__property OnMouseMove;
	__property OnMouseUp;
	__property OnResize;
	__property OnMouseWheel;
	__property OnCanResize;
	__property OnConstrainedResize;
	__property OnDockDrop;
	__property OnDockOver;
	__property OnEndDock;
	__property OnGetSiteInfo;
	__property OnStartDock;
	__property OnUnDock;
	__property OnMouseEnter;
	__property OnMouseLeave;
	__property OnGesture;
public:
	/* TWinControl.CreateParented */ inline __fastcall TCustomChart(HWND ParentWindow) : Vcltee::Teengine::TCustomAxisPanel(ParentWindow) { }
	
};


class PASCALIMPLEMENTATION TChart : public TCustomChart
{
	typedef TCustomChart inherited;
	
public:
	__property DockManager;
	
__published:
	__property AllowPanning = {default=3};
	__property BackImage;
	__property BackImageInside = {default=0};
	__property BackImageMode = {default=0};
	__property BackImageTransp = {default=0};
	__property BackWall;
	__property Border;
	__property BorderRound = {default=0};
	__property BottomWall;
	__property Foot;
	__property Gradient;
	__property LeftWall;
	__property Legend;
	__property MarginBottom = {index=3, default=4};
	__property MarginLeft = {index=0, default=3};
	__property MarginRight = {index=2, default=3};
	__property MarginTop = {index=1, default=4};
	__property MarginUnits = {default=0};
	__property PrintProportional = {default=1};
	__property RightWall;
	__property ScrollMouseButton = {default=1};
	__property SubFoot;
	__property SubTitle;
	__property Title;
	__property OnAllowScroll;
	__property OnClickAxis;
	__property OnClickBackground;
	__property OnClickLegend;
	__property OnClickSeries;
	__property OnClickTitle;
	__property OnGetLegendPos;
	__property OnGetLegendRect;
	__property OnScroll;
	__property OnUndoZoom;
	__property OnZoom;
	__property Animations;
	__property AxisBehind = {default=1};
	__property AxisVisible = {default=1};
	__property BottomAxis;
	__property Chart3DPercent = {default=15};
	__property ClipPoints = {default=1};
	__property DepthAxis;
	__property DepthTopAxis;
	__property CustomAxes;
	__property Emboss;
	__property Frame;
	__property Hover;
	__property LeftAxis;
	__property Monochrome = {default=0};
	__property Pages;
	__property Panning;
	__property RightAxis;
	__property SeriesGroups;
	__property SeriesList;
	__property Shadow;
	__property Tools;
	__property TopAxis;
	__property View3D = {default=1};
	__property View3DOptions;
	__property View3DWalls = {default=1};
	__property Zoom;
	__property ZoomWheel = {default=2};
	__property OnAddSeries;
	__property OnAfterDraw;
	__property OnBeforeDrawAxes;
	__property OnBeforeDrawChart;
	__property OnBeforeDrawSeries;
	__property OnBeforePrint;
	__property OnGetAxisLabel;
	__property OnGetLegendText;
	__property OnGetNextAxisLabel;
	__property OnPageChange;
	__property OnRemoveSeries;
	__property OnValidDataSource;
	__property Align = {default=0};
	__property BevelInner = {default=0};
	__property BevelOuter = {default=2};
	__property BevelWidth = {default=1};
	__property BorderWidth = {default=0};
	__property Color = {default=-16777201};
	__property UseDockManager = {default=1};
	__property DockSite = {default=0};
	__property DragCursor = {default=-12};
	__property DragMode = {default=0};
	__property ParentColor = {default=0};
	__property ParentShowHint = {default=1};
	__property PopupMenu;
	__property TabStop = {default=1};
	__property AutoSize = {default=0};
	__property Constraints;
	__property OnDragDrop;
	__property OnDragOver;
	__property OnEndDrag;
	__property OnStartDrag;
	__property OnEnter;
	__property OnExit;
	__property OnKeyPress;
	__property Enabled = {default=1};
	__property ShowHint;
	__property TabOrder = {default=-1};
	__property Touch;
	__property Visible = {default=1};
	__property Anchors = {default=3};
	__property DragKind = {default=0};
	__property Locked = {default=0};
	__property OnClick;
	__property OnContextPopup;
	__property OnDblClick;
	__property OnKeyDown;
	__property OnKeyUp;
	__property OnMouseDown;
	__property OnMouseEnter;
	__property OnMouseLeave;
	__property OnMouseMove;
	__property OnMouseUp;
	__property OnResize;
	__property OnMouseWheel;
	__property OnCanResize;
	__property OnMouseWheelDown;
	__property OnMouseWheelUp;
	__property OnConstrainedResize;
	__property OnDockDrop;
	__property OnDockOver;
	__property OnEndDock;
	__property OnGesture;
	__property OnGetSiteInfo;
	__property OnStartDock;
	__property OnUnDock;
public:
	/* TCustomChart.Create */ inline __fastcall virtual TChart(System::Classes::TComponent* AOwner) : TCustomChart(AOwner) { }
	/* TCustomChart.Destroy */ inline __fastcall virtual ~TChart() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TChart(HWND ParentWindow) : TCustomChart(ParentWindow) { }
	
};


class PASCALIMPLEMENTATION TTeeSeriesTypes : public System::Generics::Collections::TList__1<Vcltee::Teengine::TTeeSeriesType*>
{
	typedef System::Generics::Collections::TList__1<Vcltee::Teengine::TTeeSeriesType*> inherited;
	
public:
	Vcltee::Teengine::TChartSeriesClass __fastcall Find(const System::UnicodeString ASeriesClass)/* overload */;
	Vcltee::Teengine::TTeeSeriesType* __fastcall Find(const Vcltee::Teengine::TChartSeriesClass ASeriesClass, int SubIndex = 0x0)/* overload */;
public:
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeSeriesType>.Create */ inline __fastcall TTeeSeriesTypes()/* overload */ : System::Generics::Collections::TList__1<Vcltee::Teengine::TTeeSeriesType*>() { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeSeriesType>.Create */ inline __fastcall TTeeSeriesTypes(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<Vcltee::Teengine::TTeeSeriesType*> > AComparer)/* overload */ : System::Generics::Collections::TList__1<Vcltee::Teengine::TTeeSeriesType*>(AComparer) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeSeriesType>.Create */ inline __fastcall TTeeSeriesTypes(System::Generics::Collections::TEnumerable__1<Vcltee::Teengine::TTeeSeriesType*>* const Collection)/* overload */ : System::Generics::Collections::TList__1<Vcltee::Teengine::TTeeSeriesType*>(Collection) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeSeriesType>.Create */ inline __fastcall TTeeSeriesTypes(Vcltee::Teengine::TTeeSeriesType* const *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<Vcltee::Teengine::TTeeSeriesType*>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<VCLTee_TeEngine_TTeeSeriesType>.Destroy */ inline __fastcall virtual ~TTeeSeriesTypes() { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeToolTypes : public System::Classes::TList
{
	typedef System::Classes::TList inherited;
	
public:
	Vcltee::Teengine::TTeeCustomToolClass operator[](int Index) { return this->Items[Index]; }
	
private:
	HIDESBASE Vcltee::Teengine::TTeeCustomToolClass __fastcall Get(int Index);
	
public:
	__property Vcltee::Teengine::TTeeCustomToolClass Items[int Index] = {read=Get/*, default*/};
public:
	/* TList.Destroy */ inline __fastcall virtual ~TTeeToolTypes() { }
	
public:
	/* TObject.Create */ inline __fastcall TTeeToolTypes() : System::Classes::TList() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TTeeDragObject : public Vcl::Controls::TDragObject
{
	typedef Vcl::Controls::TDragObject inherited;
	
private:
	Vcltee::Teengine::TChartClickedPart FPart;
	
protected:
	virtual System::Uitypes::TCursor __fastcall GetDragCursor(bool Accepted, int X, int Y);
	virtual void __fastcall Finished(System::TObject* Target, int X, int Y, bool Accepted);
	
public:
	__fastcall TTeeDragObject(const Vcltee::Teengine::TChartClickedPart &APart);
	__property Vcltee::Teengine::TChartClickedPart Part = {read=FPart};
public:
	/* TObject.Destroy */ inline __fastcall virtual ~TTeeDragObject() { }
	
};


class PASCALIMPLEMENTATION TCustomChartLink : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	void __fastcall SetChart(TCustomChart* const Value);
	
protected:
	TCustomChart* FChart;
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	
public:
	__property TCustomChart* Chart = {read=FChart, write=SetChart};
public:
	/* TComponent.Create */ inline __fastcall virtual TCustomChartLink(System::Classes::TComponent* AOwner) : System::Classes::TComponent(AOwner) { }
	/* TComponent.Destroy */ inline __fastcall virtual ~TCustomChartLink() { }
	
};


struct DECLSPEC_DRECORD TColorPalette
{
	
private:
	typedef System::DynamicArray<System::Uitypes::TColor> _TColorPalette__1;
	
	
public:
	System::UnicodeString Name;
	_TColorPalette__1 Colors;
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TColorPalettes : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<TColorPalette> _TColorPalettes__1;
	
	
public:
	System::UnicodeString operator[](const int Index) { return this->Name[Index]; }
	
private:
	_TColorPalettes__1 IPalettes;
	void __fastcall Add(const System::UnicodeString AName, const System::Uitypes::TColor *APalette, const int APalette_High);
	void __fastcall CopyPalette(const int Index, const System::Uitypes::TColor *APalette, const int APalette_High);
	System::UnicodeString __fastcall GetName(const int Index);
	void __fastcall SetName(const int Index, const System::UnicodeString AName);
	
public:
	__classmethod void __fastcall AddTo(System::Classes::TStrings* const Items, bool AddDefault = false);
	__classmethod void __fastcall ApplyPalette(Vcltee::Teengine::TCustomAxisPanel* const Chart, int Index)/* overload */;
	__classmethod void __fastcall ApplyPalette(Vcltee::Teengine::TCustomAxisPanel* const Chart, const System::Uitypes::TColor *Palette, const int Palette_High)/* overload */;
	int __fastcall Count();
	int __fastcall IndexOf(const System::UnicodeString AName);
	__classmethod void __fastcall GetPalette(int Index, /* out */ Vcltee::Teeprocs::TColorArray &Palette);
	__classmethod void __fastcall RegisterPalette(const System::UnicodeString AName, const System::Uitypes::TColor *APalette, const int APalette_High);
	__property System::UnicodeString Name[const int Index] = {read=GetName, write=SetName/*, default*/};
public:
	/* TObject.Create */ inline __fastcall TColorPalettes() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TColorPalettes() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#ifndef _WIN64
typedef System::TMetaClass* TTeeCanvasClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TTeeCanvasClass);
#endif /* _WIN64 */

#ifndef _WIN64
typedef System::TMetaClass* TChartThemeClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TChartThemeClass);
#endif /* _WIN64 */

typedef TChartThemeClass __fastcall (*TTeeThemeSelectorProc)(TCustomChart* const Chart);

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TChartTheme : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
public:
	TCustomChart* Chart;
	__fastcall virtual TChartTheme(TCustomChart* AChart);
	virtual void __fastcall Apply();
	virtual System::UnicodeString __fastcall Description();
	virtual void __fastcall SetDefaultValues();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TChartTheme() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

//-- var, const, procedure ---------------------------------------------------
#define TeeMsg_DefaultFunctionName L"TeeFunction"
#define TeeMsg_DefaultSeriesName L"Series"
#define TeeMsg_DefaultToolName L"ChartTool"
#define TeeMsg_DefaultAnimationName L"ChartAnimation"
#define ChartComponentPalette L"TeeChart"
static const System::Int8 TeeMaxLegendColumns = System::Int8(0x3);
static const System::Int8 TeeDefaultLegendSymbolHeight = System::Int8(0x64);
static const System::Int8 TeeDefaultLegendSymbolWidth = System::Int8(0x14);
static const System::Int8 TeeTitleFootDistance = System::Int8(0x5);
static const int TeeAllComponentPlatformIDs = int(0x2945f);
extern DELPHI_PACKAGE double AnimatedZoomFactor;
extern DELPHI_PACKAGE System::Classes::TShiftState TeeScrollKeyShift;
extern DELPHI_PACKAGE TTeeSeriesTypes* TeeSeriesTypes;
extern DELPHI_PACKAGE TTeeToolTypes* TeeToolTypes;
extern DELPHI_PACKAGE TTeeToolTypes* TeeAnimationTypes;
extern DELPHI_PACKAGE Vcltee::Teengine::TTeeCustomToolClass TeePageNumToolClass;
extern DELPHI_PACKAGE TTeeThemeSelectorProc TeeThemeSelectorHook;
extern DELPHI_PACKAGE TTeeThemeSelectorProc TeeNewChartHook;
extern DELPHI_PACKAGE TTeeCanvasClass TeeAntiAliasCanvas;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 22> ExcelPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 11> VictorianPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 14> PastelsPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 8> SolidPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 12> ClassicPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 9> WebPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 14> ModernPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 25> RainbowPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 13> WindowsXPPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 16> MacOSPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 15> WindowsVistaPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 15> GrayScalePalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 12> OperaPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 8> WarmPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 8> CoolPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 4> OnBlackPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 10> MetroPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 12> iOSPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 15> AndroidPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 12> LookoutPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 12> SeawashPalette;
extern DELPHI_PACKAGE System::StaticArray<System::Uitypes::TColor, 10> ActivityPalette;
extern DELPHI_PACKAGE void __fastcall PaintSeriesLegend(Vcltee::Teengine::TChartSeries* const ASeries, Vcl::Graphics::TCanvas* const ACanvas, const System::Types::TRect &R);
extern DELPHI_PACKAGE System::Classes::TComponentName __fastcall GetNewSeriesName(System::Classes::TComponent* const AOwner);
extern DELPHI_PACKAGE void __fastcall AssignSeries(Vcltee::Teengine::TChartSeries* &OldSeries, Vcltee::Teengine::TChartSeries* &NewSeries);
extern DELPHI_PACKAGE Vcltee::Teengine::TTeeFunction* __fastcall CreateNewTeeFunction(Vcltee::Teengine::TChartSeries* const ASeries, Vcltee::Teengine::TTeeFunctionClass AClass);
extern DELPHI_PACKAGE Vcltee::Teengine::TChartSeries* __fastcall CreateNewSeries(System::Classes::TComponent* AOwner, Vcltee::Teengine::TCustomAxisPanel* const AChart, Vcltee::Teengine::TChartSeriesClass AClass, Vcltee::Teengine::TTeeFunctionClass AFunctionClass = 0x0);
extern DELPHI_PACKAGE Vcltee::Teengine::TChartSeries* __fastcall CloneChartSeries(Vcltee::Teengine::TChartSeries* const ASeries)/* overload */;
extern DELPHI_PACKAGE Vcltee::Teengine::TChartSeries* __fastcall CloneChartSeries(Vcltee::Teengine::TChartSeries* const ASeries, Vcltee::Teengine::TCustomAxisPanel* const AChart)/* overload */;
extern DELPHI_PACKAGE Vcltee::Teengine::TChartSeries* __fastcall CloneChartSeries(Vcltee::Teengine::TChartSeries* const ASeries, System::Classes::TComponent* const AOwner, Vcltee::Teengine::TCustomAxisPanel* const AChart)/* overload */;
extern DELPHI_PACKAGE Vcltee::Teengine::TTeeCustomTool* __fastcall CloneChartTool(Vcltee::Teengine::TTeeCustomTool* const ATool, System::Classes::TComponent* const AOwner);
extern DELPHI_PACKAGE Vcltee::Teengine::TTeeCustomAnimation* __fastcall CloneChartAnimation(Vcltee::Teengine::TTeeCustomAnimation* const AAnimation, System::Classes::TComponent* const AOwner);
extern DELPHI_PACKAGE void __fastcall CloneChart(TCustomChart* const Dest, TCustomChart* const Origin, System::Classes::TComponent* const AOwner, bool ForceManualData);
extern DELPHI_PACKAGE Vcltee::Teengine::TChartSeries* __fastcall ChangeSeriesType(Vcltee::Teengine::TChartSeries* &ASeries, Vcltee::Teengine::TChartSeriesClass NewType);
extern DELPHI_PACKAGE void __fastcall ChangeAllSeriesType(TCustomChart* const AChart, Vcltee::Teengine::TChartSeriesClass AClass);
extern DELPHI_PACKAGE void __fastcall RegisterTeeSeriesFunction(Vcltee::Teengine::TChartSeriesClass ASeriesClass, Vcltee::Teengine::TTeeFunctionClass AFunctionClass, System::PUnicodeString ADescription, System::PUnicodeString AGalleryPage, int ANumGallerySeries = 0x1, int ASubIndex = 0x0);
extern DELPHI_PACKAGE void __fastcall RegisterTeeSeries(Vcltee::Teengine::TChartSeriesClass ASeriesClass, System::PUnicodeString ADescription, System::PUnicodeString AGalleryPage, int ANumGallerySeries)/* overload */;
extern DELPHI_PACKAGE void __fastcall RegisterTeeSeries(Vcltee::Teengine::TChartSeriesClass ASeriesClass, System::PUnicodeString ADescription)/* overload */;
extern DELPHI_PACKAGE void __fastcall RegisterTeeFunction(Vcltee::Teengine::TTeeFunctionClass AFunctionClass, System::PUnicodeString ADescription, System::PUnicodeString AGalleryPage, int ANumGallerySeries = 0x1);
extern DELPHI_PACKAGE void __fastcall RegisterTeeBasicFunction(Vcltee::Teengine::TTeeFunctionClass AFunctionClass, System::PUnicodeString ADescription);
extern DELPHI_PACKAGE void __fastcall UnRegisterTeeSeries(Vcltee::Teengine::TChartSeriesClass const *ASeriesList, const int ASeriesList_High);
extern DELPHI_PACKAGE void __fastcall UnRegisterTeeFunctions(Vcltee::Teengine::TTeeFunctionClass const *AFunctionList, const int AFunctionList_High);
extern DELPHI_PACKAGE void __fastcall RegisterTeeTools(Vcltee::Teengine::TTeeCustomToolClass const *ATools, const int ATools_High);
extern DELPHI_PACKAGE void __fastcall UnRegisterTeeTools(Vcltee::Teengine::TTeeCustomToolClass const *ATools, const int ATools_High);
extern DELPHI_PACKAGE void __fastcall RegisterTeeAnimations(Vcltee::Teengine::TTeeCustomAnimationClass const *AAnimations, const int AAnimations_High);
extern DELPHI_PACKAGE void __fastcall UnRegisterTeeAnimations(Vcltee::Teengine::TTeeCustomAnimationClass const *AAnimations, const int AAnimations_High);
extern DELPHI_PACKAGE System::UnicodeString __fastcall GetGallerySeriesName(Vcltee::Teengine::TChartSeries* const ASeries);
extern DELPHI_PACKAGE TColorPalettes* __fastcall ColorPalettes(void);
}	/* namespace Chart */
}	/* namespace Vcltee */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE_CHART)
using namespace Vcltee::Chart;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE)
using namespace Vcltee;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcltee_ChartHPP
