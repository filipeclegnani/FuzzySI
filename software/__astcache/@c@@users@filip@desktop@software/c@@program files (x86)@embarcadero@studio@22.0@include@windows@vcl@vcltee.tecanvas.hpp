// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCLTee.TeCanvas.pas' rev: 35.00 (Windows)

#ifndef Vcltee_TecanvasHPP
#define Vcltee_TecanvasHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.Messages.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Collections.hpp>
#include <System.Math.Vectors.hpp>
#include <System.UITypes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.Dialogs.hpp>
#include <System.Types.hpp>
#include <Vcl.Forms.hpp>
#include <System.TypInfo.hpp>

//-- user supplied -----------------------------------------------------------

namespace Vcltee
{
namespace Tecanvas
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TFilterRegion;
struct TFloatRect;
struct TRGB;
struct TRGBA;
__interface DELPHIINTERFACE IFormCreator;
typedef System::DelphiInterface<IFormCreator> _di_IFormCreator;
class DELPHICLASS TTeeFilter;
class DELPHICLASS TFilterItems;
class DELPHICLASS TConvolveFilter;
class DELPHICLASS TBlurFilter;
class DELPHICLASS TTeePicture;
class DELPHICLASS TTeeBasePath;
class DELPHICLASS TTeeCorner;
class DELPHICLASS TTeeCorners;
class DELPHICLASS TTeePen;
class DELPHICLASS TTeeHiddenPen;
class DELPHICLASS TDottedGrayPen;
class DELPHICLASS TDarkGrayPen;
class DELPHICLASS TWhitePen;
class DELPHICLASS TTeeBrush;
class DELPHICLASS TView3DOptions;
class DELPHICLASS TTeeBlend;
class DELPHICLASS TTeeShadow;
class DELPHICLASS TTeeEmboss;
class DELPHICLASS TTeeGradientColor;
class DELPHICLASS TTeeGradientColors;
class DELPHICLASS TCustomTeeGradient;
class DELPHICLASS TSubGradient;
class DELPHICLASS TTeeGradient;
class DELPHICLASS TTeeFont;
class DELPHICLASS TTeeCachedObject;
class DELPHICLASS TTeeCanvas;
struct TFloatPoint;
class DELPHICLASS TFloatXY;
class DELPHICLASS TFloatXYZ;
struct TPoint3D;
struct TTriangleIndexes;
struct TSurfaceVertex;
class DELPHICLASS TPointBlock;
class DELPHICLASS TPointXYFloat;
class DELPHICLASS TPointXYZFloat;
class DELPHICLASS TVisualBlock;
class DELPHICLASS TTeeTransform;
class DELPHICLASS TCanvas3D;
class DELPHICLASS TTeeCanvas3D;
class DELPHICLASS TTeeNeutralCanvas;
class DELPHICLASS TTeeButton;
class DELPHICLASS TButtonColor;
class DELPHICLASS TComboFlat;
__interface DELPHIINTERFACE ICanvasHyperlinks;
typedef System::DelphiInterface<ICanvasHyperlinks> _di_ICanvasHyperlinks;
__interface DELPHIINTERFACE ICanvasToolTips;
typedef System::DelphiInterface<ICanvasToolTips> _di_ICanvasToolTips;
class DELPHICLASS TVisualEditor;
//-- type declarations -------------------------------------------------------
typedef System::Types::TRectF TRectF;

typedef System::DynamicArray<double> TDoubleArray;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TFilterRegion : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FHeight;
	int FLeft;
	int FTop;
	int FWidth;
	System::Types::TRect __fastcall GetRectangle();
	void __fastcall SetRectangle(const System::Types::TRect &Rect);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Types::TRect Rectangle = {read=GetRectangle, write=SetRectangle};
	
__published:
	__property int Height = {read=FHeight, write=FHeight, default=0};
	__property int Left = {read=FLeft, write=FLeft, default=0};
	__property int Top = {read=FTop, write=FTop, default=0};
	__property int Width = {read=FWidth, write=FWidth, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TFilterRegion() { }
	
public:
	/* TObject.Create */ inline __fastcall TFilterRegion() : System::Classes::TPersistent() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

#pragma pack(push,1)
struct DECLSPEC_DRECORD TFloatRect
{
public:
	double Left;
	double Top;
	double Right;
	double Bottom;
};
#pragma pack(pop)


#pragma pack(push,1)
struct DECLSPEC_DRECORD TRGB
{
public:
	System::Byte Blue;
	System::Byte Green;
	System::Byte Red;
};
#pragma pack(pop)


#pragma pack(push,1)
struct DECLSPEC_DRECORD TRGBA
{
public:
	System::Byte Red;
	System::Byte Green;
	System::Byte Blue;
	System::Byte Alpha;
};
#pragma pack(pop)


typedef System::StaticArray<TRGB, 1> TRGBs;

typedef TRGBs *PRGBs;

typedef System::StaticArray<TRGBA, 1> TRGBAs;

typedef TRGBAs *PRGBAs;

typedef System::DynamicArray<PRGBs> TRGBArray;

typedef System::DynamicArray<PRGBAs> TRGBAArray;

__interface IFormCreator  : public System::IInterface 
{
	virtual Vcl::Stdctrls::TCheckBox* __fastcall AddCheckBox(const System::UnicodeString PropName, const System::UnicodeString ACaption, System::Classes::TNotifyEvent OnChange = 0x0) = 0 ;
	virtual Vcl::Stdctrls::TButton* __fastcall AddColor(const System::UnicodeString PropName, const System::UnicodeString ACaption) = 0 ;
	virtual Vcl::Stdctrls::TComboBox* __fastcall AddCombo(const System::UnicodeString PropName) = 0 ;
	virtual Vcl::Stdctrls::TEdit* __fastcall AddInteger(const System::UnicodeString PropName, const System::UnicodeString ACaption, int AMin, int AMax) = 0 ;
	virtual Vcl::Stdctrls::TScrollBar* __fastcall AddScroll(const System::UnicodeString PropName, int AMin, int AMax) = 0 ;
};

typedef System::Types::TRect TRectI;

class PASCALIMPLEMENTATION TTeeFilter : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	bool FEnabled;
	TFilterRegion* FRegion;
	TFilterRegion* __fastcall GetRegion();
	void __fastcall SetEnabled(const bool Value);
	void __fastcall SetRegion(TFilterRegion* const Value);
	
protected:
	bool AllowRegion;
	System::Classes::TNotifyEvent FChanged;
	bool ReuseLines;
	void __fastcall CalcLines(Vcl::Graphics::TBitmap* const Bitmap);
	bool __fastcall Empty();
	
public:
	bool RGBA;
	TRGBArray Lines;
	TRGBAArray LinesRGBA;
	__fastcall virtual TTeeFilter(System::Classes::TCollection* Collection);
	__fastcall virtual ~TTeeFilter();
	__classmethod void __fastcall ApplyTo(Vcl::Graphics::TBitmap* const Bitmap)/* overload */;
	void __fastcall Apply(Vcl::Graphics::TBitmap* const Bitmap)/* overload */;
	virtual void __fastcall Apply(Vcl::Graphics::TBitmap* const Bitmap, const System::Types::TRect &R)/* overload */;
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall CreateEditor(_di_IFormCreator Creator, System::Classes::TNotifyEvent AChanged);
	DYNAMIC void __fastcall PrepareForGallery();
	__classmethod virtual System::UnicodeString __fastcall Description();
	
__published:
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property TFilterRegion* Region = {read=GetRegion, write=SetRegion};
};


#ifndef _WIN64
typedef System::TMetaClass* TFilterClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TFilterClass);
#endif /* _WIN64 */

class PASCALIMPLEMENTATION TFilterItems : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTeeFilter* operator[](int Index) { return this->Item[Index]; }
	
private:
	System::Classes::TNotifyEvent FOnChange;
	TTeeFilter* __fastcall Get(int Index);
	void __fastcall Put(int Index, TTeeFilter* const Value);
	
protected:
	virtual void __fastcall Notify(System::Classes::TCollectionItem* Item, System::Generics::Collections::TCollectionNotification Action);
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	bool Changed;
	HIDESBASE TTeeFilter* __fastcall Add(TFilterClass Filter);
	void __fastcall ApplyTo(Vcl::Graphics::TBitmap* const ABitmap);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property TTeeFilter* Item[int Index] = {read=Get, write=Put/*, default*/};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
public:
	/* TOwnedCollection.Create */ inline __fastcall TFilterItems(System::Classes::TPersistent* AOwner, System::Classes::TCollectionItemClass ItemClass) : System::Classes::TOwnedCollection(AOwner, ItemClass) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TFilterItems() { }
	
};


class PASCALIMPLEMENTATION TConvolveFilter : public TTeeFilter
{
	typedef TTeeFilter inherited;
	
protected:
	Vcl::Graphics::TBitmap* BufferBitmap;
	TTeeFilter* BufferFilter;
	bool KeepBuffer;
	System::Types::TRect Rect;
	void __fastcall CreateBuffer(int AWidth, int AHeight);
	void __fastcall FreeBuffer();
	
public:
	System::StaticArray<System::StaticArray<float, 3>, 3> Weights;
	virtual void __fastcall Apply(Vcl::Graphics::TBitmap* const Bitmap, const System::Types::TRect &R)/* overload */;
public:
	/* TTeeFilter.Create */ inline __fastcall virtual TConvolveFilter(System::Classes::TCollection* Collection) : TTeeFilter(Collection) { }
	/* TTeeFilter.Destroy */ inline __fastcall virtual ~TConvolveFilter() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Apply(Vcl::Graphics::TBitmap* const Bitmap){ TTeeFilter::Apply(Bitmap); }
	
};


class PASCALIMPLEMENTATION TBlurFilter : public TConvolveFilter
{
	typedef TConvolveFilter inherited;
	
private:
	int FAmount;
	int FSteps;
	
public:
	__fastcall virtual TBlurFilter(System::Classes::TCollection* Collection);
	virtual void __fastcall Apply(Vcl::Graphics::TBitmap* const Bitmap, const System::Types::TRect &R)/* overload */;
	__classmethod virtual System::UnicodeString __fastcall Description();
	virtual void __fastcall CreateEditor(_di_IFormCreator Creator, System::Classes::TNotifyEvent AChanged);
	
__published:
	__property int Amount = {read=FAmount, write=FAmount, default=1};
	__property int Steps = {read=FSteps, write=FSteps, default=1};
public:
	/* TTeeFilter.Destroy */ inline __fastcall virtual ~TBlurFilter() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Apply(Vcl::Graphics::TBitmap* const Bitmap){ TTeeFilter::Apply(Bitmap); }
	
};


class PASCALIMPLEMENTATION TTeePicture : public Vcl::Graphics::TPicture
{
	typedef Vcl::Graphics::TPicture inherited;
	
private:
	TFilterItems* FFilters;
	Vcl::Graphics::TBitmap* IBitmap;
	void __fastcall DoReadFilters(System::Classes::TReader* Reader);
	void __fastcall DoWriteFilters(System::Classes::TWriter* Writer);
	bool __fastcall FiltersStored();
	TFilterItems* __fastcall GetFilters();
	void __fastcall SetFilters(TFilterItems* const Value);
	
protected:
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	
public:
	__fastcall virtual ~TTeePicture();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__classmethod void __fastcall AssignGraphic(Vcl::Graphics::TBitmap* const ABitmap, Vcl::Graphics::TGraphic* const AGraphic);
	Vcl::Graphics::TGraphic* __fastcall Filtered();
	void __fastcall Repaint();
	bool __fastcall Valid();
	__classmethod void __fastcall ReadFilters(System::Classes::TReader* const Reader, TFilterItems* const Filters);
	__classmethod void __fastcall WriteFilters(System::Classes::TWriter* const Writer, TFilterItems* const Filters);
	
__published:
	__property TFilterItems* Filters = {read=GetFilters, write=SetFilters, stored=false};
public:
	/* TPicture.Create */ inline __fastcall TTeePicture() : Vcl::Graphics::TPicture() { }
	
};


typedef System::DynamicArray<_POINTFLOAT> TPointFloatArray;

typedef System::DynamicArray<System::Byte> TPathPointTypes;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeBasePath : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	virtual void __fastcall ArcTo(const float X, const float Y, const float Width, const float Height, const float StartAngle, const float SweepAngle) = 0 ;
	virtual void __fastcall Close() = 0 ;
	virtual void __fastcall Curve(const System::Types::TPoint *Points, const int Points_High, const float Tension, bool Closed) = 0 ;
	virtual void __fastcall Draw(TTeeCanvas* const ACanvas) = 0 ;
	virtual void __fastcall GetPoints(/* out */ TPathPointTypes &Types, /* out */ TPointFloatArray &Points, /* out */ System::Types::TRectF &Bounds) = 0 ;
	virtual void __fastcall LineTo(const float X, const float Y) = 0 /* overload */;
	void __fastcall LineTo(const System::Types::TPoint &P)/* overload */;
	virtual void __fastcall MoveTo(const float X, const float Y) = 0 /* overload */;
	void __fastcall MoveTo(const System::Types::TPoint &P)/* overload */;
	virtual void __fastcall TextOut(const float X, const float Y, const System::UnicodeString Text) = 0 ;
public:
	/* TObject.Create */ inline __fastcall TTeeBasePath() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTeeBasePath() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TTeeCornerStyle : unsigned char { cosRound, cosBevel, cosNone };

class PASCALIMPLEMENTATION TTeeCorner : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTeeCornerStyle FStyle;
	System::Classes::TNotifyEvent IChanged;
	void __fastcall SetStyle(const TTeeCornerStyle Value);
	
public:
	__fastcall TTeeCorner(const System::Classes::TNotifyEvent Changed);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTeeCornerStyle Style = {read=FStyle, write=SetStyle, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTeeCorner() { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeCorners : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTeeCorner* FLeftBottom;
	TTeeCorner* FLeftTop;
	TTeeCorner* FRightBottom;
	TTeeCorner* FRightTop;
	void __fastcall SetLeftBottom(TTeeCorner* const Value);
	void __fastcall SetLeftTop(TTeeCorner* const Value);
	void __fastcall SetRightBottom(TTeeCorner* const Value);
	void __fastcall SetRightTop(TTeeCorner* const Value);
	
protected:
	TTeeBasePath* __fastcall GetPath(TTeeCanvas* const ACanvas, const System::Types::TRect &R, int X, int Y);
	
public:
	__fastcall TTeeCorners(const System::Classes::TNotifyEvent Changed);
	__fastcall virtual ~TTeeCorners();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTeeCorner* LeftBottom = {read=FLeftBottom, write=SetLeftBottom};
	__property TTeeCorner* LeftTop = {read=FLeftTop, write=SetLeftTop};
	__property TTeeCorner* RightBottom = {read=FRightBottom, write=SetRightBottom};
	__property TTeeCorner* RightTop = {read=FRightTop, write=SetRightTop};
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef int TCoordinate;

enum DECLSPEC_DENUM TPenEndStyle : unsigned char { esRound, esSquare, esFlat };

enum DECLSPEC_DENUM TPenJoinStyle : unsigned char { jsRound, jsBevel, jsMitter };

class PASCALIMPLEMENTATION TTeePen : public Vcl::Graphics::TPen
{
	typedef Vcl::Graphics::TPen inherited;
	
private:
	TPenEndStyle FEndStyle;
	TPenJoinStyle FJoinStyle;
	bool FSmallDots;
	int FSmallSpace;
	bool FVisible;
	bool __fastcall IsEndStored();
	bool __fastcall IsJoinStored();
	bool __fastcall IsVisibleStored();
	bool __fastcall IsWidthStored();
	void __fastcall SetEndStyle(const TPenEndStyle Value);
	void __fastcall SetJoinStyle(const TPenJoinStyle Value);
	void __fastcall SetSmallDots(const bool Value);
	void __fastcall SetSmallSpace(const int Value);
	void __fastcall SetVisible(const bool Value);
	
protected:
	TPenEndStyle DefaultEnd;
	TPenJoinStyle DefaultJoin;
	bool DefaultVisible;
	int DefaultWidth;
	TTeeBrush* FFill;
	TTeeBrush* __fastcall GetPenBrush();
	void __fastcall InitColor(const System::Uitypes::TColor AColor);
	void __fastcall InitEndStyle(const TPenEndStyle Value);
	void __fastcall SetPenBrush(TTeeBrush* const Value);
	
public:
	__fastcall TTeePen(const System::Classes::TNotifyEvent OnChangeEvent);
	__fastcall virtual ~TTeePen();
	bool __fastcall IsGradientVisible();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	int __fastcall HalfWidth();
	void __fastcall Hide();
	void __fastcall Show();
	
__published:
	__property Width = {stored=IsWidthStored};
	__property TPenEndStyle EndStyle = {read=FEndStyle, write=SetEndStyle, stored=IsEndStored, nodefault};
	__property TTeeBrush* Fill = {read=GetPenBrush, write=SetPenBrush};
	__property TPenJoinStyle JoinStyle = {read=FJoinStyle, write=SetJoinStyle, stored=IsJoinStored, nodefault};
	__property bool SmallDots = {read=FSmallDots, write=SetSmallDots, default=0};
	__property int SmallSpace = {read=FSmallSpace, write=SetSmallSpace, default=0};
	__property bool Visible = {read=FVisible, write=SetVisible, stored=IsVisibleStored, nodefault};
};


class PASCALIMPLEMENTATION TTeeHiddenPen : public TTeePen
{
	typedef TTeePen inherited;
	
public:
	__fastcall TTeeHiddenPen(const System::Classes::TNotifyEvent OnChangeEvent);
	
__published:
	__property Visible = {default=0};
public:
	/* TTeePen.Destroy */ inline __fastcall virtual ~TTeeHiddenPen() { }
	
};


class PASCALIMPLEMENTATION TDottedGrayPen : public TTeePen
{
	typedef TTeePen inherited;
	
public:
	__fastcall TDottedGrayPen(const System::Classes::TNotifyEvent OnChangeEvent);
	
__published:
	__property Color = {default=8421504};
	__property Style = {default=2};
public:
	/* TTeePen.Destroy */ inline __fastcall virtual ~TDottedGrayPen() { }
	
};


class PASCALIMPLEMENTATION TDarkGrayPen : public TTeePen
{
	typedef TTeePen inherited;
	
public:
	__fastcall TDarkGrayPen(const System::Classes::TNotifyEvent OnChangeEvent);
	
__published:
	__property Color = {default=8421504};
public:
	/* TTeePen.Destroy */ inline __fastcall virtual ~TDarkGrayPen() { }
	
};


class PASCALIMPLEMENTATION TWhitePen : public TTeePen
{
	typedef TTeePen inherited;
	
public:
	__fastcall TWhitePen(const System::Classes::TNotifyEvent OnChangeEvent);
	
__published:
	__property Color = {default=16777215};
public:
	/* TTeePen.Destroy */ inline __fastcall virtual ~TWhitePen() { }
	
};


enum DECLSPEC_DENUM THatchStyle : unsigned char { hsHorizontal, hsVertical, hsForwardDiagonal, hsBackwardDiagonal, hsCross, hsDiagonalCross, hs05Percent, hs10Percent, hs20Percent, hs25Percent, hs30Percent, hs40Percent, hs50Percent, hs60Percent, hs70Percent, hs75Percent, hs80Percent, hs90Percent, hsLightDownwardDiagonal, hsLightUpwardDiagonal, hsDarkDownwardDiagonal, hsDarkUpwardDiagonal, hsWideDownwardDiagonal, hsWideUpwardDiagonal, hsLightVertical, hsLightHorizontal, hsNarrowVertical, hsNarrowHorizontal, hsDarkVertical, hsDarkHorizontal, hsDashedDownwardDiagonal, hsDashedUpwardDiagonal, hsDashedHorizontal, hsDashedVertical, hsSmallConfetti, hsLargeConfetti, hsZigZag, hsWave, hsDiagonalBrick, hsHorizontalBrick, hsWeave, hsPlaid, hsDivot, hsDottedGrid, 
	hsDottedDiamond, hsShingle, hsTrellis, hsSphere, hsSmallGrid, hsSmallCheckerBoard, hsLargeCheckerBoard, hsOutlinedDiamond, hsSolidDiamond };

class PASCALIMPLEMENTATION TTeeBrush : public Vcl::Graphics::TBrush
{
	typedef Vcl::Graphics::TBrush inherited;
	
private:
	System::Uitypes::TColor FBackColor;
	TTeeGradient* FGradient;
	TTeePicture* FImage;
	THatchStyle FHatchStyle;
	System::Uitypes::TColor DefaultColor;
	TTeeGradient* __fastcall GetGradient();
	TTeePicture* __fastcall GetImage();
	bool __fastcall HasGraphic();
	bool __fastcall IsColorStored();
	void __fastcall SetBackColor(const System::Uitypes::TColor Value);
	void __fastcall SetGradient(TTeeGradient* const Value);
	void __fastcall SetHatchStyle(const THatchStyle Value);
	void __fastcall SetImage(TTeePicture* const Value);
	
protected:
	bool __fastcall HasImage();
	bool __fastcall HasGradient();
	void __fastcall InitColor(const System::Uitypes::TColor Value);
	
public:
	__fastcall virtual TTeeBrush(const System::Classes::TNotifyEvent OnChangeEvent);
	__fastcall virtual ~TTeeBrush();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Clear();
	
__published:
	__property System::Uitypes::TColor BackColor = {read=FBackColor, write=SetBackColor, default=536870911};
	__property Color = {stored=IsColorStored, default=16777215};
	__property TTeeGradient* Gradient = {read=GetGradient, write=SetGradient};
	__property THatchStyle HatchStyle = {read=FHatchStyle, write=SetHatchStyle, default=0};
	__property TTeePicture* Image = {read=GetImage, write=SetImage, stored=HasImage};
};


typedef TTeeBrush TChartBrush;

enum DECLSPEC_DENUM TCanvasZoomText : unsigned char { ztManual, ztNo, ztAuto };

typedef void __fastcall (__closure *TTeeView3DScrolled)(bool IsHoriz);

typedef void __fastcall (__closure *TTeeView3DChangedZoom)(int NewZoom);

class PASCALIMPLEMENTATION TView3DOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	double FElevation;
	int FFontZoom;
	double FHorizOffset;
	bool FOrthogonal;
	int FOrthoAngle;
	int FPerspective;
	double FRotation;
	double FTilt;
	double FVertOffset;
	double FZOffset;
	double FZoom;
	TCanvasZoomText FZoomText;
	TTeeView3DScrolled FOnScrolled;
	TTeeView3DChangedZoom FOnChangedZoom;
	Vcl::Controls::TWinControl* FParent;
	int __fastcall GetElevation();
	int __fastcall GetHorizOffset();
	int __fastcall GetRotation();
	int __fastcall GetTilt();
	int __fastcall GetVertOffset();
	int __fastcall GetZoom();
	void __fastcall SetBooleanProperty(bool &Variable, bool Value);
	void __fastcall SetElevationInteger(const int Value);
	void __fastcall SetElevation(const double Value);
	void __fastcall SetFontZoom(int Value);
	void __fastcall SetHorizInteger(const int Value);
	void __fastcall SetHorizOffset(const double Value);
	void __fastcall SetIntegerProperty(int &Variable, int Value);
	void __fastcall SetOrthoAngle(int Value);
	void __fastcall SetOrthogonal(bool Value);
	void __fastcall SetPerspective(int Value);
	void __fastcall SetRotationInteger(const int Value);
	void __fastcall SetRotation(const double Value)/* overload */;
	void __fastcall SetTilt(const double Value);
	void __fastcall SetTiltInteger(int Value);
	void __fastcall SetVertInteger(const int Value);
	void __fastcall SetVertOffset(const double Value);
	void __fastcall SetZOffset(const double Value);
	void __fastcall SetZoomInteger(const int Value);
	void __fastcall SetZoom(const double Value);
	void __fastcall SetZoomText(const TCanvasZoomText Value);
	
protected:
	double __fastcall CalcOrthoRatio();
	
public:
	__fastcall TView3DOptions(Vcl::Controls::TWinControl* const AParent);
	bool __fastcall BackFaced();
	void __fastcall Repaint();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property Vcl::Controls::TWinControl* Parent = {read=FParent, write=FParent};
	__property double ElevationFloat = {read=FElevation, write=SetElevation};
	__property double HorizOffsetFloat = {read=FHorizOffset, write=SetHorizOffset};
	__property double RotationFloat = {read=FRotation, write=SetRotation};
	__property double TiltFloat = {read=FTilt, write=SetTilt};
	__property double VertOffsetFloat = {read=FVertOffset, write=SetVertOffset};
	__property double ZOffset = {read=FZOffset, write=SetZOffset};
	__property double ZoomFloat = {read=FZoom, write=SetZoom};
	__property TTeeView3DChangedZoom OnChangedZoom = {read=FOnChangedZoom, write=FOnChangedZoom};
	__property TTeeView3DScrolled OnScrolled = {read=FOnScrolled, write=FOnScrolled};
	
__published:
	__property int Elevation = {read=GetElevation, write=SetElevationInteger, default=345};
	__property int FontZoom = {read=FFontZoom, write=SetFontZoom, default=100};
	__property int HorizOffset = {read=GetHorizOffset, write=SetHorizInteger, default=0};
	__property int OrthoAngle = {read=FOrthoAngle, write=SetOrthoAngle, default=45};
	__property bool Orthogonal = {read=FOrthogonal, write=SetOrthogonal, default=1};
	__property int Perspective = {read=FPerspective, write=SetPerspective, default=15};
	__property int Rotation = {read=GetRotation, write=SetRotationInteger, default=345};
	__property int Tilt = {read=GetTilt, write=SetTiltInteger, default=0};
	__property int VertOffset = {read=GetVertOffset, write=SetVertInteger, default=0};
	__property int Zoom = {read=GetZoom, write=SetZoomInteger, default=100};
	__property TCanvasZoomText ZoomText = {read=FZoomText, write=SetZoomText, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TView3DOptions() { }
	
};


typedef System::Int8 TTeeTransparency;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeBlend : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	Vcl::Graphics::TBitmap* FBitmap;
	TTeeCanvas* FCanvas;
	System::Types::TRect FRect;
	bool IValidSize;
	
public:
	__fastcall TTeeBlend(TTeeCanvas* const ACanvas, const System::Types::TRect &R);
	__fastcall virtual ~TTeeBlend();
	void __fastcall DoBlend(TTeeTransparency Transparency);
	void __fastcall SetRectangle(const System::Types::TRect &R);
	__property Vcl::Graphics::TBitmap* Bitmap = {read=FBitmap};
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef System::DynamicArray<System::Types::TPoint> TPointArray;

typedef System::StaticArray<System::Types::TPoint, 4> TFourPoints;

typedef System::StaticArray<_POINTFLOAT, 4> TFourPointFloats;

enum DECLSPEC_DENUM TShadowDirection : unsigned char { sdLeftTop, sdLeftBottom, sdRightTop, sdRightBottom, sdCenter };

class PASCALIMPLEMENTATION TTeeShadow : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FClip;
	System::Uitypes::TColor FColor;
	TShadowDirection FDirection;
	int FHorizSize;
	bool FSmooth;
	int FSmoothBlur;
	TTeeTransparency FTransparency;
	int FVertSize;
	bool FVisible;
	System::Classes::TNotifyEvent IOnChange;
	TTeeBlend* IBlend;
	System::Byte ITransp;
	void __fastcall Changed();
	void __fastcall InternalDrawSmooth(TCanvas3D* const ACanvas, const System::Types::TRect &Rect, bool Ellipse, int RoundSize, const System::Types::TPoint *P, const int P_High, int DonutPercent = 0x0, const double StartAngle = 0.000000E+00, const double EndAngle = 0.000000E+00);
	void __fastcall FinishBlending(TTeeCanvas* const ACanvas);
	int __fastcall GetSize();
	bool __fastcall IsColorStored();
	bool __fastcall IsHorizStored();
	bool __fastcall IsVertStored();
	bool __fastcall IsVisibleStored();
	bool __fastcall PrepareCanvas(TCanvas3D* const ACanvas, const System::Types::TRect &R, int Angle = 0x0);
	void __fastcall SetClip(const bool Value);
	void __fastcall SetColor(System::Uitypes::TColor Value);
	void __fastcall SetDirection(const TShadowDirection Value);
	void __fastcall SetHorizSize(int Value);
	void __fastcall SetIntegerProperty(int &Variable, const int Value);
	void __fastcall SetSize(const int Value);
	void __fastcall SetSmooth(const bool Value);
	void __fastcall SetSmoothBlur(const int Value);
	void __fastcall SetTransparency(TTeeTransparency Value);
	void __fastcall SetVertSize(int Value);
	void __fastcall SetVisible(bool Value);
	
protected:
	System::Uitypes::TColor DefaultColor;
	int DefaultSize;
	bool DefaultVisible;
	void __fastcall InitValues(bool AVisible, System::Uitypes::TColor AColor, int ASize);
	System::Types::TRect __fastcall OffsetRectangle(const System::Types::TRect &R);
	void __fastcall RectToFourPoints(const System::Types::TRect &ARect, const double Angle, /* out */ TFourPoints &P);
	
public:
	int BlurSize;
	double ZPosition;
	__fastcall TTeeShadow(System::Classes::TNotifyEvent AOnChange);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Draw(TCanvas3D* const ACanvas, const System::Types::TPoint *P, const int P_High)/* overload */;
	void __fastcall Draw(TCanvas3D* const ACanvas, const System::Types::TPoint *P, const int P_High, int Count)/* overload */;
	void __fastcall Draw(TCanvas3D* const ACanvas, const System::Types::TRect &Rect, int RoundSize = 0x0, int Angle = 0x0)/* overload */;
	virtual void __fastcall DrawEllipse(TCanvas3D* const ACanvas, const System::Types::TRect &Rect, int DonutPercent = 0x0, const double StartAngle = 0.000000E+00, const double EndAngle = 3.600000E+02);
	void __fastcall Hide();
	bool __fastcall ShouldDraw();
	void __fastcall Show();
	__property int Size = {read=GetSize, write=SetSize, nodefault};
	
__published:
	__property bool Clip = {read=FClip, write=SetClip, default=0};
	__property System::Uitypes::TColor Color = {read=FColor, write=SetColor, stored=IsColorStored, nodefault};
	__property TShadowDirection Direction = {read=FDirection, write=SetDirection, default=3};
	__property int HorizSize = {read=FHorizSize, write=SetHorizSize, stored=IsHorizStored, nodefault};
	__property bool Smooth = {read=FSmooth, write=SetSmooth, default=1};
	__property int SmoothBlur = {read=FSmoothBlur, write=SetSmoothBlur, default=0};
	__property TTeeTransparency Transparency = {read=FTransparency, write=SetTransparency, default=50};
	__property int VertSize = {read=FVertSize, write=SetVertSize, stored=IsVertStored, nodefault};
	__property bool Visible = {read=FVisible, write=SetVisible, stored=IsVisibleStored, nodefault};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTeeShadow() { }
	
};


class PASCALIMPLEMENTATION TTeeEmboss : public TTeeShadow
{
	typedef TTeeShadow inherited;
	
public:
	__fastcall TTeeEmboss(System::Classes::TNotifyEvent AOnChange);
	
__published:
	__property Direction = {default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTeeEmboss() { }
	
};


class PASCALIMPLEMENTATION TTeeGradientColor : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::Uitypes::TColor FColor;
	double FOffset;
	TTeeTransparency FTransp;
	TTeeTransparency __fastcall GetTransp();
	bool __fastcall IsTranspStored();
	void __fastcall SetTransp(const TTeeTransparency Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::Uitypes::TColor Color = {read=FColor, write=FColor, default=0};
	__property double Offset = {read=FOffset, write=FOffset};
	__property TTeeTransparency Transparency = {read=GetTransp, write=SetTransp, stored=IsTranspStored, nodefault};
public:
	/* TCollectionItem.Create */ inline __fastcall virtual TTeeGradientColor(System::Classes::TCollection* Collection) : System::Classes::TCollectionItem(Collection) { }
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TTeeGradientColor() { }
	
};


#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeGradientColors : public System::Classes::TOwnedCollection
{
	typedef System::Classes::TOwnedCollection inherited;
	
public:
	TTeeGradientColor* operator[](int Index) { return this->Item[Index]; }
	
private:
	TTeeGradientColor* __fastcall Get(int Index);
	void __fastcall Put(int Index, TTeeGradientColor* const Value);
	
protected:
	virtual void __fastcall Update(System::Classes::TCollectionItem* Item);
	
public:
	HIDESBASE TTeeGradientColor* __fastcall Add(const double AOffset, const System::Uitypes::TColor AColor, TTeeTransparency ATransparency = (TTeeTransparency)(0x0))/* overload */;
	void __fastcall Repaint();
	__property TTeeGradientColor* Item[int Index] = {read=Get, write=Put/*, default*/};
public:
	/* TOwnedCollection.Create */ inline __fastcall TTeeGradientColors(System::Classes::TPersistent* AOwner, System::Classes::TCollectionItemClass ItemClass) : System::Classes::TOwnedCollection(AOwner, ItemClass) { }
	
public:
	/* TCollection.Destroy */ inline __fastcall virtual ~TTeeGradientColors() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

enum DECLSPEC_DENUM TGradientDirection : unsigned char { gdTopBottom, gdBottomTop, gdLeftRight, gdRightLeft, gdFromCenter, gdFromTopLeft, gdFromBottomLeft, gdRadial, gdDiagonalUp, gdDiagonalDown };

class PASCALIMPLEMENTATION TCustomTeeGradient : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FAngle;
	int FBalance;
	TTeeGradientColors* FColors;
	TGradientDirection FDirection;
	int FRadialX;
	int FRadialY;
	bool FStartIsEnd;
	TSubGradient* FSub;
	bool FVisible;
	System::Types::TRectF FCustomTargetRectangle;
	void __fastcall DrawRadial(TTeeCanvas* const Canvas, const System::Types::TRect &Rect);
	void __fastcall DrawRotated(TTeeCanvas* const Canvas, const System::Types::TRect &R);
	void __fastcall DrawSubGradient(TTeeCanvas* const Canvas, const System::Types::TRect &Rect, int RoundRectSize = 0x0);
	TTeeGradientColors* __fastcall GetColors();
	System::Uitypes::TColor __fastcall GetEndColor();
	System::Uitypes::TColor __fastcall GetMidColor();
	System::Uitypes::TColor __fastcall GetStartColor();
	TSubGradient* __fastcall GetSub();
	bool __fastcall IsColorsStored();
	bool __fastcall IsDirectionStored();
	bool __fastcall IsEndStored();
	bool __fastcall IsMidStored();
	bool __fastcall IsStartStored();
	bool __fastcall IsSubStored();
	bool __fastcall IsVisibleStored();
	void __fastcall SetAngle(int Value);
	void __fastcall SetBalance(int Value);
	void __fastcall SetColors(TTeeGradientColors* const Value);
	void __fastcall SetDirection(TGradientDirection Value);
	void __fastcall SetEndColor(System::Uitypes::TColor Value);
	void __fastcall SetIntegerProperty(int &Variable, int Value);
	void __fastcall SetMidColor(System::Uitypes::TColor Value);
	void __fastcall SetRadialX(const int Value);
	void __fastcall SetRadialY(const int Value);
	void __fastcall SetStartColor(System::Uitypes::TColor Value);
	void __fastcall SetSub(TSubGradient* const Value);
	void __fastcall SetVisible(bool Value);
	
protected:
	System::Classes::TNotifyEvent IChanged;
	TGradientDirection IDefDirection;
	System::Uitypes::TColor IDefEnd;
	System::Uitypes::TColor IDefMid;
	System::Uitypes::TColor IDefStart;
	bool IDefVisible;
	System::Uitypes::TColor IMidColor;
	void __fastcall DoChanged();
	void __fastcall InitDefaults();
	void __fastcall InitDirection(const TGradientDirection ADirection);
	
public:
	__fastcall virtual TCustomTeeGradient(System::Classes::TNotifyEvent ChangedEvent);
	__fastcall virtual ~TCustomTeeGradient();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall Draw(TTeeCanvas* const Canvas, const System::Types::TRect &Rect, int RoundRectSize = 0x0)/* overload */;
	void __fastcall Draw(TTeeCanvas* const Canvas, TFourPoints &P)/* overload */;
	void __fastcall Draw(TCanvas3D* const Canvas, TFourPoints &P, int Z)/* overload */;
	void __fastcall Draw(TCanvas3D* const Canvas, TPointArray &P, int Z, bool Is3D)/* overload */;
	void __fastcall ResetColors();
	void __fastcall UseMiddleColor();
	__property System::Classes::TNotifyEvent Changed = {read=IChanged, write=IChanged};
	__property int Angle = {read=FAngle, write=SetAngle, default=0};
	__property System::Types::TRectF CustomTargetRectangle = {read=FCustomTargetRectangle, write=FCustomTargetRectangle, stored=false};
	__property int Balance = {read=FBalance, write=SetBalance, default=50};
	__property TTeeGradientColors* Colors = {read=GetColors, write=SetColors, stored=IsColorsStored};
	__property TGradientDirection Direction = {read=FDirection, write=SetDirection, stored=IsDirectionStored, nodefault};
	__property System::Uitypes::TColor EndColor = {read=GetEndColor, write=SetEndColor, stored=IsEndStored, nodefault};
	__property System::Uitypes::TColor MidColor = {read=GetMidColor, write=SetMidColor, stored=IsMidStored, nodefault};
	__property int RadialX = {read=FRadialX, write=SetRadialX, default=0};
	__property int RadialY = {read=FRadialY, write=SetRadialY, default=0};
	__property System::Uitypes::TColor StartColor = {read=GetStartColor, write=SetStartColor, stored=IsStartStored, nodefault};
	__property bool StartIsEnd = {read=FStartIsEnd, write=FStartIsEnd, default=0};
	__property TSubGradient* SubGradient = {read=GetSub, write=SetSub, stored=IsSubStored};
	__property bool Visible = {read=FVisible, write=SetVisible, stored=IsVisibleStored, nodefault};
};


class PASCALIMPLEMENTATION TSubGradient : public TCustomTeeGradient
{
	typedef TCustomTeeGradient inherited;
	
private:
	TTeeTransparency FTransparency;
	void __fastcall SetTransparency(const TTeeTransparency Value);
	
__published:
	__property Angle = {default=0};
	__property Balance = {default=50};
	__property Colors;
	__property Direction;
	__property EndColor;
	__property MidColor;
	__property RadialX = {default=0};
	__property RadialY = {default=0};
	__property StartColor;
	__property TTeeTransparency Transparency = {read=FTransparency, write=SetTransparency, default=50};
	__property Visible;
public:
	/* TCustomTeeGradient.Create */ inline __fastcall virtual TSubGradient(System::Classes::TNotifyEvent ChangedEvent) : TCustomTeeGradient(ChangedEvent) { }
	/* TCustomTeeGradient.Destroy */ inline __fastcall virtual ~TSubGradient() { }
	
};


class PASCALIMPLEMENTATION TTeeGradient : public TCustomTeeGradient
{
	typedef TCustomTeeGradient inherited;
	
__published:
	__property Angle = {default=0};
	__property Balance = {default=50};
	__property Colors;
	__property Direction;
	__property EndColor;
	__property MidColor;
	__property RadialX = {default=0};
	__property RadialY = {default=0};
	__property StartColor;
	__property SubGradient;
	__property Visible;
public:
	/* TCustomTeeGradient.Create */ inline __fastcall virtual TTeeGradient(System::Classes::TNotifyEvent ChangedEvent) : TCustomTeeGradient(ChangedEvent) { }
	/* TCustomTeeGradient.Destroy */ inline __fastcall virtual ~TTeeGradient() { }
	
};


enum DECLSPEC_DENUM TFontQuality : unsigned char { fqBest, fqNormal, fqDefault, fqClearType };

class PASCALIMPLEMENTATION TTeeFont : public Vcl::Graphics::TFont
{
	typedef Vcl::Graphics::TFont inherited;
	
private:
	TTeeBrush* FBrush;
	float FSizeDecimals;
	bool FDefault;
	double FDepth;
	int FInterCharSize;
	TTeeHiddenPen* FOutLine;
	TFontQuality FQuality;
	System::Uitypes::TColor IDefColor;
	System::Uitypes::TFontStyles IDefStyle;
	TTeeEmboss* __fastcall GetEmboss();
	TTeeGradient* __fastcall GetGradient();
	TTeeHiddenPen* __fastcall GetOutLine();
	TTeePicture* __fastcall GetPicture();
	TTeeShadow* __fastcall GetShadow();
	bool __fastcall IsColorStored();
	bool __fastcall IsDepthStored();
	bool __fastcall IsHeightStored();
	bool __fastcall IsNameStored();
	bool __fastcall IsStyleStored();
	void __fastcall SetBrush(TTeeBrush* const Value);
	void __fastcall SetDefault(const bool Value);
	void __fastcall SetDepth(const double Value);
	void __fastcall SetEmboss(TTeeEmboss* const Value);
	void __fastcall SetGradient(TTeeGradient* const Value);
	void __fastcall SetInterCharSize(int Value);
	void __fastcall SetOutLine(TTeeHiddenPen* const Value);
	void __fastcall SetPicture(TTeePicture* const Value);
	HIDESBASE void __fastcall SetQuality(const TFontQuality Value);
	void __fastcall SetShadow(TTeeShadow* const Value);
	float __fastcall GetSizeFloat();
	void __fastcall SetSizeFloat(const float Value);
	bool __fastcall IsSizeFloatStored();
	
protected:
	TTeeEmboss* FEmboss;
	TTeeShadow* FShadow;
	void __fastcall InitColor(const System::Uitypes::TColor Value);
	void __fastcall InitStyle(const System::Uitypes::TFontStyles Value);
	
public:
	__fastcall TTeeFont(System::Classes::TNotifyEvent ChangedEvent);
	__fastcall virtual ~TTeeFont();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property bool DefaultFont = {read=FDefault, write=SetDefault, default=0};
	__property Charset = {default=1};
	__property Height = {stored=IsHeightStored};
	__property Color = {stored=IsColorStored};
	__property Name = {stored=IsNameStored, default=0};
	__property float SizeFloat = {read=GetSizeFloat, write=SetSizeFloat, stored=IsSizeFloatStored};
	__property TTeeBrush* Brush = {read=FBrush, write=SetBrush};
	__property double Depth = {read=FDepth, write=SetDepth, stored=IsDepthStored};
	__property TTeeEmboss* Emboss = {read=GetEmboss, write=SetEmboss};
	__property TTeeGradient* Gradient = {read=GetGradient, write=SetGradient, stored=false};
	__property int InterCharSize = {read=FInterCharSize, write=SetInterCharSize, default=0};
	__property TTeeHiddenPen* OutLine = {read=GetOutLine, write=SetOutLine};
	__property TTeePicture* Picture = {read=GetPicture, write=SetPicture, stored=false};
	__property TFontQuality Quality = {read=FQuality, write=SetQuality, default=2};
	__property TTeeShadow* Shadow = {read=GetShadow, write=SetShadow};
	__property Style = {stored=IsStyleStored};
};


enum DECLSPEC_DENUM TCanvasStretchQuality : unsigned char { sqHigh, sqLow };

enum DECLSPEC_DENUM TCanvasBackMode : unsigned char { cbmNone, cbmTransparent, cbmOpaque };

typedef int TCanvasTextAlign;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeCachedObject : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	/* TObject.Create */ inline __fastcall TTeeCachedObject() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTeeCachedObject() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

typedef double TChartValue;

typedef HDC TTeeCanvasHandle;

enum DECLSPEC_DENUM TCanvasStyle : unsigned char { csGDI, csGDIPlus, csOpenGL, csHTML5 };

class PASCALIMPLEMENTATION TTeeCanvas : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<System::Byte> _TTeeCanvas__1;
	
	
private:
	TTeeBrush* FBrush;
	Vcl::Graphics::TCanvas* FCanvas;
	TTeeFont* FFont;
	TTeePen* FPen;
	TCanvasStretchQuality FStretchQuality;
	bool FMetafiling;
	bool IChangingFont;
	_TTeeCanvas__1 ITranspStack;
	void __fastcall AssignFontSize(TTeeFont* const AFont, const float ASize);
	void __fastcall ChangedBrush(System::TObject* Sender);
	void __fastcall ChangedFont(System::TObject* Sender);
	void __fastcall ChangedPen(System::TObject* Sender);
	int __fastcall GetFontHeight();
	TTeeGradient* __fastcall GetGradient();
	void __fastcall InternalDark(const System::Uitypes::TColor AColor, System::Byte Quantity);
	
protected:
	System::Types::TRect FBounds;
	double FFontZoom;
	bool FSupportsAlpha;
	bool FSupportsConcave;
	bool IZoomText;
	bool IUseTextCenter;
	System::Types::TPoint ITextCenter;
	System::Byte Transparency;
	virtual void __fastcall SetCanvas(Vcl::Graphics::TCanvas* const ACanvas);
	void __fastcall CalcArcAngles(const int X1, const int Y1, const int X2, const int Y2, const int X3, const int Y3, const int X4, const int Y4, /* out */ float &StartAngle, /* out */ float &EndAngle);
	virtual void __fastcall DoChangedBrush(TTeeBrush* const ABrush);
	virtual void __fastcall DoChangedFont();
	virtual void __fastcall DoChangedPen();
	virtual void __fastcall FastLineTo(const int X, const int Y);
	virtual System::Uitypes::TColor __fastcall GetBackColor() = 0 ;
	virtual TCanvasBackMode __fastcall GetBackMode() = 0 ;
	virtual HDC __fastcall GetHandle() = 0 ;
	virtual bool __fastcall GetIsNoBMPGrid() = 0 ;
	virtual bool __fastcall GetMonochrome() = 0 ;
	virtual System::Uitypes::TColor __fastcall GetPixel(int x, int y) = 0 ;
	virtual bool __fastcall GetSupportsFullRotation() = 0 ;
	virtual bool __fastcall GetSupportsXORMode() = 0 ;
	virtual int __fastcall GetTextAlign() = 0 ;
	virtual bool __fastcall GetUseBuffer() = 0 ;
	void __fastcall InternalDrawCheck(int x, int y, bool Checked, const System::Uitypes::TColor ABackColor, bool CheckBox = true);
	bool __fastcall IsGradientVisible();
	virtual bool __fastcall IsAliased();
	virtual TCanvasStyle __fastcall CanvasStyle() = 0 ;
	void __fastcall PopTransp();
	void __fastcall PushTransp();
	virtual void __fastcall SetAntiAlias(const bool Value);
	virtual void __fastcall SetBackColor(const System::Uitypes::TColor Value) = 0 ;
	virtual void __fastcall SetBackMode(const TCanvasBackMode Value) = 0 ;
	virtual void __fastcall SetFastLine(const bool Active) = 0 ;
	virtual void __fastcall SetInterCharSize(int ASize);
	virtual void __fastcall SetMonochrome(bool Value) = 0 ;
	virtual void __fastcall SetPenMode(TTeePen* const APen);
	virtual void __fastcall SetPixel(int X, int Y, System::Uitypes::TColor Value) = 0 ;
	virtual void __fastcall SetTextAlign(const int Value) = 0 ;
	virtual void __fastcall SetUseBuffer(bool Value) = 0 ;
	virtual TPointFloatArray __fastcall Tessellate(const double *X, const int X_High, const double *Y, const int Y_High);
	System::Types::TSize __fastcall TextExtent(const System::WideString Text);
	
public:
	__fastcall TTeeCanvas();
	__fastcall virtual ~TTeeCanvas();
	void __fastcall AssignBrush(TTeeBrush* const ABrush)/* overload */;
	void __fastcall AssignBrush(TTeeBrush* const ABrush, System::Uitypes::TColor ABackColor)/* overload */;
	virtual void __fastcall AssignBrush(TTeeBrush* const ABrush, System::Uitypes::TColor AColor, System::Uitypes::TColor ABackColor)/* overload */;
	void __fastcall AssignBrushColor _DEPRECATED_ATTRIBUTE1("Please use AssignBrush method.") (TTeeBrush* const ABrush, System::Uitypes::TColor AColor, System::Uitypes::TColor ABackColor);
	void __fastcall AssignVisiblePen(TTeePen* const APen);
	virtual void __fastcall AssignVisiblePenColor(TTeePen* const APen, System::Uitypes::TColor AColor);
	void __fastcall AssignFont(TTeeFont* const AFont);
	void __fastcall ResetState();
	virtual TTeeBlend* __fastcall BeginBlending(const System::Types::TRect &R, TTeeTransparency Transparency);
	virtual void __fastcall EndBlending(TTeeBlend* const Blend);
	static System::Byte __fastcall ColorAlpha(const System::Uitypes::TColor AColor);
	static System::Uitypes::TColor __fastcall ColorFrom(const System::Uitypes::TColor AColor, const System::Byte Alpha);
	virtual void __fastcall Arc(const int Left, const int Top, const int Right, const int Bottom, const int StartX, const int StartY, const int EndX, const int EndY) = 0 /* overload */;
	virtual void __fastcall Arc(const int Left, const int Top, const int Right, const int Bottom, const float StartAngle, const float EndAngle)/* overload */;
	void __fastcall Arc(const System::Types::TRect &R, const float StartAngle, const float EndAngle)/* overload */;
	virtual void __fastcall ArcTo(const int X1, const int Y1, const int X2, const int Y2, const int X3, const int Y3, const int X4, const int Y4, const bool ClockWise = false);
	void __fastcall Arrow(bool Filled, const double ArrowPercent, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight)/* overload */;
	virtual void __fastcall Donut(int XCenter, int YCenter, int XRadius, int YRadius, const double StartAngle, const double EndAngle, const double HolePercent) = 0 /* overload */;
	virtual void __fastcall Draw(int X, int Y, Vcl::Graphics::TGraphic* const Graphic) = 0 ;
	void __fastcall Ellipse(const System::Types::TRect &R)/* overload */;
	virtual void __fastcall Ellipse(const int X1, const int Y1, const int X2, const int Y2) = 0 /* overload */;
	virtual void __fastcall FillRect(const System::Types::TRect &Rect) = 0 ;
	virtual void __fastcall Frame3D(System::Types::TRect &Rect, System::Uitypes::TColor TopColor, System::Uitypes::TColor BottomColor, int Width);
	TPointArray __fastcall GetArrowPoints(const float ArrowPercent, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight)/* overload */;
	static bool __fastcall IsConvexPolygon(const TPointArray P)/* overload */;
	static bool __fastcall IsConvexPolygon(const TPointFloatArray P)/* overload */;
	virtual void __fastcall LineTo(const int X, const int Y) = 0 /* overload */;
	void __fastcall LineTo(const System::Types::TPoint &P)/* overload */;
	virtual void __fastcall LineTo(const _POINTFLOAT &P)/* overload */;
	virtual void __fastcall MoveTo(const int X, const int Y) = 0 /* overload */;
	void __fastcall MoveTo(const System::Types::TPoint &P)/* overload */;
	virtual void __fastcall MoveTo(const _POINTFLOAT &P)/* overload */;
	virtual void __fastcall Pie(const System::Types::TRect &R, const double StartAngle, const double EndAngle) = 0 /* overload */;
	virtual void __fastcall Pie(int X1, int Y1, int X2, int Y2, int X3, int Y3, int X4, int Y4) = 0 /* overload */;
	void __fastcall Rectangle(const System::Types::TRect &R)/* overload */;
	virtual void __fastcall Rectangle(const int X0, const int Y0, const int X1, const int Y1) = 0 /* overload */;
	virtual void __fastcall RoundRect(int X1, int Y1, int X2, int Y2, int X3, int Y3) = 0 /* overload */;
	void __fastcall RoundRect(const System::Types::TRect &R, int X, int Y, TTeeCorners* const ACorners = (TTeeCorners*)(0x0))/* overload */;
	virtual void __fastcall StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* const Graphic) = 0 /* overload */;
	void __fastcall TextOut(const int X, const int Y, const System::UnicodeString Text, bool AllowHtml)/* overload */;
	virtual void __fastcall TextOut(int X, int Y, const System::UnicodeString Text) = 0 /* overload */;
	virtual int __fastcall TextHeight(const System::UnicodeString St)/* overload */;
	virtual _POINTFLOAT __fastcall TextSize(const System::UnicodeString St)/* overload */;
	virtual int __fastcall TextWidth(const System::UnicodeString St)/* overload */;
	virtual int __fastcall TextHeight(const System::WideString St)/* overload */;
	virtual _POINTFLOAT __fastcall TextSize(const System::WideString St)/* overload */;
	virtual int __fastcall TextWidth(const System::WideString St)/* overload */;
	virtual void __fastcall ClipRectangle(const System::Types::TRect &Rect) = 0 /* overload */;
	virtual void __fastcall ClipRectangle(const System::Types::TRect &Rect, int RoundX, int RoundY)/* overload */;
	virtual void __fastcall ClipEllipse(const System::Types::TRect &Rect, bool Inverted = false);
	virtual void __fastcall ClipPolygon(const System::Types::TPoint *Points, const int Points_High, int NumPoints, bool DiffRegion = false);
	static bool __fastcall ConvexHull(TPointArray &Points);
	TTeeBasePath* __fastcall CreatePath()/* overload */;
	virtual TTeeBasePath* __fastcall CreatePath(const TPointFloatArray Points, const TPathPointTypes Types)/* overload */;
	virtual void __fastcall Curve(const System::Types::TPoint *Points, const int Points_High, const float Tension, bool Closed, const float Z);
	virtual void __fastcall DoHorizLine(const int X0, const int X1, const int Y);
	void __fastcall DoRectangle _DEPRECATED_ATTRIBUTE1("Please use Rectangle method.") (const System::Types::TRect &Rect);
	virtual void __fastcall DoVertLine(const int X, const int Y0, const int Y1);
	virtual void __fastcall DrawCheckBox(int x, int y, bool Checked, const System::Uitypes::TColor ABackColor, bool CheckBox = true);
	virtual void __fastcall EraseBackground(const System::Types::TRect &Rect) = 0 ;
	virtual void __fastcall GradientFill(const System::Types::TRect &Rect, System::Uitypes::TColor StartColor, System::Uitypes::TColor EndColor, TGradientDirection Direction, int Balance = 0x32, int RadialX = 0x0, int RadialY = 0x0) = 0 /* overload */;
	virtual void __fastcall Invalidate() = 0 ;
	virtual void __fastcall Line(const int X0, const int Y0, const int X1, const int Y1)/* overload */;
	void __fastcall Line(const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint)/* overload */;
	virtual void __fastcall Polyline(const System::Types::TPoint *Points, const int Points_High) = 0 /* overload */;
	virtual void __fastcall PolylineFloat(const _POINTFLOAT *Points, const int Points_High) = 0 /* overload */;
	virtual void __fastcall Polygon(const System::Types::TPoint *Points, const int Points_High) = 0 ;
	virtual void __fastcall PolygonConcave(const System::Types::TPoint *Points, const int Points_High)/* overload */;
	virtual void __fastcall PolygonFloat(const _POINTFLOAT *Points, const int Points_High) = 0 ;
	virtual void __fastcall RotateLabel(int x, int y, const System::UnicodeString St, double RotDegree, bool AllowHTML = false) = 0 ;
	static System::Uitypes::TColor __fastcall SystemColor(const System::Uitypes::TColor AColor);
	virtual void __fastcall UnClipRectangle() = 0 ;
	__property System::Uitypes::TColor BackColor = {read=GetBackColor, write=SetBackColor, nodefault};
	__property TCanvasBackMode BackMode = {read=GetBackMode, write=SetBackMode, nodefault};
	__property System::Types::TRect Bounds = {read=FBounds};
	__property TTeeBrush* Brush = {read=FBrush};
	__property TTeeFont* Font = {read=FFont};
	__property int FontHeight = {read=GetFontHeight, nodefault};
	__property double FontZoom = {read=FFontZoom, write=FFontZoom};
	__property TTeeGradient* Gradient = {read=GetGradient};
#ifndef _WIN64
	__property HDC Handle = {read=GetHandle, nodefault};
#else /* _WIN64 */
	__property HDC Handle = {read=GetHandle};
#endif /* _WIN64 */
	__property bool IsNoBMPGrid = {read=GetIsNoBMPGrid, nodefault};
	__property bool Metafiling = {read=FMetafiling, write=FMetafiling, nodefault};
	__property bool Monochrome = {read=GetMonochrome, write=SetMonochrome, nodefault};
	__property TTeePen* Pen = {read=FPen};
	__property System::Uitypes::TColor Pixels[int X][int Y] = {read=GetPixel, write=SetPixel};
	__property Vcl::Graphics::TCanvas* ReferenceCanvas = {read=FCanvas, write=SetCanvas};
	__property TCanvasStretchQuality StretchDrawQuality = {read=FStretchQuality, write=FStretchQuality, default=0};
	__property bool SupportsAlpha = {read=FSupportsAlpha, nodefault};
	__property bool SupportsConcave = {read=FSupportsConcave, nodefault};
	__property bool SupportsFullRotation = {read=GetSupportsFullRotation, nodefault};
	__property bool SupportsXORMode = {read=GetSupportsXORMode, nodefault};
	__property int TextAlign = {read=GetTextAlign, write=SetTextAlign, nodefault};
	__property bool UseBuffer = {read=GetUseBuffer, write=SetUseBuffer, nodefault};
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TFloatPoint
{
public:
	float X;
	float Y;
};
#pragma pack(pop)


typedef System::Math::Vectors::TPoint3D TPoint3DFloat;

typedef System::DynamicArray<System::Math::Vectors::TPoint3D> TPoint3DArray;

class PASCALIMPLEMENTATION TFloatXY : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	float FX;
	float FY;
	bool __fastcall IsXStored();
	bool __fastcall IsYStored();
	void __fastcall SetSingleProperty(float &Variable, const float Value);
	
protected:
	System::Classes::TNotifyEvent FOnChange;
	float IDefaultX;
	float IDefaultY;
	void __fastcall SetX(const float Value);
	void __fastcall SetY(const float Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	_POINTFLOAT __fastcall Point();
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property float X = {read=FX, write=SetX, stored=IsXStored};
	__property float Y = {read=FY, write=SetY, stored=IsYStored};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TFloatXY() { }
	
public:
	/* TObject.Create */ inline __fastcall TFloatXY() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TFloatXYZ : public TFloatXY
{
	typedef TFloatXY inherited;
	
private:
	float FZ;
	bool __fastcall IsZStored();
	
protected:
	float IDefaultZ;
	void __fastcall SetZ(const float Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	HIDESBASE System::Math::Vectors::TPoint3D __fastcall Point();
	
__published:
	__property float Z = {read=FZ, write=SetZ, stored=IsZStored};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TFloatXYZ() { }
	
public:
	/* TObject.Create */ inline __fastcall TFloatXYZ() : TFloatXY() { }
	
};


#pragma pack(push,1)
struct DECLSPEC_DRECORD TPoint3D
{
public:
	int x;
	int y;
	int z;
};
#pragma pack(pop)


typedef System::StaticArray<TPoint3D, 3> TTrianglePoints3D;

typedef System::StaticArray<System::Uitypes::TColor, 3> TTriangleColors3D;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TTriangleIndexes
{
public:
	int Point0;
	int Point1;
	int Point2;
};
#pragma pack(pop)


struct DECLSPEC_DRECORD TSurfaceVertex
{
public:
	System::Math::Vectors::TPoint3D P0;
	System::Math::Vectors::TPoint3D P1;
	System::Math::Vectors::TPoint3D N0;
	System::Math::Vectors::TPoint3D N1;
	System::Uitypes::TColor C0;
	System::Uitypes::TColor C1;
	bool Flag;
};


typedef void __fastcall (__closure *TTeeCanvasCalcPoints)(int x, int z, bool CalcColors, /* out */ TSurfaceVertex &V);

typedef void __fastcall (__closure *TTeeCanvasTriPoints)(int Index, /* out */ TTrianglePoints3D &Points, /* out */ TTriangleColors3D &Colors, /* out */ TTriangleIndexes &Indexes);

enum DECLSPEC_DENUM TTeeCanvasSurfaceStyle : unsigned char { tcsSolid, tcsWire, tcsDot };

enum DECLSPEC_DENUM TCanvas3DPlane : unsigned char { cpX, cpY, cpZ };

typedef System::StaticArray<System::Types::TPoint, 3> TTrianglePoints;

class PASCALIMPLEMENTATION TPointBlock : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::Classes::TNotifyEvent FOnChanged;
	
protected:
	TVisualBlock* IOwner;
	void __fastcall DoChanged();
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TPointBlock() { }
	
public:
	/* TObject.Create */ inline __fastcall TPointBlock() : System::Classes::TPersistent() { }
	
};


class PASCALIMPLEMENTATION TPointXYFloat : public TPointBlock
{
	typedef TPointBlock inherited;
	
private:
	double IDefault;
	float __fastcall GetX();
	float __fastcall GetY();
	bool __fastcall IsXStored();
	bool __fastcall IsYStored();
	void __fastcall ReadXZero(System::Classes::TReader* Reader);
	void __fastcall ReadYZero(System::Classes::TReader* Reader);
	void __fastcall SetX(const float Value);
	void __fastcall SetY(const float Value);
	void __fastcall WriteXZero(System::Classes::TWriter* Writer);
	void __fastcall WriteYZero(System::Classes::TWriter* Writer);
	
protected:
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall InitDefault(const double Value);
	
public:
	_POINTFLOAT Point;
	__fastcall virtual TPointXYFloat(TVisualBlock* const AOwner, const float AValue, const System::Classes::TNotifyEvent ChangedEvent);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property float X = {read=GetX, write=SetX, stored=IsXStored};
	__property float Y = {read=GetY, write=SetY, stored=IsYStored};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TPointXYFloat() { }
	
};


class PASCALIMPLEMENTATION TPointXYZFloat : public TPointBlock
{
	typedef TPointBlock inherited;
	
private:
	float IDefault;
	float __fastcall GetValue();
	float __fastcall GetX();
	float __fastcall GetY();
	float __fastcall GetZ();
	bool __fastcall IsXStored();
	bool __fastcall IsYStored();
	bool __fastcall IsZStored();
	void __fastcall ReadZZero(System::Classes::TReader* Reader);
	void __fastcall SetValue(const float Value);
	void __fastcall SetX(const float Value);
	void __fastcall SetY(const float Value);
	void __fastcall SetZ(const float Value);
	void __fastcall WriteZZero(System::Classes::TWriter* Writer);
	
protected:
	virtual void __fastcall DefineProperties(System::Classes::TFiler* Filer);
	void __fastcall InitDefault(const float Value);
	
public:
	System::Math::Vectors::TPoint3D Point;
	__fastcall virtual TPointXYZFloat(TVisualBlock* const AOwner, const double AValue, const System::Classes::TNotifyEvent ChangedEvent);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	TPoint3D __fastcall AsRound();
	void __fastcall SetPoint(const float X, const float Y, const float Z)/* overload */;
	void __fastcall SetPoint(const System::Math::Vectors::TPoint3D &Value)/* overload */;
	
__published:
	__property float Value = {read=GetValue, write=SetValue, stored=false};
	__property float X = {read=GetX, write=SetX, stored=IsXStored};
	__property float Y = {read=GetY, write=SetY, stored=IsYStored};
	__property float Z = {read=GetZ, write=SetZ, stored=IsZStored};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TPointXYZFloat() { }
	
};


class PASCALIMPLEMENTATION TVisualBlock : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	TPointXYZFloat* FLocation;
	TPointXYZFloat* FSize;
	void __fastcall SetLocation(TPointXYZFloat* const Value);
	void __fastcall SetSize(TPointXYZFloat* const Value);
	
protected:
	bool IsCloneable;
	virtual void __fastcall AddPathPoint(const float X, const float Y, const System::Uitypes::TColor AColor = (System::Uitypes::TColor)(0x20000000));
	virtual void __fastcall ClearPath();
	void __fastcall SetBounds(const System::Types::TRect &R, const float Z0, const float Z1, const int Height);
	virtual void __fastcall SetFormatting(TTeePen* const APen, TTeeBrush* const ABrush, bool SetBrushImage, System::Uitypes::TColor AColor, System::Byte ATransparency) = 0 ;
	virtual void __fastcall SizeChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TVisualBlock(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TVisualBlock();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	virtual void __fastcall Repaint() = 0 ;
	virtual Vcl::Controls::TControl* __fastcall Editor(System::Classes::TComponent* const AOwner, bool Embeddable = false) = 0 ;
	
__published:
	__property TPointXYZFloat* Location = {read=FLocation, write=SetLocation};
	__property TPointXYZFloat* Size = {read=FSize, write=SetSize};
};


enum DECLSPEC_DENUM TEdgeStyle : unsigned char { edFlat, edCurved, edNone };

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TTeeTransform : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	bool Enabled;
	System::Math::Vectors::TPoint3D Origin;
	System::Math::Vectors::TPoint3D Translate;
	float Rotate;
	System::Math::Vectors::TPoint3D Scale;
	bool Clip;
	System::Types::TRect Bounds;
public:
	/* TObject.Create */ inline __fastcall TTeeTransform() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTeeTransform() { }
	
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TCanvas3D : public TTeeCanvas
{
	typedef TTeeCanvas inherited;
	
private:
	int IDisabledRotation;
	TPointFloatArray __fastcall Calc3DPointsFloat(const _POINTFLOAT *Points, const int Points_High, int Z);
	
protected:
	TView3DOptions* F3DOptions;
	bool FIsNoBMPGrid;
	bool FIsOrthogonal;
	TTeeTransform* FTransform;
	int FXCenter;
	int FYCenter;
	int FZCenter;
	int GradientZ;
	bool SupportsID;
	bool INoFixAlign;
	virtual TVisualBlock* __fastcall BeginEntity(const System::UnicodeString Entity, TVisualBlock* const Visual = (TVisualBlock*)(0x0), TTeeTransform* const Transform = (TTeeTransform*)(0x0));
	virtual void __fastcall EndEntity();
	virtual void __fastcall DrawLighting(TEdgeStyle AEdgeStyle, int ZPos, const System::Types::TRect &Z0BevelRect, const System::Types::TRect &Z1BevelRect, const System::Types::TRect &Z0DonutRect, int IStartAngle, int IEndAngle, const System::Types::TPoint &Middle0, bool IsDonut);
	void __fastcall CalcPieAngles(int X1, int Y1, int X2, int Y2, int X3, int Y3, int X4, int Y4, /* out */ float &Theta, /* out */ float &Theta2);
	virtual bool __fastcall CheckFastBrush();
	virtual System::Uitypes::TColor __fastcall GetPixel3D(int X, int Y, int Z) = 0 ;
	virtual bool __fastcall GetSupports3DText() = 0 ;
	virtual void __fastcall SetPixel3D(int X, int Y, int Z, System::Uitypes::TColor Value) = 0 ;
	virtual void __fastcall SmoothShadow(TTeeShadow* const Shadow, const System::Types::TRect &Rect, bool Ellipse, int RoundSize, const System::Types::TPoint *P, const int P_High, int DonutPercent = 0x0, const double StartAngle = 0.000000E+00, const double EndAngle = 3.600000E+02);
	HRESULT __stdcall QueryInterface(const GUID &IID, /* out */ void *Obj);
	int __stdcall _AddRef();
	int __stdcall _Release();
	
public:
	System::Math::Vectors::TPoint3D RotationCenter;
	__fastcall virtual TCanvas3D();
	__classmethod virtual System::UnicodeString __fastcall Description();
	__classmethod virtual System::UnicodeString __fastcall EditorClass();
	System::Types::TRect __fastcall CalcRect3D(const System::Types::TRect &R, int Z);
	virtual void __fastcall Calculate2DPosition(int &x, int &y, int z) = 0 /* overload */;
	System::Types::TPoint __fastcall Calculate3DPosition(const TPoint3D &P)/* overload */;
	System::Types::TPoint __fastcall Calculate3DPosition(const System::Types::TPoint &P, int z)/* overload */;
	virtual System::Types::TPoint __fastcall Calculate3DPosition(int x, int y, int z) = 0 /* overload */;
	virtual void __fastcall Calculate3DPosition(_POINTFLOAT &P, const float zPos) = 0 /* overload */;
	TPointArray __fastcall Calc3DPoints(const System::Types::TPoint *Points, const int Points_High, int z);
	void __fastcall FourPointsFromRect(const System::Types::TRect &R, int Z, /* out */ TFourPoints &P);
	System::Types::TRect __fastcall RectFromRectZ(const System::Types::TRect &R, int Z);
	_POINTFLOAT __fastcall PointFromCircle(const System::Types::TRect &Rect, const double Degrees, int zPos = 0x0, bool ClockWise = false);
	static System::Types::TPoint __fastcall PointFromSpiral(const System::Types::TRect &Rect, const double Degrees, const double Twist);
	virtual System::Types::TRect __fastcall InitWindow(Vcl::Graphics::TCanvas* const DestCanvas, TView3DOptions* const A3DOptions, System::Uitypes::TColor ABackColor, bool Is3D, const System::Types::TRect &UserRect) = 0 ;
	__classmethod virtual bool __fastcall IsAvailable();
	virtual void __fastcall Assign(TCanvas3D* const Source);
	void __fastcall AssignFont3D(TTeeFont* const AFont);
	virtual void __fastcall Projection(int MaxDepth, const System::Types::TRect &ABounds, const System::Types::TRect &Rect) = 0 ;
	virtual void __fastcall ShowImage(Vcl::Graphics::TCanvas* const DestCanvas, Vcl::Graphics::TCanvas* const DefaultCanvas, const System::Types::TRect &UserRect) = 0 ;
	virtual bool __fastcall ReDrawBitmap() = 0 ;
	virtual bool __fastcall RenderToBitmap(Vcl::Graphics::TBitmap* &ABitmap, const System::Types::TRect &R);
	HIDESBASE void __fastcall Arc(const int Left, const int Top, const int Right, const int Bottom, const int StartX, const int StartY, const int EndX, const int EndY, const int Z)/* overload */;
	HIDESBASE void __fastcall Arrow(bool Filled, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight, int Z)/* overload */;
	HIDESBASE virtual void __fastcall Arrow(bool Filled, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight, int Z0, int Z1, const double ArrowPercent) = 0 /* overload */;
	virtual void __fastcall ClipCube(const System::Types::TRect &Rect, int MinZ, int MaxZ) = 0 ;
	virtual void __fastcall Cone(bool Vertical, int Left, int Top, int Right, int Bottom, int Z0, int Z1, bool Dark3D, int ConePercent) = 0 ;
	virtual void __fastcall Cube(int Left, int Right, int Top, int Bottom, int Z0, int Z1, bool DarkSides = true, int RoundSize = 0x0) = 0 /* overload */;
	virtual void __fastcall Cube(int Left, int Right, int Top, int Bottom, int Z0, int Z1, int BevelSize, bool DarkSides = true, int RoundSize = 0x0) = 0 /* overload */;
	void __fastcall Cube(const System::Types::TRect &R, int Z0, int Z1, bool DarkSides = true, int RoundSize = 0x0)/* overload */;
	TPointArray __fastcall CubeHull(const System::Types::TRect &Rect, int MinZ, int MaxZ);
	virtual void __fastcall Cylinder(bool Vertical, int Left, int Top, int Right, int Bottom, int Z0, int Z1, bool Dark3D = true) = 0 ;
	void __fastcall Diamond(const System::Types::TRect &R, int Z0, int Z1)/* overload */;
	virtual void __fastcall Diamond(const int Left, const int Top, const int Right, const int Bottom, int Z0, int Z1)/* overload */;
	virtual void __fastcall DisableRotation();
	void __fastcall EllipseWithZ(const System::Types::TRect &Rect, int Z)/* overload */;
	virtual void __fastcall EllipseWithZ(const int X1, const int Y1, const int X2, const int Y2, const int Z) = 0 /* overload */;
	virtual void __fastcall EnableRotation();
	virtual void __fastcall HorizLine3D(int Left, int Right, int Y, int Z)/* overload */;
	HIDESBASE virtual void __fastcall RoundRect(const System::Types::TRect &R, int X, int Y, int Z0, int Z1)/* overload */;
	virtual void __fastcall VertLine3D(int X, int Top, int Bottom, int Z)/* overload */;
	virtual void __fastcall ZLine3D(int X, int Y, int Z0, int Z1);
	virtual void __fastcall FrontPlaneBegin();
	virtual void __fastcall FrontPlaneEnd();
	HIDESBASE TPointArray __fastcall GetArrowPoints(const float ArrowPercent, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight, int Z)/* overload */;
	virtual void __fastcall LineWithZ(int X0, int Y0, int X1, int Y1, int Z)/* overload */;
	void __fastcall LineWithZ(const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int Z)/* overload */;
	virtual void __fastcall MoveTo3D(const int X, const int Y, const int Z)/* overload */;
	void __fastcall MoveTo3D(const TPoint3D &P)/* overload */;
	virtual void __fastcall MoveTo3D(const float X, const float Y, const float Z)/* overload */;
	virtual void __fastcall LineTo3D(const int X, const int Y, const int Z)/* overload */;
	void __fastcall LineTo3D(const TPoint3D &P)/* overload */;
	virtual void __fastcall LineTo3D(const float X, const float Y, const float Z)/* overload */;
	virtual void __fastcall Pie3D(int XCenter, int YCenter, int XRadius, int YRadius, int Z0, int Z1, const double StartAngle, const double EndAngle, bool DarkSides, bool DrawSides, int DonutPercent = 0x0, TCustomTeeGradient* Gradient = (TCustomTeeGradient*)(0x0), int BevelPercent = 0x0, TEdgeStyle EdgeStyle = (TEdgeStyle)(0x2), TTeeTransparency Transparency = (TTeeTransparency)(0x0), int BevelBright = 0x0, bool BevelBorder = true, bool HideSides = false) = 0 ;
	virtual void __fastcall Plane3D(const System::Types::TPoint &A, const System::Types::TPoint &B, int Z0, int Z1) = 0 ;
	void __fastcall PlaneWithZ(const TFourPoints &P, int Z)/* overload */;
	virtual void __fastcall PlaneWithZ(const System::Types::TPoint &P1, const System::Types::TPoint &P2, const System::Types::TPoint &P3, const System::Types::TPoint &P4, int Z) = 0 /* overload */;
	virtual void __fastcall PlaneFour3D(TFourPoints &Points, int Z0, int Z1) = 0 ;
	virtual void __fastcall Polygon3D(const TPoint3D *Points, const int Points_High) = 0 /* overload */;
	virtual void __fastcall Polygon3DConcave(const System::Math::Vectors::TPoint3D *Points, const int Points_High, const bool Invert = false)/* overload */;
	virtual void __fastcall Polygon3DConcave(const TPoint3D *Points, const int Points_High, const bool Invert = false)/* overload */;
	virtual void __fastcall PolygonWithZ(const System::Types::TPoint *Points, const int Points_High, int Z);
	HIDESBASE virtual void __fastcall PolygonConcave(const System::Types::TPoint *Points, const int Points_High, int Z)/* overload */;
	void __fastcall PolygonFloatWithZ(const _POINTFLOAT *Points, const int Points_High, int Z);
	HIDESBASE virtual void __fastcall Polyline(const System::Types::TPoint *Points, const int Points_High, int Z)/* overload */;
	void __fastcall PolylineWithZ(const _POINTFLOAT *Points, const int Points_High, int Z);
	virtual void __fastcall Pyramid(bool Vertical, int Left, int Top, int Right, int Bottom, int z0, int z1, bool DarkSides = true) = 0 ;
	virtual void __fastcall PyramidTrunc(const System::Types::TRectF &R, const double StartZ, const double EndZ, const double TruncX, const double TruncZ, bool TopCover = true, bool BottomCover = true);
	HIDESBASE void __fastcall Rectangle(const System::Types::TRect &R, int Z)/* overload */;
	HIDESBASE void __fastcall Rectangle(const int X0, const int Y0, const int X1, const int Y1, int Z)/* overload */;
	virtual void __fastcall RectangleWithZ(const System::Types::TRect &Rect, int Z) = 0 ;
	virtual void __fastcall RectangleY(const int Left, const int Top, const int Right, const int Z0, const int Z1) = 0 ;
	virtual void __fastcall RectangleZ(const int Left, const int Top, const int Bottom, const int Z0, const int Z1) = 0 ;
	void __fastcall RotatedEllipse(int Left, int Top, int Right, int Bottom, int Z, const double Angle);
	virtual void __fastcall RotateLabel3D(int x, int y, int z, const System::UnicodeString St, double RotDegree, bool AllowHTML = false) = 0 ;
	virtual void __fastcall RoundRectWithZ(const System::Types::TRect &R, int X, int Y, int Z);
	virtual void __fastcall Sphere(int x, int y, int z, const double Radius) = 0 /* overload */;
	HIDESBASE virtual void __fastcall StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* const Graphic, const double Pos, TCanvas3DPlane Plane = (TCanvas3DPlane)(0x2))/* overload */;
	virtual void __fastcall Surface3D(TTeeCanvasSurfaceStyle Style, bool SameBrush, bool CreateCached, bool AddNormals, int NumXValues, int NumZValues, const TTeeCanvasCalcPoints CalcPoints, TTeeCachedObject* &Cached) = 0 ;
	void __fastcall TextOut3D(int x, int y, int z, const System::UnicodeString Text)/* overload */;
	virtual void __fastcall TextOut3D(int x, int y, int z, const System::UnicodeString Text, bool AllowHTML) = 0 /* overload */;
	virtual void __fastcall Triangle3D(const TTrianglePoints3D &Points, const TTriangleColors3D &Colors) = 0 ;
	void __fastcall TrianglePointsTo2D(const TTrianglePoints3D &P, /* out */ TTrianglePoints &Result);
	virtual void __fastcall Triangles(const TPoint3D *P, const int P_High, bool CreateCached, TTeeCachedObject* &Cached);
	virtual void __fastcall TriangleWithZ(const System::Types::TPoint &P1, const System::Types::TPoint &P2, const System::Types::TPoint &P3, int Z) = 0 ;
	virtual void __fastcall TriSurface(int NumTriangles, bool CreateCached, bool AddNormals, TTeeBlend* const Blend, TTeeTransparency Transparency, const TTeeCanvasTriPoints CalcPoints, TTeeCachedObject* &Cached);
	__property System::Uitypes::TColor Pixels3D[int X][int Y][int Z] = {read=GetPixel3D, write=SetPixel3D};
	__property bool Supports3DText = {read=GetSupports3DText, nodefault};
	__property TView3DOptions* View3DOptions = {read=F3DOptions, write=F3DOptions};
	__property int XCenter = {read=FXCenter, write=FXCenter, nodefault};
	__property int YCenter = {read=FYCenter, write=FYCenter, nodefault};
	__property int ZCenter = {read=FZCenter, write=FZCenter, nodefault};
public:
	/* TTeeCanvas.Destroy */ inline __fastcall virtual ~TCanvas3D() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Arc(const int Left, const int Top, const int Right, const int Bottom, const int StartX, const int StartY, const int EndX, const int EndY){ TTeeCanvas::Arc(Left, Top, Right, Bottom, StartX, StartY, EndX, EndY); }
	inline void __fastcall  Arc(const int Left, const int Top, const int Right, const int Bottom, const float StartAngle, const float EndAngle){ TTeeCanvas::Arc(Left, Top, Right, Bottom, StartAngle, EndAngle); }
	inline void __fastcall  Arc(const System::Types::TRect &R, const float StartAngle, const float EndAngle){ TTeeCanvas::Arc(R, StartAngle, EndAngle); }
	inline void __fastcall  Arrow(bool Filled, const double ArrowPercent, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight){ TTeeCanvas::Arrow(Filled, ArrowPercent, FromPoint, ToPoint, ArrowWidth, ArrowHeight); }
	inline void __fastcall  RoundRect(int X1, int Y1, int X2, int Y2, int X3, int Y3){ TTeeCanvas::RoundRect(X1, Y1, X2, Y2, X3, Y3); }
	inline void __fastcall  RoundRect(const System::Types::TRect &R, int X, int Y, TTeeCorners* const ACorners = (TTeeCorners*)(0x0)){ TTeeCanvas::RoundRect(R, X, Y, ACorners); }
	inline TPointArray __fastcall  GetArrowPoints(const float ArrowPercent, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight){ return TTeeCanvas::GetArrowPoints(ArrowPercent, FromPoint, ToPoint, ArrowWidth, ArrowHeight); }
	inline void __fastcall  PolygonConcave(const System::Types::TPoint *Points, const int Points_High){ TTeeCanvas::PolygonConcave(Points, Points_High); }
	inline void __fastcall  Polyline(const System::Types::TPoint *Points, const int Points_High){ TTeeCanvas::Polyline(Points, Points_High); }
	inline void __fastcall  Rectangle(const System::Types::TRect &R){ TTeeCanvas::Rectangle(R); }
	inline void __fastcall  Rectangle(const int X0, const int Y0, const int X1, const int Y1){ TTeeCanvas::Rectangle(X0, Y0, X1, Y1); }
	inline void __fastcall  StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* const Graphic){ TTeeCanvas::StretchDraw(Rect, Graphic); }
	
private:
	void *__IInterface;	// System::IInterface 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {00000000-0000-0000-C000-000000000046}
	operator System::_di_IInterface()
	{
		System::_di_IInterface intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator System::IInterface*(void) { return (System::IInterface*)&__IInterface; }
	#endif
	
};


typedef System::DynamicArray<_POINTFLOAT> TCirclePoints;

class PASCALIMPLEMENTATION TTeeCanvas3D : public TCanvas3D
{
	typedef TCanvas3D inherited;
	
private:
	double s1;
	double s2;
	double s3;
	double c1;
	double c2;
	double c3;
	double c2s3;
	double c2c3;
	double tempXX;
	double tempYX;
	double tempXZ;
	double tempYZ;
	bool FWas3D;
	Vcl::Graphics::TBitmap* FBitmap;
	bool FMonochrome;
	HDC IFastLine;
	bool IHasPerspec;
	bool IHasTilt;
	double IOrthoX;
	double IOrthoY;
	double IZoomPerspec;
	void __fastcall DirectTextOut(HDC AHandle, int x, int y, const System::UnicodeString Text);
	void __fastcall GetCirclePoints(TCirclePoints &P, const int X1, const int Y1, const int X2, const int Y2)/* overload */;
	void __fastcall InternalCylinder(bool Vertical, int Left, int Top, int Right, int Bottom, int Z0, int Z1, bool Dark3D, int ConePercent);
	void __fastcall SetFontQuality(tagLOGFONTW &LogRec);
	
protected:
	bool FBufferedDisplay;
	bool FDirty;
	bool FIs3D;
	bool IKeepBitmap;
	TFourPoints IPoints;
	double IZoomFactor;
	double CharacterAngle;
	int XCenterOffset;
	int YCenterOffset;
	bool Pie3DUsingArcs;
	TFontQuality FontQuality;
	System::TObject* Tag;
	Vcl::Graphics::TBitmap* __fastcall TranspBitmap(Vcl::Graphics::TGraphic* const AGraphic, const System::Types::TRect &R)/* overload */;
	Vcl::Graphics::TBitmap* __fastcall TranspBitmap(Vcl::Graphics::TGraphic* const AGraphic, const int X, const int Y)/* overload */;
	virtual bool __fastcall CheckFastBrush();
	virtual void __fastcall FastLineTo(const int X, const int Y);
	virtual System::Uitypes::TColor __fastcall GetBackColor();
	virtual TCanvasBackMode __fastcall GetBackMode();
	virtual HDC __fastcall GetHandle();
	virtual TCanvasStyle __fastcall CanvasStyle();
	virtual bool __fastcall GetMonochrome();
	virtual System::Uitypes::TColor __fastcall GetPixel(int X, int Y);
	virtual System::Uitypes::TColor __fastcall GetPixel3D(int X, int Y, int Z);
	virtual bool __fastcall GetSupports3DText();
	virtual bool __fastcall GetSupportsFullRotation();
	virtual bool __fastcall GetSupportsXORMode();
	virtual bool __fastcall GetIsNoBMPGrid();
	virtual int __fastcall GetTextAlign();
	virtual bool __fastcall GetUseBuffer();
	virtual void __fastcall PolygonFour();
	virtual void __fastcall SetBackColor(const System::Uitypes::TColor Value);
	virtual void __fastcall SetBackMode(const TCanvasBackMode Value);
	virtual void __fastcall SetBitmap(Vcl::Graphics::TBitmap* ABitmap);
	virtual void __fastcall SetFastLine(const bool Active);
	virtual void __fastcall SetMonochrome(bool Value);
	virtual void __fastcall SetPixel(int X, int Y, System::Uitypes::TColor Value);
	virtual void __fastcall SetTextAlign(const int Value);
	virtual void __fastcall SetUseBuffer(bool Value);
	virtual void __fastcall DeleteBitmap();
	virtual void __fastcall TransferBitmap(int ALeft, int ATop, Vcl::Graphics::TCanvas* const ACanvas);
	void __fastcall Calc3DTPoint(System::Types::TPoint &P, int z);
	System::Types::TPoint __fastcall Calc3DTPoint3D(const TPoint3D &P);
	void __fastcall Calc3DPoint(/* out */ System::Types::TPoint &P, int x, int y, int z)/* overload */;
	void __fastcall Calc3DPoint(/* out */ System::Types::TPoint &P, double x, double y, double z)/* overload */;
	virtual void __fastcall SetPixel3D(int X, int Y, int Z, System::Uitypes::TColor Value);
	void __fastcall Calc3DPos(int &x, int &y, int z)/* overload */;
	void __fastcall CalcPerspective(const System::Types::TRect &Rect);
	void __fastcall CalcTrigValues();
	HFONT __fastcall GetNewFont(HDC AHandle, int ASize);
	virtual void __fastcall SmoothShadow(TTeeShadow* const Shadow, const System::Types::TRect &Rect, bool Ellipse, int RoundSize, const System::Types::TPoint *P, const int P_High, int DonutPercent = 0x0, const double StartAngle = 0.000000E+00, const double EndAngle = 3.600000E+02);
	
public:
	__fastcall virtual TTeeCanvas3D();
	__fastcall virtual ~TTeeCanvas3D();
	__classmethod virtual System::UnicodeString __fastcall Description();
	virtual System::Types::TRect __fastcall InitWindow(Vcl::Graphics::TCanvas* const DestCanvas, TView3DOptions* const A3DOptions, System::Uitypes::TColor ABackColor, bool Is3D, const System::Types::TRect &UserRect);
	virtual bool __fastcall ReDrawBitmap();
	virtual bool __fastcall RenderToBitmap(Vcl::Graphics::TBitmap* &ABitmap, const System::Types::TRect &R);
	virtual void __fastcall ShowImage(Vcl::Graphics::TCanvas* const DestCanvas, Vcl::Graphics::TCanvas* const DefaultCanvas, const System::Types::TRect &UserRect);
	virtual void __fastcall Arc(const int Left, const int Top, const int Right, const int Bottom, const int StartX, const int StartY, const int EndX, const int EndY)/* overload */;
	virtual void __fastcall Donut(int XCenter, int YCenter, int XRadius, int YRadius, const double StartAngle, const double EndAngle, const double HolePercent)/* overload */;
	virtual void __fastcall Draw(int X, int Y, Vcl::Graphics::TGraphic* const Graphic);
	virtual void __fastcall Ellipse(const int X1, const int Y1, const int X2, const int Y2)/* overload */;
	virtual void __fastcall EraseBackground(const System::Types::TRect &Rect);
	virtual void __fastcall FillRect(const System::Types::TRect &Rect);
	virtual void __fastcall LineTo(const int X, const int Y)/* overload */;
	virtual void __fastcall MoveTo(const int X, const int Y)/* overload */;
	virtual void __fastcall Pie(const System::Types::TRect &R, const double StartAngle, const double EndAngle)/* overload */;
	virtual void __fastcall Pie(int X1, int Y1, int X2, int Y2, int X3, int Y3, int X4, int Y4)/* overload */;
	virtual void __fastcall Rectangle(const int X0, const int Y0, const int X1, const int Y1)/* overload */;
	virtual void __fastcall RoundRect(int X1, int Y1, int X2, int Y2, int X3, int Y3)/* overload */;
	virtual void __fastcall StretchDraw(const System::Types::TRect &ARect, Vcl::Graphics::TGraphic* const Graphic)/* overload */;
	virtual void __fastcall TextOut(int X, int Y, const System::UnicodeString Text)/* overload */;
	virtual void __fastcall ClipRectangle(const System::Types::TRect &Rect)/* overload */;
	virtual void __fastcall ClipCube(const System::Types::TRect &Rect, int MinZ, int MaxZ);
	virtual void __fastcall DisableRotation();
	virtual void __fastcall EnableRotation();
	HIDESBASE void __fastcall GradientFill(TCustomTeeGradient* const Gradient, const System::Types::TRect &Rect)/* overload */;
	virtual void __fastcall GradientFill(const System::Types::TRect &Rect, System::Uitypes::TColor StartColor, System::Uitypes::TColor EndColor, TGradientDirection Direction, int Balance = 0x32, int RadialX = 0x0, int RadialY = 0x0)/* overload */;
	virtual void __fastcall Invalidate();
	virtual void __fastcall Polyline(const System::Types::TPoint *Points, const int Points_High)/* overload */;
	virtual void __fastcall PolylineFloat(const _POINTFLOAT *Points, const int Points_High)/* overload */;
	HIDESBASE virtual void __fastcall PolylineFloat(const System::Math::Vectors::TPoint3D *Points, const int Points_High)/* overload */;
	virtual void __fastcall Polygon(const System::Types::TPoint *Points, const int Points_High);
	virtual void __fastcall PolygonFloat(const _POINTFLOAT *Points, const int Points_High);
	virtual void __fastcall RotateLabel(int x, int y, const System::UnicodeString St, double RotDegree, bool AllowHTML = false);
	virtual void __fastcall RotateLabel3D(int x, int y, int z, const System::UnicodeString St, double RotDegree, bool AllowHTML = false);
	virtual void __fastcall UnClipRectangle();
	virtual void __fastcall Calculate2DPosition(int &x, int &y, int z)/* overload */;
	virtual System::Types::TPoint __fastcall Calculate3DPosition(int x, int y, int z)/* overload */;
	virtual void __fastcall Calculate3DPosition(_POINTFLOAT &P, const float zPos)/* overload */;
	virtual void __fastcall Projection(int MaxDepth, const System::Types::TRect &ABounds, const System::Types::TRect &Rect);
	virtual void __fastcall Arrow(bool Filled, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight, int Z0, int Z1, const double ArrowPercent)/* overload */;
	virtual void __fastcall Cone(bool Vertical, int Left, int Top, int Right, int Bottom, int Z0, int Z1, bool Dark3D, int ConePercent);
	virtual void __fastcall Cube(int Left, int Right, int Top, int Bottom, int Z0, int Z1, int BevelSize, bool DarkSides = true, int RoundSize = 0x0)/* overload */;
	virtual void __fastcall Cube(int Left, int Right, int Top, int Bottom, int Z0, int Z1, bool DarkSides = true, int RoundSize = 0x0)/* overload */;
	virtual void __fastcall Cylinder(bool Vertical, int Left, int Top, int Right, int Bottom, int Z0, int Z1, bool Dark3D = true);
	virtual void __fastcall EllipseWithZ(const int X1, const int Y1, const int X2, const int Y2, const int Z)/* overload */;
	void __fastcall GetCirclePoints(TCirclePoints &P, int X1, int Y1, int X2, int Y2, int Z)/* overload */;
	virtual void __fastcall RectangleZ(const int Left, const int Top, const int Bottom, const int Z0, const int Z1);
	virtual void __fastcall RectangleY(const int Left, const int Top, const int Right, const int Z0, const int Z1);
	virtual void __fastcall Pie3D(int XCenter, int YCenter, int XRadius, int YRadius, int Z0, int Z1, const double StartAngle, const double EndAngle, bool DarkSides, bool DrawSides, int DonutPercent = 0x0, TCustomTeeGradient* Gradient = (TCustomTeeGradient*)(0x0), int BevelPercent = 0x0, TEdgeStyle EdgeStyle = (TEdgeStyle)(0x2), TTeeTransparency Transparency = (TTeeTransparency)(0x0), int BevelBright = 0x0, bool BevelBorder = true, bool HideSides = false);
	virtual void __fastcall Plane3D(const System::Types::TPoint &A, const System::Types::TPoint &B, int Z0, int Z1);
	virtual void __fastcall PlaneWithZ(const System::Types::TPoint &P1, const System::Types::TPoint &P2, const System::Types::TPoint &P3, const System::Types::TPoint &P4, int Z)/* overload */;
	virtual void __fastcall PlaneFour3D(TFourPoints &Points, int Z0, int Z1);
	virtual void __fastcall Polygon3D(const TPoint3D *Points, const int Points_High)/* overload */;
	virtual void __fastcall Pyramid(bool Vertical, int Left, int Top, int Right, int Bottom, int z0, int z1, bool DarkSides = true);
	virtual void __fastcall RectangleWithZ(const System::Types::TRect &Rect, int Z);
	virtual void __fastcall Sphere(int x, int y, int z, const double Radius)/* overload */;
	virtual void __fastcall Surface3D(TTeeCanvasSurfaceStyle Style, bool SameBrush, bool CreateCached, bool AddNormals, int NumXValues, int NumZValues, const TTeeCanvasCalcPoints CalcPoints, TTeeCachedObject* &Cached);
	virtual void __fastcall TextOut3D(int x, int y, int z, const System::UnicodeString Text, bool AllowHtml)/* overload */;
	virtual void __fastcall Triangle3D(const TTrianglePoints3D &Points, const TTriangleColors3D &Colors);
	virtual void __fastcall TriangleWithZ(const System::Types::TPoint &P1, const System::Types::TPoint &P2, const System::Types::TPoint &P3, int Z);
	__property Vcl::Graphics::TBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Arc(const int Left, const int Top, const int Right, const int Bottom, const int StartX, const int StartY, const int EndX, const int EndY, const int Z){ TCanvas3D::Arc(Left, Top, Right, Bottom, StartX, StartY, EndX, EndY, Z); }
	inline void __fastcall  Arc(const int Left, const int Top, const int Right, const int Bottom, const float StartAngle, const float EndAngle){ TTeeCanvas::Arc(Left, Top, Right, Bottom, StartAngle, EndAngle); }
	inline void __fastcall  Arc(const System::Types::TRect &R, const float StartAngle, const float EndAngle){ TTeeCanvas::Arc(R, StartAngle, EndAngle); }
	inline void __fastcall  Ellipse(const System::Types::TRect &R){ TTeeCanvas::Ellipse(R); }
	inline void __fastcall  LineTo(const System::Types::TPoint &P){ TTeeCanvas::LineTo(P); }
	inline void __fastcall  LineTo(const _POINTFLOAT &P){ TTeeCanvas::LineTo(P); }
	inline void __fastcall  MoveTo(const System::Types::TPoint &P){ TTeeCanvas::MoveTo(P); }
	inline void __fastcall  MoveTo(const _POINTFLOAT &P){ TTeeCanvas::MoveTo(P); }
	inline void __fastcall  Rectangle(const System::Types::TRect &R, int Z){ TCanvas3D::Rectangle(R, Z); }
	inline void __fastcall  Rectangle(const int X0, const int Y0, const int X1, const int Y1, int Z){ TCanvas3D::Rectangle(X0, Y0, X1, Y1, Z); }
	inline void __fastcall  Rectangle(const System::Types::TRect &R){ TTeeCanvas::Rectangle(R); }
	inline void __fastcall  RoundRect(const System::Types::TRect &R, int X, int Y, int Z0, int Z1){ TCanvas3D::RoundRect(R, X, Y, Z0, Z1); }
	inline void __fastcall  RoundRect(const System::Types::TRect &R, int X, int Y, TTeeCorners* const ACorners = (TTeeCorners*)(0x0)){ TTeeCanvas::RoundRect(R, X, Y, ACorners); }
	inline void __fastcall  StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* const Graphic, const double Pos, TCanvas3DPlane Plane = (TCanvas3DPlane)(0x2)){ TCanvas3D::StretchDraw(Rect, Graphic, Pos, Plane); }
	inline void __fastcall  TextOut(const int X, const int Y, const System::UnicodeString Text, bool AllowHtml){ TTeeCanvas::TextOut(X, Y, Text, AllowHtml); }
	inline void __fastcall  ClipRectangle(const System::Types::TRect &Rect, int RoundX, int RoundY){ TTeeCanvas::ClipRectangle(Rect, RoundX, RoundY); }
	inline void __fastcall  Polyline(const System::Types::TPoint *Points, const int Points_High, int Z){ TCanvas3D::Polyline(Points, Points_High, Z); }
	inline System::Types::TPoint __fastcall  Calculate3DPosition(const TPoint3D &P){ return TCanvas3D::Calculate3DPosition(P); }
	inline System::Types::TPoint __fastcall  Calculate3DPosition(const System::Types::TPoint &P, int z){ return TCanvas3D::Calculate3DPosition(P, z); }
	inline void __fastcall  Arrow(bool Filled, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight, int Z){ TCanvas3D::Arrow(Filled, FromPoint, ToPoint, ArrowWidth, ArrowHeight, Z); }
	inline void __fastcall  Arrow(bool Filled, const double ArrowPercent, const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int ArrowWidth, int ArrowHeight){ TTeeCanvas::Arrow(Filled, ArrowPercent, FromPoint, ToPoint, ArrowWidth, ArrowHeight); }
	inline void __fastcall  Cube(const System::Types::TRect &R, int Z0, int Z1, bool DarkSides = true, int RoundSize = 0x0){ TCanvas3D::Cube(R, Z0, Z1, DarkSides, RoundSize); }
	inline void __fastcall  EllipseWithZ(const System::Types::TRect &Rect, int Z){ TCanvas3D::EllipseWithZ(Rect, Z); }
	inline void __fastcall  PlaneWithZ(const TFourPoints &P, int Z){ TCanvas3D::PlaneWithZ(P, Z); }
	inline void __fastcall  TextOut3D(int x, int y, int z, const System::UnicodeString Text){ TCanvas3D::TextOut3D(x, y, z, Text); }
	
};


class PASCALIMPLEMENTATION TTeeNeutralCanvas : public TTeeCanvas3D
{
	typedef TTeeCanvas3D inherited;
	
	
private:
	typedef System::DynamicArray<float> _TTeeNeutralCanvas__1;
	
	
private:
	System::Uitypes::TColor FBackColor;
	TCanvasBackMode FBackMode;
	int FTextAlign;
	_TTeeNeutralCanvas__1 ITranspStack;
	
protected:
	float ITransp;
	virtual System::Uitypes::TColor __fastcall GetBackColor();
	virtual TCanvasBackMode __fastcall GetBackMode();
	virtual int __fastcall GetTextAlign();
	virtual void __fastcall SetBackColor(const System::Uitypes::TColor Value);
	virtual void __fastcall SetBackMode(const TCanvasBackMode Value);
	virtual void __fastcall SetInterCharSize(int ASize);
	virtual void __fastcall SetPenMode(TTeePen* const APen);
	virtual void __fastcall SetTextAlign(const int Value);
	
public:
	__fastcall virtual TTeeNeutralCanvas();
	virtual TTeeBlend* __fastcall BeginBlending(const System::Types::TRect &R, TTeeTransparency Transparency);
	virtual void __fastcall ClipPolygon(const System::Types::TPoint *Points, const int Points_High, int NumPoints, bool DiffRegion = false);
	virtual void __fastcall EndBlending(TTeeBlend* const Blend);
	virtual void __fastcall Polyline(const System::Types::TPoint *Points, const int Points_High)/* overload */;
public:
	/* TTeeCanvas3D.Destroy */ inline __fastcall virtual ~TTeeNeutralCanvas() { }
	
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Polyline(const System::Types::TPoint *Points, const int Points_High, int Z){ TCanvas3D::Polyline(Points, Points_High, Z); }
	
};


#ifndef _WIN64
typedef System::TMetaClass* TCanvas3DClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TCanvas3DClass);
#endif /* _WIN64 */

enum DECLSPEC_DENUM TTeeFontStyle : unsigned char { fsNormal, fsOutline, fsBitmap };

typedef System::Uitypes::TColor __fastcall (__closure *TButtonGetColorProc)(void);

class PASCALIMPLEMENTATION TTeeButton : public Vcl::Stdctrls::TButton
{
	typedef Vcl::Stdctrls::TButton inherited;
	
private:
	int FSymbolWidth;
	bool FSymbolVisible;
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Winapi::Messages::TMessage &Message);
	void __fastcall SetSymbolVisible(const bool Value);
	void __fastcall SetSymbolWidth(const int Value);
	
protected:
	System::TObject* Instance;
	System::Typinfo::TPropInfo *Info;
	virtual void __fastcall DrawSymbol(TTeeCanvas* const ACanvas);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Winapi::Messages::TMessage &Message);
	virtual void __fastcall PaintWindow(HDC DC);
	HIDESBASE MESSAGE void __fastcall WMPaint(Winapi::Messages::TWMPaint &Message);
	System::Types::TRect __fastcall SymbolRectangle();
	
public:
	__fastcall virtual TTeeButton(System::Classes::TComponent* AOwner);
	void __fastcall LinkProperty(System::TObject* AInstance, const System::UnicodeString PropName);
	
__published:
	__property Height = {default=25};
	__property bool SymbolVisible = {read=FSymbolVisible, write=SetSymbolVisible, default=1};
	__property int SymbolWidth = {read=FSymbolWidth, write=SetSymbolWidth, default=0};
	__property Width = {default=75};
public:
	/* TCustomButton.Destroy */ inline __fastcall virtual ~TTeeButton() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TTeeButton(HWND ParentWindow) : Vcl::Stdctrls::TButton(ParentWindow) { }
	
};


class PASCALIMPLEMENTATION TButtonColor : public TTeeButton
{
	typedef TTeeButton inherited;
	
private:
	bool FFullOpen;
	System::Uitypes::TColor FSymbolColor;
	System::Uitypes::TColor __fastcall GetSymbolColor();
	void __fastcall SetSymbolColor(const System::Uitypes::TColor Value);
	
protected:
	virtual void __fastcall DrawSymbol(TTeeCanvas* const ACanvas);
	
public:
	TButtonGetColorProc GetColorProc;
	__fastcall virtual TButtonColor(System::Classes::TComponent* AOwner);
	DYNAMIC void __fastcall Click();
	__property System::Uitypes::TColor SymbolColor = {read=GetSymbolColor, write=SetSymbolColor, nodefault};
	
__published:
	__property bool FullOpen = {read=FFullOpen, write=FFullOpen, default=1};
public:
	/* TCustomButton.Destroy */ inline __fastcall virtual ~TButtonColor() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TButtonColor(HWND ParentWindow) : TTeeButton(ParentWindow) { }
	
};


class PASCALIMPLEMENTATION TComboFlat : public Vcl::Stdctrls::TComboBox
{
	typedef Vcl::Stdctrls::TComboBox inherited;
	
private:
	bool Inside;
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Winapi::Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Winapi::Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Winapi::Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall CMFocusChanged(Vcl::Controls::TCMFocusChanged &Message);
	int __fastcall GetDropWidth();
	bool __fastcall IsDropWidthStored();
	void __fastcall SetDropWidth(const int Value);
	
public:
	__fastcall virtual TComboFlat(System::Classes::TComponent* AOwner);
	void __fastcall Add(const System::UnicodeString Item);
	System::UnicodeString __fastcall CurrentItem();
	System::TObject* __fastcall SelectedObject();
	
__published:
	__property int DropDownWidth = {read=GetDropWidth, write=SetDropWidth, stored=IsDropWidthStored, nodefault};
	__property Height = {default=21};
	__property ItemHeight = {default=13};
	__property ItemIndex = {default=-1};
	__property Style = {default=2};
public:
	/* TCustomComboBox.Destroy */ inline __fastcall virtual ~TComboFlat() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TComboFlat(HWND ParentWindow) : Vcl::Stdctrls::TComboBox(ParentWindow) { }
	
};


enum DECLSPEC_DENUM TSmoothStretchOption : unsigned char { ssBestQuality, ssBestPerformance };

typedef void __fastcall (*TGradientRotate)(TCustomTeeGradient* const Gradient, Vcl::Graphics::TBitmap* const Bitmap);

__interface  INTERFACE_UUID("{84DBB276-CBD2-4BBB-AC31-AACBF8B6F34C}") ICanvasHyperlinks  : public System::IInterface 
{
	virtual void __fastcall AddLink(int x, int y, const System::UnicodeString Text, const System::UnicodeString URL, const System::UnicodeString Hint) = 0 ;
};

__interface  INTERFACE_UUID("{03EBCB55-D01F-4CA8-8A2F-48EB3BEBC5E3}") ICanvasToolTips  : public System::IInterface 
{
	virtual void __fastcall AddToolTip(const System::UnicodeString Entity, const System::UnicodeString ToolTip) = 0 ;
};

typedef NativeInt TeeNativeInt;

class PASCALIMPLEMENTATION TVisualEditor : public Vcl::Forms::TForm
{
	typedef Vcl::Forms::TForm inherited;
	
private:
	System::Classes::TNotifyEvent FOnDirty;
	
public:
	void __fastcall MarkDirty();
	virtual void __fastcall RefreshBlock(TVisualBlock* const AVisual);
	__property System::Classes::TNotifyEvent OnDirty = {read=FOnDirty, write=FOnDirty};
public:
	/* TCustomForm.Create */ inline __fastcall virtual TVisualEditor(System::Classes::TComponent* AOwner) : Vcl::Forms::TForm(AOwner) { }
	/* TCustomForm.CreateNew */ inline __fastcall virtual TVisualEditor(System::Classes::TComponent* AOwner, int Dummy) : Vcl::Forms::TForm(AOwner, Dummy) { }
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TVisualEditor() { }
	
public:
	/* TWinControl.CreateParented */ inline __fastcall TVisualEditor(HWND ParentWindow) : Vcl::Forms::TForm(ParentWindow) { }
	
};


#ifndef _WIN64
typedef System::TMetaClass* TVisualEditorClass;
#else /* _WIN64 */
_DECLARE_METACLASS(System::TMetaClass, TVisualEditorClass);
#endif /* _WIN64 */

typedef TVisualBlock* __fastcall (*TChangeVisual)(System::Classes::TComponent* AOwner, System::Classes::TComponent* AVisualOwner, TVisualBlock* AVisual);

typedef bool __fastcall (*TEditVisual)(System::Classes::TComponent* AOwner, TVisualBlock* AVisual);

typedef void __fastcall (*TTeeAddFontNames)(System::Classes::TStrings* const Items);

//-- var, const, procedure ---------------------------------------------------
static const System::Int8 TeeDefaultPerspective = System::Int8(0xf);
static const System::Word TeeMinAngle = System::Word(0x10e);
static const System::Int8 TeeCheckBoxSize = System::Int8(0xb);
extern DELPHI_PACKAGE System::Types::TRect TeeZeroRect;
extern DELPHI_PACKAGE System::Types::TRectF TeeZeroRectF;
extern DELPHI_PACKAGE System::Types::TPoint TeeZeroPoint;
#define TeeFontElektra L"Elektra"
#define TeeFontDigital L"DS-Digital"
extern DELPHI_PACKAGE int TeeDefaultConePercent;
extern DELPHI_PACKAGE int NumCirclePoints;
extern DELPHI_PACKAGE bool TeeCheckPenWidth;
static const System::WideChar TeeCharForHeight = (System::WideChar)(0x57);
extern DELPHI_PACKAGE System::Byte DarkerColorQuantity;
extern DELPHI_PACKAGE System::Byte DarkColorQuantity;
extern DELPHI_PACKAGE bool IsWindowsNT;
extern DELPHI_PACKAGE int GetDefaultFontSize;
extern DELPHI_PACKAGE System::UnicodeString GetDefaultFontName;
static const Vcl::Graphics::TPixelFormat TeePixelFormat = (Vcl::Graphics::TPixelFormat)(6);
extern DELPHI_PACKAGE System::Byte TeeFontAntiAlias;
extern DELPHI_PACKAGE unsigned __stdcall (*TeeSetDCBrushColor)(HDC DC, unsigned Color);
extern DELPHI_PACKAGE unsigned __stdcall (*TeeSetDCPenColor)(HDC DC, unsigned Color);
extern DELPHI_PACKAGE int TeeNumCylinderSides;
extern DELPHI_PACKAGE TGradientRotate TeeGradientRotate;
extern DELPHI_PACKAGE TChangeVisual TeeOnChangeVisual;
extern DELPHI_PACKAGE TEditVisual TeeOnEditVisual;
extern DELPHI_PACKAGE TVisualEditorClass TeeVisualEditorClass;
extern DELPHI_PACKAGE System::Classes::TList* TeeRenderClasses;
extern DELPHI_PACKAGE TTeeAddFontNames TeeAddFontNames;
extern DELPHI_PACKAGE System::Classes::TStrings* TeeCustomEditColors;
extern DELPHI_PACKAGE void __fastcall InflateRectF(System::Types::TRectF &R, const float dX, const float dY)/* overload */;
extern DELPHI_PACKAGE bool __fastcall TeeCull(const System::Types::TPoint &P0, const System::Types::TPoint &P1, const System::Types::TPoint &P2)/* overload */;
extern DELPHI_PACKAGE bool __fastcall TeeCull(const TFourPoints &P)/* overload */;
extern DELPHI_PACKAGE bool __fastcall TeeCull(const _POINTFLOAT &P0, const _POINTFLOAT &P1, const _POINTFLOAT &P2)/* overload */;
extern DELPHI_PACKAGE bool __fastcall TeeCull(const TFourPointFloats &P)/* overload */;
extern DELPHI_PACKAGE TRGBA __fastcall ColorRGBA(const System::Uitypes::TColor Color);
extern DELPHI_PACKAGE System::Types::TPoint __fastcall TeePoint(const int aX, const int aY)/* overload */;
extern DELPHI_PACKAGE System::Types::TPoint __fastcall TeePoint(const _POINTFLOAT &P)/* overload */;
extern DELPHI_PACKAGE _POINTFLOAT __fastcall TeePointFloat(const System::Types::TPoint &P)/* overload */;
extern DELPHI_PACKAGE void __fastcall Offset(System::Types::TPoint &P, const int Amount);
extern DELPHI_PACKAGE bool __fastcall PointInRect(const System::Types::TRect &Rect, int x, int y)/* overload */;
extern DELPHI_PACKAGE bool __fastcall PointInRect(const System::Types::TRect &Rect, const System::Types::TPoint &P)/* overload */;
extern DELPHI_PACKAGE bool __fastcall PointInRect(const System::Types::TRectF &Rect, int x, int y)/* overload */;
extern DELPHI_PACKAGE System::Types::TRectF __fastcall TeeRect(const System::Types::TRect &R)/* overload */;
extern DELPHI_PACKAGE System::Types::TRect __fastcall TeeRect(const int Left, const int Top, const int Right, const int Bottom)/* overload */;
extern DELPHI_PACKAGE System::Types::TRect __fastcall TeeRect(const int Width, const int Height)/* overload */;
extern DELPHI_PACKAGE System::Types::TRect __fastcall OrientRectangle(const System::Types::TRect &R)/* overload */;
extern DELPHI_PACKAGE System::Types::TRect __fastcall OrientRectangle(const int Left, const int Top, const int Right, const int Bottom)/* overload */;
extern DELPHI_PACKAGE TPoint3D __fastcall Point3D(const int x, const int y, const int z)/* overload */;
extern DELPHI_PACKAGE TPoint3D __fastcall Point3D(const System::Types::TPoint &P, int z)/* overload */;
extern DELPHI_PACKAGE System::Math::Vectors::TPoint3D __fastcall Point3D(const TPoint3D &P)/* overload */;
extern DELPHI_PACKAGE void __fastcall RectSize(const System::Types::TRect &R, /* out */ int &RectWidth, /* out */ int &RectHeight)/* overload */;
extern DELPHI_PACKAGE void __fastcall RectSize(const System::Types::TRectF &R, /* out */ float &RectWidth, /* out */ float &RectHeight)/* overload */;
extern DELPHI_PACKAGE void __fastcall RectCenter(const System::Types::TRect &R, /* out */ int &X, /* out */ int &Y)/* overload */;
extern DELPHI_PACKAGE void __fastcall RectCenter(const System::Types::TRectF &R, /* out */ float &X, /* out */ float &Y)/* overload */;
extern DELPHI_PACKAGE System::Types::TPoint __fastcall RectCenter(const System::Types::TRect &R)/* overload */;
extern DELPHI_PACKAGE void __fastcall TeeSetBitmapSize(Vcl::Graphics::TBitmap* const Bitmap, int Width, int Height);
extern DELPHI_PACKAGE void __fastcall TeeSetBitmapDPI(Vcl::Graphics::TBitmap* const Bitmap, int DPI)/* overload */;
extern DELPHI_PACKAGE bool __fastcall TeeSetBitmapDPI(System::Classes::TStream* const Stream, int DPI)/* overload */;
extern DELPHI_PACKAGE System::Types::TRect __fastcall PolygonBounds(const System::Types::TPoint *P, const int P_High)/* overload */;
extern DELPHI_PACKAGE System::Types::TRectF __fastcall PolygonBounds(const _POINTFLOAT *P, const int P_High)/* overload */;
extern DELPHI_PACKAGE bool __fastcall PolygonInPolygon(const System::Types::TPoint *A, const int A_High, const System::Types::TPoint *B, const int B_High);
extern DELPHI_PACKAGE double __fastcall PolygonArea(const TPointArray P);
extern DELPHI_PACKAGE _POINTFLOAT __fastcall PolygonCentroid(const TPointArray P)/* overload */;
extern DELPHI_PACKAGE TRGB __fastcall RGBValue(const System::Uitypes::TColor Color);
extern DELPHI_PACKAGE HPEN __fastcall TeeCreatePenSmallDots(const System::Uitypes::TColor AColor, const int Space = 0x0);
extern DELPHI_PACKAGE void __fastcall TeeSetTeePen(Vcl::Graphics::TPen* const FPen, TTeePen* const APen, System::Uitypes::TColor AColor);
extern DELPHI_PACKAGE void __fastcall ClipCanvas(Vcl::Graphics::TCanvas* const ACanvas, const System::Types::TRect &Rect);
extern DELPHI_PACKAGE void __fastcall ClipEllipse _DEPRECATED_ATTRIBUTE1("Please use ACanvas.ClipEllipse method.") (TTeeCanvas* const ACanvas, const System::Types::TRect &Rect);
extern DELPHI_PACKAGE void __fastcall ClipRoundRectangle _DEPRECATED_ATTRIBUTE1("Please use ACanvas.ClipRectangle method.") (TTeeCanvas* const ACanvas, const System::Types::TRect &Rect, int RoundSize);
extern DELPHI_PACKAGE void __fastcall ClipPolygon _DEPRECATED_ATTRIBUTE1("Please use ACanvas.ClipPolygon method.") (TTeeCanvas* const ACanvas, const System::Types::TPoint *Points, const int Points_High, int NumPoints);
extern DELPHI_PACKAGE System::Types::TRect __fastcall RectFromPolygon(const System::Types::TPoint *Points, const int Points_High, int NumPoints);
extern DELPHI_PACKAGE System::Types::TRect __fastcall RectFromTriangle(const TTrianglePoints &Points);
extern DELPHI_PACKAGE bool __fastcall RectangleInRectangle(const System::Types::TRect &Small, const System::Types::TRect &Big);
extern DELPHI_PACKAGE float __fastcall TeeHypot(const int X, const int Y)/* overload */;
extern DELPHI_PACKAGE float __fastcall TeeHypot(const float X, const float Y)/* overload */;
extern DELPHI_PACKAGE void __fastcall UnClipCanvas(Vcl::Graphics::TCanvas* const ACanvas);
extern DELPHI_PACKAGE System::Uitypes::TColor __fastcall RGBA(const TRGBA RGBA)/* overload */;
extern DELPHI_PACKAGE System::Uitypes::TColor __fastcall RGBA(const int r, const int g, const int b, const int a)/* overload */;
extern DELPHI_PACKAGE System::Uitypes::TColor __fastcall ApplyDark(System::Uitypes::TColor Color, System::Byte HowMuch);
extern DELPHI_PACKAGE System::Uitypes::TColor __fastcall ApplyBright(System::Uitypes::TColor Color, System::Byte HowMuch);
extern DELPHI_PACKAGE int __fastcall TeeGetDeviceCaps(HDC Handle, int Cap);
extern DELPHI_PACKAGE int __fastcall TeeBitsperPixel(HDC AHandle);
extern DELPHI_PACKAGE void __fastcall TeeCalcLines(/* out */ TRGBArray &Lines, Vcl::Graphics::TBitmap* Bitmap)/* overload */;
extern DELPHI_PACKAGE void __fastcall TeeCalcLines(/* out */ TRGBAArray &Lines, Vcl::Graphics::TBitmap* Bitmap)/* overload */;
extern DELPHI_PACKAGE void __fastcall TeeShadowSmooth(Vcl::Graphics::TBitmap* const Bitmap, Vcl::Graphics::TBitmap* const Back, int Left, int Top, int Width, int Height, int BlurSize, const float Smoothness, TCanvas3D* ACanvas, bool Clip);
extern DELPHI_PACKAGE void __fastcall SwapExtended(System::Extended &a, System::Extended &b);
extern DELPHI_PACKAGE void __fastcall SwapDouble(double &a, double &b);
extern DELPHI_PACKAGE void __fastcall SwapSingle(float &a, float &b);
extern DELPHI_PACKAGE void __fastcall SwapInteger(int &a, int &b);
extern DELPHI_PACKAGE void __fastcall TeeBlendBitmaps(const double Percent, Vcl::Graphics::TBitmap* ABitmap, Vcl::Graphics::TBitmap* BBitmap, const System::Types::TPoint &BOrigin, Vcl::Graphics::TBitmap* TransparentMask = (Vcl::Graphics::TBitmap*)(0x0));
extern DELPHI_PACKAGE System::Types::TPoint __fastcall PointAtDistance(const System::Types::TPoint &AFrom, const System::Types::TPoint &ATo, const float ADist)/* overload */;
extern DELPHI_PACKAGE _POINTFLOAT __fastcall PointAtDistance(const _POINTFLOAT &AFrom, const _POINTFLOAT &ATo, const float ADist)/* overload */;
extern DELPHI_PACKAGE double __fastcall TeeDistance(const double x, const double y);
extern DELPHI_PACKAGE void __fastcall SmoothStretch(Vcl::Graphics::TBitmap* Src, Vcl::Graphics::TBitmap* Dst)/* overload */;
extern DELPHI_PACKAGE void __fastcall SmoothStretch(Vcl::Graphics::TBitmap* Src, Vcl::Graphics::TBitmap* Dst, TSmoothStretchOption Option)/* overload */;
extern DELPHI_PACKAGE NativeUInt __fastcall TeeLoadLibrary(const System::UnicodeString FileName);
extern DELPHI_PACKAGE void __fastcall TeeFreeLibrary(NativeUInt hLibModule);
extern DELPHI_PACKAGE System::Classes::TResourceStream* __fastcall TeeResourceStream(const System::UnicodeString AName);
extern DELPHI_PACKAGE void __fastcall TeeActivateGroup(void);
extern DELPHI_PACKAGE System::TClass __fastcall TeeGetClass(const System::UnicodeString AClassName);
extern DELPHI_PACKAGE NativeInt __fastcall ObjectToTag(System::TObject* const AObject);
extern DELPHI_PACKAGE System::Uitypes::TColor __fastcall EditColor(System::Classes::TComponent* const AOwner, System::Uitypes::TColor AColor, const Vcl::Dialogs::TColorDialogOptions AOptions)/* overload */;
extern DELPHI_PACKAGE System::Uitypes::TColor __fastcall EditColor(System::Classes::TComponent* const AOwner, System::Uitypes::TColor AColor)/* overload */;
extern DELPHI_PACKAGE bool __fastcall EditColorDialog(System::Classes::TComponent* const AOwner, System::Uitypes::TColor &AColor, const Vcl::Dialogs::TColorDialogOptions AOptions = Vcl::Dialogs::TColorDialogOptions() );
extern DELPHI_PACKAGE void __fastcall TeeDrawCheckBox(int x, int y, Vcl::Graphics::TCanvas* const Canvas, bool Checked, System::Uitypes::TColor ABackColor, bool CheckBox = true);
}	/* namespace Tecanvas */
}	/* namespace Vcltee */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE_TECANVAS)
using namespace Vcltee::Tecanvas;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE)
using namespace Vcltee;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcltee_TecanvasHPP
