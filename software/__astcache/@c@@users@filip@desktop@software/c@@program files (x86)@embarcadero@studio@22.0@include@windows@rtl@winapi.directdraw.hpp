// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Winapi.DirectDraw.pas' rev: 35.00 (Windows)

#ifndef Winapi_DirectdrawHPP
#define Winapi_DirectdrawHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------
#define DIRECTDRAW_VERSION         0x0700
#include "ddraw.h"
#include "dvp.h"
DECLARE_DINTERFACE_TYPE(IDirectDraw);
DECLARE_DINTERFACE_TYPE(IDirectDraw2);
DECLARE_DINTERFACE_TYPE(IDirectDraw4);
DECLARE_DINTERFACE_TYPE(IDirectDraw7);
DECLARE_DINTERFACE_TYPE(IDirectDrawSurface);
DECLARE_DINTERFACE_TYPE(IDirectDrawSurface2);
DECLARE_DINTERFACE_TYPE(IDirectDrawSurface3);
DECLARE_DINTERFACE_TYPE(IDirectDrawSurface4);
DECLARE_DINTERFACE_TYPE(IDirectDrawSurface7);
DECLARE_DINTERFACE_TYPE(IDirectDrawPalette);
DECLARE_DINTERFACE_TYPE(IDirectDrawClipper);
DECLARE_DINTERFACE_TYPE(IDirectDrawColorControl);
DECLARE_DINTERFACE_TYPE(IDirectDrawGammaControl);
//typedef LPCLIPPERCALLBACK TClipperCallback;
//typedef LPCLIPPERCALLBACK TDDEnumModesCallback;
//typedef LPDDENUMMODESCALLBACK2 TDDEnumModesCallback2;
//typedef LPDDENUMSURFACESCALLBACK TDDEnumSurfacesCallback;
//typedef LPDDENUMSURFACESCALLBACK2 TDDEnumSurfacesCallback2;
//typedef LPDDENUMSURFACESCALLBACK7 TDDEnumSurfacesCallback7;
DECLARE_DINTERFACE_TYPE(IDirectDrawVideoPort);
DECLARE_DINTERFACE_TYPE(IDDVideoPortContainer);
DECLARE_DINTERFACE_TYPE(IDirectDrawVideoPortNotify);

namespace Winapi
{
namespace Directdraw
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
typedef _DDBLTFX *PDDBltFX;

typedef _DDBLTFX TDDBltFX;

typedef _DDSCAPS *PDDSCaps;

typedef _DDSCAPS TDDSCaps;

typedef _DDOSCAPS *PDDOSCaps;

typedef _DDOSCAPS TDDOSCaps;

typedef _DDSCAPSEX *PDDSCapsEx;

typedef _DDSCAPSEX TDDSCapsEx;

typedef _DDSCAPS2 *PDDSCaps2;

typedef _DDSCAPS2 TDDSCaps2;

typedef _DDCAPS_DX1 *PDDCaps_DX1;

typedef _DDCAPS_DX1 TDDCaps_DX1;

typedef _DDCAPS_DX3 *PDDCaps_DX3;

typedef _DDCAPS_DX3 TDDCaps_DX3;

typedef _DDCAPS_DX5 *PDDCaps_DX5;

typedef _DDCAPS_DX5 TDDCaps_DX5;

typedef _DDCAPS_DX6 *PDDCaps_DX6;

typedef _DDCAPS_DX6 TDDCaps_DX6;

typedef _DDCAPS_DX6 *PDDCaps_DX7;

typedef _DDCAPS_DX6 TDDCaps_DX7;

typedef PDDCaps_DX7 PDDCaps;

typedef _DDCAPS_DX6 TDDCaps;

typedef _DDPIXELFORMAT *PDDPixelFormat;

typedef _DDPIXELFORMAT TDDPixelFormat;

typedef PDDPixelFormat PDDPixelFormat_DX3;

typedef _DDPIXELFORMAT TDDPixelFormat_DX3;

typedef PDDPixelFormat PDDPixelFormat_DX5;

typedef _DDPIXELFORMAT TDDPixelFormat_DX5;

typedef PDDPixelFormat PDDPixelFormat_DX6;

typedef _DDPIXELFORMAT TDDPixelFormat_DX6;

typedef PDDPixelFormat PDDPixelFormat_DX7;

typedef _DDPIXELFORMAT TDDPixelFormat_DX7;

typedef _DDOVERLAYFX *PDDOverlayFX;

typedef _DDOVERLAYFX TDDOverlayFX;

typedef _DDBLTBATCH *PDDBltBatch;

typedef _DDBLTBATCH TDDBltBatch;

typedef _DDGAMMARAMP *PDDGammaRamp;

typedef _DDGAMMARAMP TDDGammaRamp;

typedef tagDDDEVICEIDENTIFIER *PDDDeviceIdentifier;

typedef tagDDDEVICEIDENTIFIER TDDDeviceIdentifier;

typedef tagDDDEVICEIDENTIFIER2 *PDDDeviceIdentifier2;

typedef tagDDDEVICEIDENTIFIER2 TDDDeviceIdentifier2;

typedef _DDSURFACEDESC *PDDSurfaceDesc;

typedef _DDSURFACEDESC TDDSurfaceDesc;

typedef PDDSurfaceDesc PDDSurfaceDesc_DX5;

typedef _DDSURFACEDESC TDDSurfaceDesc_DX5;

typedef PDDSurfaceDesc PDDSurfaceDesc_DX6;

typedef _DDSURFACEDESC TDDSurfaceDesc_DX6;

typedef _DDSURFACEDESC2 *PDDSurfaceDesc2;

typedef _DDSURFACEDESC2 TDDSurfaceDesc2;

typedef _DDOPTSURFACEDESC *PDDOptSurfaceDesc;

typedef _DDOPTSURFACEDESC TDDOptSurfaceDesc;

typedef _DDCOLORCONTROL *PDDColorControl;

typedef _DDCOLORCONTROL TDDColorControl;

//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE GUID NilGUID;
static const int _MAKE_DDHRESULT = int(-2005532672);
#define DirectDrawDll L"ddraw.dll"
extern DELPHI_PACKAGE System::UnicodeString __fastcall DDErrorString(HRESULT Value);
extern DELPHI_PACKAGE bool __fastcall DirectDrawLoaded(void);
extern DELPHI_PACKAGE bool __fastcall UnLoadDirectDraw(void);
extern DELPHI_PACKAGE bool __fastcall LoadDirectDraw(void);
}	/* namespace Directdraw */
}	/* namespace Winapi */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_WINAPI_DIRECTDRAW)
using namespace Winapi::Directdraw;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_WINAPI)
using namespace Winapi;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Winapi_DirectdrawHPP
