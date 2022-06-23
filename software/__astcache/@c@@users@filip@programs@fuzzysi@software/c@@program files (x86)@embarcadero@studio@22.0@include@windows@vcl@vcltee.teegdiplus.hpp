// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCLTee.TeeGDIPlus.pas' rev: 35.00 (Windows)

#ifndef Vcltee_TeegdiplusHPP
#define Vcltee_TeegdiplusHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <System.UITypes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.Graphics.hpp>
#include <Winapi.GDIPAPI.hpp>
#include <Winapi.GDIPOBJ.hpp>
#include <VCLTee.TeCanvas.hpp>
#include <VCLTee.TeeProcs.hpp>

//-- user supplied -----------------------------------------------------------
typedef Gdiplus::Graphics TGPGraphics;
typedef Gdiplus::Brush TGPBrush;
typedef Gdiplus::Pen TGPPen;
typedef Gdiplus::Font TGPFont;
typedef Gdiplus::PrivateFontCollection TGPPrivateFontCollection;
typedef Gdiplus::RectF TGPRectF;
typedef Gdiplus::PointF TGPPointF;
typedef Gdiplus::GraphicsPath TGPGraphicsPath;
typedef Gdiplus::Matrix TGPMatrix;
typedef Gdiplus::Image TGPImage;
typedef Gdiplus::Rect TGPRect;
typedef Gdiplus::PathGradientBrush TGPPathGradientBrush;
typedef Gdiplus::LinearGradientBrush TGPLinearGradientBrush;

namespace Vcltee
{
namespace Teegdiplus
{
//-- forward type declarations -----------------------------------------------
struct TColorBlend;
struct TTeeFontCache;
class DELPHICLASS TGDIPlusCanvas;
class DELPHICLASS TTeeGDIPlus;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TGDIPlusFontQuality : unsigned char { gpfBest, gpfDefault, gpfClearType, gpfNormal };

struct DECLSPEC_DRECORD TColorBlend
{
public:
	unsigned *Colors;
	float *Positions;
};


struct DECLSPEC_DRECORD TTeeFontCache
{
public:
	System::UnicodeString Name;
	float Size;
	System::Uitypes::TFontStyles Style;
};


class PASCALIMPLEMENTATION TGDIPlusCanvas : public Vcltee::Tecanvas::TTeeCanvas3D
{
	typedef Vcltee::Tecanvas::TTeeCanvas3D inherited;
	
	
private:
	typedef System::DynamicArray<Winapi::Gdipapi::TGPRectF> _TGDIPlusCanvas__1;
	
	typedef System::DynamicArray<Winapi::Gdipobj::TGPMatrix*> _TGDIPlusCanvas__2;
	
	
private:
	Winapi::Gdipobj::TGPGraphics* FGraphics;
	Winapi::Gdipobj::TGPFont* FGPFont;
	Winapi::Gdipobj::TGPPen* FGPPen;
	Winapi::Gdipobj::TGPBrush* FGPPenFill;
	Winapi::Gdipobj::TGPBrush* FGPBrush;
	int FX;
	int FY;
	int FZ;
	bool FAnti;
	float FScale;
	double ITextRotation;
	Vcltee::Tecanvas::TTeeCanvas3D* IXORCanvas;
	_TGDIPlusCanvas__1 IOldClipRect;
	Winapi::Gdipobj::TGPPrivateFontCollection* IPrivateFonts;
	System::StaticArray<unsigned, 256> IBlendColors;
	System::StaticArray<float, 256> IBlendPositions;
	Vcltee::Tecanvas::TPointFloatArray IGradientPolygon;
	TTeeFontCache IOldFont;
	System::Uitypes::TColor FBackColor;
	Vcltee::Tecanvas::TCanvasBackMode FBackMode;
	int FTextAlign;
	int FInterCharSize;
	bool ICachedAntialias;
	_TGDIPlusCanvas__2 ITransform;
	void __fastcall ApplyTransform(Vcltee::Tecanvas::TTeeTransform* const Transform);
	System::Byte __fastcall ApplyTransparency(const System::Byte Value);
	System::Types::TRect __fastcall CalcTextRect(const Winapi::Gdipapi::TGPPointF &Origin, const System::UnicodeString Text);
	void __fastcall CheckXorCanvas();
	Winapi::Gdipobj::TGPBrush* __fastcall CreateLinearGradient(Vcltee::Tecanvas::TTeeGradient* const AGradient, const Winapi::Gdipapi::TGPRectF &R);
	void __fastcall CreateGPPen(const unsigned AColor);
	void __fastcall DoAddFonts();
	void __fastcall DoSetAnti(const bool Value);
	void __fastcall DoSetAntiAlias(const bool Value);
	void __fastcall DoSetAntiAliasText();
	Winapi::Gdipobj::TGPGraphicsPath* __fastcall DonutPath(int XCenter, int YCenter, int XRadius, int YRadius, const double StartAngle, const double EndAngle, const double HolePercent);
	void __fastcall DrawBlendImage(Winapi::Gdipobj::TGPImage* const AImage, const Winapi::Gdipapi::TGPRect &Dest);
	void __fastcall FixAngles(const double StartAngle, const double EndAngle, /* out */ float &AStart, /* out */ float &ASweep);
	unsigned __fastcall GDIPColor(System::Uitypes::TColor AColor)/* overload */;
	__classmethod unsigned __fastcall GDIPColor(System::Uitypes::TColor AColor, System::Byte ATransparency)/* overload */;
	TGDIPlusFontQuality __fastcall GetAntiText();
	TColorBlend __fastcall GetColorBlend(Vcltee::Tecanvas::TTeeGradient* const AGradient, /* out */ int &ACount);
	void __fastcall GetGradientStartEnd(Vcltee::Tecanvas::TTeeGradient* const AGradient, /* out */ unsigned &Color0, /* out */ unsigned &Color1);
	unsigned __fastcall GradientToColor(Vcltee::Tecanvas::TTeeGradientColor* const AColor);
	bool __fastcall HasPen()/* overload */;
	bool __fastcall HasPen(const System::Types::TRect &R)/* overload */;
	bool __fastcall HasPen(const System::Types::TPoint *Points, const int Points_High, bool FixCurve = false)/* overload */;
	bool __fastcall HasPen(const _POINTFLOAT *Points, const int Points_High)/* overload */;
	bool __fastcall HasPen(const Winapi::Gdipapi::TGPRectF &Bounds)/* overload */;
	int __fastcall InternalTextWidth(const System::UnicodeString St, bool TypoGraphic = false);
	void __fastcall SetGradientColors(Vcltee::Tecanvas::TTeeGradient* const AGradient, Winapi::Gdipobj::TGPPathGradientBrush* const ABrush)/* overload */;
	void __fastcall SetGradientColors(Vcltee::Tecanvas::TTeeGradient* const AGradient, Winapi::Gdipobj::TGPLinearGradientBrush* const ABrush)/* overload */;
	__classmethod Winapi::Gdipobj::TGPBrush* __fastcall CreateNewBrush(Vcltee::Tecanvas::TTeeBrush* const ABrush, System::Byte ATransparency);
	Winapi::Gdipobj::TGPBrush* __fastcall GBrush()/* overload */;
	Winapi::Gdipobj::TGPBrush* __fastcall GBrush(const System::Types::TRect &R)/* overload */;
	Winapi::Gdipobj::TGPBrush* __fastcall GBrush(Vcltee::Tecanvas::TTeeBrush* const ABrush)/* overload */;
	Winapi::Gdipobj::TGPBrush* __fastcall GBrush(Vcltee::Tecanvas::TTeeBrush* const ABrush, const System::Types::TRect &R)/* overload */;
	Winapi::Gdipobj::TGPBrush* __fastcall GBrush(Vcltee::Tecanvas::TTeeBrush* const ABrush, const System::Types::TRectF &R)/* overload */;
	Winapi::Gdipobj::TGPBrush* __fastcall GBrush(Vcltee::Tecanvas::TTeeBrush* const ABrush, const System::Types::TPoint *Points, const int Points_High)/* overload */;
	Winapi::Gdipobj::TGPBrush* __fastcall GBrush(Vcltee::Tecanvas::TTeeBrush* const ABrush, const _POINTFLOAT *Points, const int Points_High)/* overload */;
	Winapi::Gdipobj::TGPGraphics* __fastcall GetGraphics();
	void __fastcall RecreateGraphics(const HDC AHandle);
	void __fastcall SetAnti(const bool Value);
	void __fastcall SetAntiText(const TGDIPlusFontQuality Value);
	void __fastcall SetScale(const float Value);
	void __fastcall SetTextHint(const TGDIPlusFontQuality AHint);
	
protected:
	virtual Vcltee::Tecanvas::TVisualBlock* __fastcall BeginEntity(const System::UnicodeString Entity, Vcltee::Tecanvas::TVisualBlock* const Visual = (Vcltee::Tecanvas::TVisualBlock*)(0x0), Vcltee::Tecanvas::TTeeTransform* const Transform = (Vcltee::Tecanvas::TTeeTransform*)(0x0));
	virtual void __fastcall EndEntity();
	virtual bool __fastcall CheckFastBrush();
	virtual void __fastcall DoChangedBrush(Vcltee::Tecanvas::TTeeBrush* const ABrush);
	virtual void __fastcall DoChangedFont();
	virtual void __fastcall DoChangedPen();
	virtual void __fastcall DrawLighting(Vcltee::Tecanvas::TEdgeStyle AEdgeStyle, int ZPos, const System::Types::TRect &Z0BevelRect, const System::Types::TRect &Z1BevelRect, const System::Types::TRect &Z0DonutRect, int IStartAngle, int IEndAngle, const System::Types::TPoint &Middle0, bool IsDonut);
	virtual void __fastcall FastLineTo(const int X, const int Y);
	virtual bool __fastcall GetSupportsXORMode();
	void __fastcall PushClipRect();
	Winapi::Gdipobj::TGPBrush* __fastcall TextBrush(const System::Uitypes::TColor AColor, const Winapi::Gdipapi::TGPPointF &Origin, const System::UnicodeString Text);
	void __fastcall DrawSmoothShadow(Winapi::Gdipobj::TGPGraphicsPath* const P, const unsigned AColor, const float ABalance);
	virtual void __fastcall SetCanvas(Vcl::Graphics::TCanvas* const ACanvas);
	virtual void __fastcall SmoothShadow(Vcltee::Tecanvas::TTeeShadow* const Shadow, const System::Types::TRect &Rect, bool Ellipse, int RoundSize, const System::Types::TPoint *P, const int P_High, int DonutPercent = 0x0, const double StartAngle = 0.000000E+00, const double EndAngle = 3.600000E+02);
	virtual System::Uitypes::TColor __fastcall GetBackColor();
	virtual Vcltee::Tecanvas::TCanvasBackMode __fastcall GetBackMode();
	virtual int __fastcall GetTextAlign();
	virtual bool __fastcall IsAliased();
	virtual Vcltee::Tecanvas::TCanvasStyle __fastcall CanvasStyle();
	virtual void __fastcall SetAntiAlias(const bool Value);
	virtual void __fastcall SetBackColor(const System::Uitypes::TColor Value);
	virtual void __fastcall SetBackMode(const Vcltee::Tecanvas::TCanvasBackMode Value);
	virtual void __fastcall SetFastLine(const bool Value);
	virtual void __fastcall SetInterCharSize(int ASize);
	virtual void __fastcall SetPixel(int X, int Y, System::Uitypes::TColor Value);
	virtual void __fastcall SetPixel3D(int X, int Y, int Z, System::Uitypes::TColor Value);
	virtual void __fastcall SetTextAlign(const int Value);
	virtual void __fastcall SetUseBuffer(bool Value);
	void __fastcall XORRectangle(const System::Types::TRect &R);
	void __fastcall XORLine(const int X0, const int Y0, const int X1, const int Y1);
	
public:
	__fastcall virtual TGDIPlusCanvas();
	__fastcall virtual ~TGDIPlusCanvas();
	__classmethod virtual System::UnicodeString __fastcall Description();
	__classmethod virtual System::UnicodeString __fastcall EditorClass();
	virtual System::Types::TRect __fastcall InitWindow(Vcl::Graphics::TCanvas* const DestCanvas, Vcltee::Tecanvas::TView3DOptions* const A3DOptions, System::Uitypes::TColor ABackColor, bool Is3D, const System::Types::TRect &UserRect);
	__classmethod virtual bool __fastcall IsAvailable();
	virtual void __fastcall ShowImage(Vcl::Graphics::TCanvas* const DestCanvas, Vcl::Graphics::TCanvas* const DefaultCanvas, const System::Types::TRect &UserRect);
	virtual void __fastcall Arc(const int Left, const int Top, const int Right, const int Bottom, const int StartX, const int StartY, const int EndX, const int EndY)/* overload */;
	virtual void __fastcall Arc(const int Left, const int Top, const int Right, const int Bottom, const float StartAngle, const float EndAngle)/* overload */;
	virtual void __fastcall ArcTo(const int X1, const int Y1, const int X2, const int Y2, const int X3, const int Y3, const int X4, const int Y4, const bool ClockWise = false);
	virtual Vcltee::Tecanvas::TTeeBlend* __fastcall BeginBlending(const System::Types::TRect &R, Vcltee::Tecanvas::TTeeTransparency Transparency);
	virtual void __fastcall EndBlending(Vcltee::Tecanvas::TTeeBlend* const Blend);
	virtual void __fastcall ClipEllipse(const System::Types::TRect &Rect, bool Inverted = false);
	virtual void __fastcall ClipPolygon(const System::Types::TPoint *Points, const int Points_High, int NumPoints, bool DiffRegion = false);
	virtual void __fastcall ClipRectangle(const System::Types::TRect &Rect)/* overload */;
	virtual void __fastcall ClipRectangle(const System::Types::TRect &Rect, int RoundX, int RoundY)/* overload */;
	virtual Vcltee::Tecanvas::TTeeBasePath* __fastcall CreatePath(const Vcltee::Tecanvas::TPointFloatArray Points, const Vcltee::Tecanvas::TPathPointTypes Types)/* overload */;
	virtual void __fastcall Curve(const System::Types::TPoint *Points, const int Points_High, const float Tension, bool Closed, const float Z);
	virtual void __fastcall DoHorizLine(const int X0, const int X1, const int Y);
	virtual void __fastcall Donut(int XCenter, int YCenter, int XRadius, int YRadius, const double StartAngle, const double EndAngle, const double HolePercent)/* overload */;
	virtual void __fastcall DoVertLine(const int X, const int Y0, const int Y1);
	virtual void __fastcall Draw(int X, int Y, Vcl::Graphics::TGraphic* const AGraphic);
	virtual void __fastcall Ellipse(const int X1, const int Y1, const int X2, const int Y2)/* overload */;
	virtual void __fastcall FillRect(const System::Types::TRect &Rect);
	virtual void __fastcall Line(const int X0, const int Y0, const int X1, const int Y1)/* overload */;
	virtual void __fastcall LineTo(const int X, const int Y)/* overload */;
	virtual void __fastcall LineTo3D(const int X, const int Y, const int Z)/* overload */;
	virtual void __fastcall MoveTo(const int X, const int Y)/* overload */;
	virtual void __fastcall MoveTo3D(const int X, const int Y, const int Z)/* overload */;
	void __fastcall Path(Winapi::Gdipobj::TGPGraphicsPath* const P);
	virtual void __fastcall Pie(const System::Types::TRect &R, const double StartAngle, const double EndAngle)/* overload */;
	virtual void __fastcall Pie(int X1, int Y1, int X2, int Y2, int X3, int Y3, int X4, int Y4)/* overload */;
	virtual void __fastcall Polygon(const System::Types::TPoint *Points, const int Points_High);
	virtual void __fastcall PolygonFloat(const _POINTFLOAT *Points, const int Points_High);
	virtual void __fastcall Polyline(const System::Types::TPoint *Points, const int Points_High)/* overload */;
	virtual void __fastcall PolylineFloat(const _POINTFLOAT *Points, const int Points_High)/* overload */;
	virtual void __fastcall Rectangle(const int X0, const int Y0, const int X1, const int Y1)/* overload */;
	__classmethod void __fastcall ResizeBitmap(Vcl::Graphics::TBitmap* const Source, Vcl::Graphics::TBitmap* const Dest);
	virtual void __fastcall RotateLabel(int x, int y, const System::UnicodeString St, double RotDegree, bool AllowHTML);
	virtual void __fastcall RoundRect(int X1, int Y1, int X2, int Y2, int X3, int Y3)/* overload */;
	__classmethod Winapi::Gdipobj::TGPGraphicsPath* __fastcall RoundRectPath(const System::Types::TRect &R, int x, int y);
	virtual void __fastcall RoundRectWithZ(const System::Types::TRect &R, int X, int Y, int Z);
	virtual void __fastcall StretchDraw(const System::Types::TRect &ARect, Vcl::Graphics::TGraphic* const AGraphic)/* overload */;
	virtual void __fastcall TextOut(int X, int Y, const System::UnicodeString Text)/* overload */;
	HIDESBASE void __fastcall TextOut(float X, float Y, const System::UnicodeString Text)/* overload */;
	virtual void __fastcall TextOut3D(int x, int y, int z, const System::UnicodeString Text, bool AllowHTML)/* overload */;
	virtual int __fastcall TextHeight(const System::UnicodeString St)/* overload */;
	virtual _POINTFLOAT __fastcall TextSize(const System::UnicodeString St)/* overload */;
	virtual int __fastcall TextWidth(const System::UnicodeString St)/* overload */;
	virtual void __fastcall HorizLine3D(int Left, int Right, int Y, int Z)/* overload */;
	virtual void __fastcall LineWithZ(int X0, int Y0, int X1, int Y1, int Z)/* overload */;
	virtual void __fastcall UnClipRectangle();
	virtual void __fastcall GradientFill(const System::Types::TRect &Rect, System::Uitypes::TColor StartColor, System::Uitypes::TColor EndColor, Vcltee::Tecanvas::TGradientDirection Direction, int Balance = 0x32, int RadialX = 0x0, int RadialY = 0x0)/* overload */;
	virtual void __fastcall VertLine3D(int X, int Top, int Bottom, int Z)/* overload */;
	virtual void __fastcall ZLine3D(int X, int Y, int Z0, int Z1);
	__property Winapi::Gdipobj::TGPGraphics* Graphics = {read=GetGraphics};
	__property float Scale = {read=FScale, write=SetScale};
	__property bool AntiAlias = {read=FAnti, write=SetAnti, default=1};
	__property TGDIPlusFontQuality AntiAliasText = {read=GetAntiText, write=SetAntiText, default=1};
	/* Hoisted overloads: */
	
public:
	inline void __fastcall  Arc(const int Left, const int Top, const int Right, const int Bottom, const int StartX, const int StartY, const int EndX, const int EndY, const int Z){ Vcltee::Tecanvas::TCanvas3D::Arc(Left, Top, Right, Bottom, StartX, StartY, EndX, EndY, Z); }
	inline void __fastcall  Arc(const System::Types::TRect &R, const float StartAngle, const float EndAngle){ Vcltee::Tecanvas::TTeeCanvas::Arc(R, StartAngle, EndAngle); }
	inline Vcltee::Tecanvas::TTeeBasePath* __fastcall  CreatePath(){ return Vcltee::Tecanvas::TTeeCanvas::CreatePath(); }
	inline void __fastcall  Ellipse(const System::Types::TRect &R){ Vcltee::Tecanvas::TTeeCanvas::Ellipse(R); }
	inline void __fastcall  Line(const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint){ Vcltee::Tecanvas::TTeeCanvas::Line(FromPoint, ToPoint); }
	inline void __fastcall  LineTo(const System::Types::TPoint &P){ Vcltee::Tecanvas::TTeeCanvas::LineTo(P); }
	inline void __fastcall  LineTo(const _POINTFLOAT &P){ Vcltee::Tecanvas::TTeeCanvas::LineTo(P); }
	inline void __fastcall  LineTo3D(const Vcltee::Tecanvas::TPoint3D &P){ Vcltee::Tecanvas::TCanvas3D::LineTo3D(P); }
	inline void __fastcall  LineTo3D(const float X, const float Y, const float Z){ Vcltee::Tecanvas::TCanvas3D::LineTo3D(X, Y, Z); }
	inline void __fastcall  MoveTo(const System::Types::TPoint &P){ Vcltee::Tecanvas::TTeeCanvas::MoveTo(P); }
	inline void __fastcall  MoveTo(const _POINTFLOAT &P){ Vcltee::Tecanvas::TTeeCanvas::MoveTo(P); }
	inline void __fastcall  MoveTo3D(const Vcltee::Tecanvas::TPoint3D &P){ Vcltee::Tecanvas::TCanvas3D::MoveTo3D(P); }
	inline void __fastcall  MoveTo3D(const float X, const float Y, const float Z){ Vcltee::Tecanvas::TCanvas3D::MoveTo3D(X, Y, Z); }
	inline void __fastcall  Polyline(const System::Types::TPoint *Points, const int Points_High, int Z){ Vcltee::Tecanvas::TCanvas3D::Polyline(Points, Points_High, Z); }
	inline void __fastcall  PolylineFloat(const System::Math::Vectors::TPoint3D *Points, const int Points_High){ Vcltee::Tecanvas::TTeeCanvas3D::PolylineFloat(Points, Points_High); }
	inline void __fastcall  Rectangle(const System::Types::TRect &R, int Z){ Vcltee::Tecanvas::TCanvas3D::Rectangle(R, Z); }
	inline void __fastcall  Rectangle(const int X0, const int Y0, const int X1, const int Y1, int Z){ Vcltee::Tecanvas::TCanvas3D::Rectangle(X0, Y0, X1, Y1, Z); }
	inline void __fastcall  Rectangle(const System::Types::TRect &R){ Vcltee::Tecanvas::TTeeCanvas::Rectangle(R); }
	inline void __fastcall  RoundRect(const System::Types::TRect &R, int X, int Y, int Z0, int Z1){ Vcltee::Tecanvas::TCanvas3D::RoundRect(R, X, Y, Z0, Z1); }
	inline void __fastcall  RoundRect(const System::Types::TRect &R, int X, int Y, Vcltee::Tecanvas::TTeeCorners* const ACorners = (Vcltee::Tecanvas::TTeeCorners*)(0x0)){ Vcltee::Tecanvas::TTeeCanvas::RoundRect(R, X, Y, ACorners); }
	inline void __fastcall  StretchDraw(const System::Types::TRect &Rect, Vcl::Graphics::TGraphic* const Graphic, const double Pos, Vcltee::Tecanvas::TCanvas3DPlane Plane = (Vcltee::Tecanvas::TCanvas3DPlane)(0x2)){ Vcltee::Tecanvas::TCanvas3D::StretchDraw(Rect, Graphic, Pos, Plane); }
	inline void __fastcall  TextOut(const int X, const int Y, const System::UnicodeString Text, bool AllowHtml){ Vcltee::Tecanvas::TTeeCanvas::TextOut(X, Y, Text, AllowHtml); }
	inline void __fastcall  TextOut3D(int x, int y, int z, const System::UnicodeString Text){ Vcltee::Tecanvas::TCanvas3D::TextOut3D(x, y, z, Text); }
	inline int __fastcall  TextHeight(const System::WideString St){ return Vcltee::Tecanvas::TTeeCanvas::TextHeight(St); }
	inline _POINTFLOAT __fastcall  TextSize(const System::WideString St){ return Vcltee::Tecanvas::TTeeCanvas::TextSize(St); }
	inline int __fastcall  TextWidth(const System::WideString St){ return Vcltee::Tecanvas::TTeeCanvas::TextWidth(St); }
	inline void __fastcall  LineWithZ(const System::Types::TPoint &FromPoint, const System::Types::TPoint &ToPoint, int Z){ Vcltee::Tecanvas::TCanvas3D::LineWithZ(FromPoint, ToPoint, Z); }
	inline void __fastcall  GradientFill(Vcltee::Tecanvas::TCustomTeeGradient* const Gradient, const System::Types::TRect &Rect){ Vcltee::Tecanvas::TTeeCanvas3D::GradientFill(Gradient, Rect); }
	
};


class PASCALIMPLEMENTATION TTeeGDIPlus : public System::Classes::TComponent
{
	typedef System::Classes::TComponent inherited;
	
private:
	bool FActive;
	bool FAntialias;
	TGDIPlusFontQuality FAntiAliasText;
	float FScale;
	Vcltee::Teeprocs::TCustomTeePanel* FTeePanel;
	void __fastcall Activate();
	TGDIPlusCanvas* __fastcall GetCanvas();
	bool __fastcall IsScaleStored();
	void __fastcall RemoveTag();
	void __fastcall ResetCanvas();
	void __fastcall SetActive(const bool Value);
	void __fastcall SetAntialias(const bool Value);
	void __fastcall SetAntialiasText(const TGDIPlusFontQuality Value);
	void __fastcall SetScale(const float Value);
	void __fastcall SetTeePanel(Vcltee::Teeprocs::TCustomTeePanel* const Value);
	
protected:
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	
public:
	__fastcall virtual TTeeGDIPlus(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTeeGDIPlus();
	__property TGDIPlusCanvas* Canvas = {read=GetCanvas};
	
__published:
	__property bool Active = {read=FActive, write=SetActive, default=0};
	__property bool Antialias = {read=FAntialias, write=SetAntialias, default=1};
	__property TGDIPlusFontQuality AntiAliasText = {read=FAntiAliasText, write=SetAntialiasText, default=1};
	__property float Scale = {read=FScale, write=SetScale, stored=IsScaleStored};
	__property Vcltee::Teeprocs::TCustomTeePanel* TeePanel = {read=FTeePanel, write=SetTeePanel};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Teegdiplus */
}	/* namespace Vcltee */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE_TEEGDIPLUS)
using namespace Vcltee::Teegdiplus;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE)
using namespace Vcltee;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcltee_TeegdiplusHPP
