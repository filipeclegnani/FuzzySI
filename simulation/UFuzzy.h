//---------------------------------------------------------------------------

#ifndef UFuzzyH
#define UFuzzyH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <VCLTee.Chart.hpp>
#include <VCLTee.Series.hpp>
#include <VclTee.TeeGDIPlus.hpp>
#include <VCLTee.TeEngine.hpp>
#include <VCLTee.TeeProcs.hpp>
//---------------------------------------------------------------------------
class TFmFuzzy : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *Label6;
	TPanel *Panel1;
	TLabel *Label1;
	TLabel *Label2;
	TChart *Chart2;
	TLineSeries *Series5;
	TChart *Chart3;
	TLineSeries *Series7;
	TLineSeries *Series8;
	TTrackBar *tbService;
	TTrackBar *tbFood;
	TChart *Chart4;
	TLineSeries *Series6;
	TLineSeries *Series4;
	TLineSeries *LineSeries3;
	TStatusBar *StatusBar1;
	TChart *Chart1;
	TLineSeries *Series1;
	TLineSeries *Series2;
	TLineSeries *Series3;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall tbServiceChange(TObject *Sender);
	void __fastcall tbFoodChange(TObject *Sender);
	void __fastcall Chart4AfterDraw(TObject *Sender);
	void __fastcall Chart1AfterDraw(TObject *Sender);
	void __fastcall Chart2AfterDraw(TObject *Sender);
	void __fastcall Chart3AfterDraw(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TFmFuzzy(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFmFuzzy *FmFuzzy;
//---------------------------------------------------------------------------
#endif
