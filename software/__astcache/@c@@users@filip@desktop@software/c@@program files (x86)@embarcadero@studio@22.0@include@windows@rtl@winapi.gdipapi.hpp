// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Winapi.GDIPAPI.pas' rev: 35.00 (Windows)

#ifndef Winapi_GdipapiHPP
#define Winapi_GdipapiHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <Winapi.ActiveX.hpp>
#include <Winapi.DirectDraw.hpp>
#include <System.Math.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------
#include <GdiPlus.h>

namespace Winapi
{
namespace Gdipapi
{
//-- forward type declarations -----------------------------------------------
struct TGPSizeF;
struct TGPSize;
struct TGPPointF;
struct TGPPoint;
struct TGPRectF;
struct TGPRect;
//-- type declarations -------------------------------------------------------
typedef TGPSizeF *PGPSizeF;

struct DECLSPEC_DRECORD TGPSizeF
{
public:
	float Width;
	float Height;
};


typedef TGPSize *PGPSize;

struct DECLSPEC_DRECORD TGPSize
{
public:
	int Width;
	int Height;
};


typedef TGPPointF *PGPPointF;

struct DECLSPEC_DRECORD TGPPointF
{
public:
	float X;
	float Y;
};


typedef System::DynamicArray<TGPPointF> TPointFDynArray;

typedef TGPPoint *PGPPoint;

struct DECLSPEC_DRECORD TGPPoint
{
public:
	int X;
	int Y;
};


typedef System::DynamicArray<TGPPoint> TPointDynArray;

typedef TGPRectF *PGPRectF;

struct DECLSPEC_DRECORD TGPRectF
{
public:
	float X;
	float Y;
	float Width;
	float Height;
};


typedef System::DynamicArray<TGPRectF> TRectFDynArray;

typedef TGPRect *PGPRect;

struct DECLSPEC_DRECORD TGPRect
{
public:
	int X;
	int Y;
	int Width;
	int Height;
};


typedef System::DynamicArray<TGPRect> TRectDynArray;

//-- var, const, procedure ---------------------------------------------------
}	/* namespace Gdipapi */
}	/* namespace Winapi */
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Winapi_GdipapiHPP
