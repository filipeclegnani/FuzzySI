// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'VCLTee.TeeSpline.pas' rev: 35.00 (Windows)

#ifndef Vcltee_TeesplineHPP
#define Vcltee_TeesplineHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <Winapi.Windows.hpp>
#include <System.Classes.hpp>
#include <System.Generics.Collections.hpp>
#include <VCLTee.TeCanvas.hpp>
#include <VCLTee.TeEngine.hpp>

//-- user supplied -----------------------------------------------------------
#define TeeSpline_MaxError  ((System::Extended)1.000000E-05)

namespace Vcltee
{
namespace Teespline
{
//-- forward type declarations -----------------------------------------------
struct TVertex;
class DELPHICLASS TBSpline;
class DELPHICLASS TSmoothingFunction;
//-- type declarations -------------------------------------------------------
typedef double TDataType;

struct DECLSPEC_DRECORD TVertex
{
public:
	double X;
	double Y;
};


typedef System::DynamicArray<TVertex> T2DPointList;

typedef System::DynamicArray<TVertex> TVertexList;

typedef System::DynamicArray<bool> TKnuckleList;

typedef System::DynamicArray<double> TMatrixRow;

#ifndef _WIN64
#pragma pack(push,4)
#endif /* not _WIN64 */
class PASCALIMPLEMENTATION TBSpline : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::DynamicArray<TMatrixRow> _TBSpline__1;
	
	
private:
	_TBSpline__1 Matrix;
	int FNoPoints;
	int FCapacity;
	T2DPointList FPointList;
	TVertexList FVertexList;
	TKnuckleList FKnuckleList;
	bool FBuild;
	int FNoVertices;
	bool FInterpolated;
	int FFragments;
	void __fastcall ClearVertexList();
	TVertexList __fastcall CreateNewVertexList();
	bool __fastcall GetKnuckle(int Index);
	int __fastcall GetNumberOfVertices();
	TVertex __fastcall GetPoint(int Index);
	void __fastcall Interpolate();
	void __fastcall PhantomPoints();
	void __fastcall SetBuild(bool Val);
	void __fastcall SetCapacity(int NewCapacity);
	void __fastcall SetFragments(const int Value);
	void __fastcall SetInterpolated(const bool Value);
	void __fastcall SetKnuckle(int Index, bool Value);
	void __fastcall SetPoint(int Index, const TVertex &Value);
	
public:
	__fastcall TBSpline()/* overload */;
	__fastcall TBSpline(const _POINTFLOAT *P, const int P_High)/* overload */;
	__fastcall virtual ~TBSpline();
	void __fastcall AddPoint(const double X, const double Y);
	void __fastcall Clear();
	void __fastcall Rebuild();
	TVertex __fastcall Value(const double Parameter);
	__property bool Build = {read=FBuild, write=SetBuild, nodefault};
	__property int Count = {read=FNoPoints, nodefault};
	__property int Fragments = {read=FFragments, write=SetFragments, nodefault};
	__property bool Knuckle[int Index] = {read=GetKnuckle, write=SetKnuckle};
	__property bool Interpolated = {read=FInterpolated, write=SetInterpolated, nodefault};
	__property int NumberOfVertices = {read=GetNumberOfVertices, nodefault};
	__property TVertex Point[int Index] = {read=GetPoint, write=SetPoint};
};

#ifndef _WIN64
#pragma pack(pop)
#endif /* not _WIN64 */

class PASCALIMPLEMENTATION TSmoothingFunction : public Vcltee::Teengine::TTeeFunction
{
	typedef Vcltee::Teengine::TTeeFunction inherited;
	
private:
	bool FInterpolate;
	int FFactor;
	void __fastcall SetFactor(const int Value);
	void __fastcall SetInterpolate(const bool Value);
	
protected:
	__classmethod virtual System::UnicodeString __fastcall GetEditorClass();
	virtual void __fastcall PrepareForGallery(Vcltee::Teengine::TCustomAxisPanel* const Chart);
	
public:
	__fastcall virtual TSmoothingFunction(System::Classes::TComponent* AOwner);
	DYNAMIC void __fastcall AddPoints(Vcltee::Teengine::TChartSeries* Source);
	
__published:
	__property bool Interpolate = {read=FInterpolate, write=SetInterpolate, default=1};
	__property int Factor = {read=FFactor, write=SetFactor, default=4};
public:
	/* TComponent.Destroy */ inline __fastcall virtual ~TSmoothingFunction() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static const System::Word MaxFragments = System::Word(0x258);
static const System::Word MaxResults = System::Word(0x262);
static const System::Byte MaxCalcSteps = System::Byte(0x96);
static const System::Int8 MaxIterations = System::Int8(0x50);
static const System::Int8 VerticesIncrement = System::Int8(0x5);
}	/* namespace Teespline */
}	/* namespace Vcltee */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE_TEESPLINE)
using namespace Vcltee::Teespline;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_VCLTEE)
using namespace Vcltee;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Vcltee_TeesplineHPP
