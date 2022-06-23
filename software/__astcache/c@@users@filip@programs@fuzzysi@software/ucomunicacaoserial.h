//---------------------------------------------------------------------------

#ifndef UComunicacaoSerialH
#define UComunicacaoSerialH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <VCLTee.Chart.hpp>
#include <VCLTee.Series.hpp>
#include <VclTee.TeeGDIPlus.hpp>
#include <VCLTee.TeEngine.hpp>
#include <VCLTee.TeeProcs.hpp>
#include "cspin.h"
//---------------------------------------------------------------------------
class TAutoNormalization : public TForm
{
__published:	// IDE-managed Components
	TChart *Chart1;
	TLineSeries *Series1;
	TPanel *Panel1;
	TButton *BtClosePort;
	TButton *BtOpenPort;
	TComboBox *CbBaudRate1;
	TLabel *Label2;
	TComboBox *CbSerialPort1;
	TLabel *Label1;
	TLineSeries *Series2;
	TLabel *Label3;
	TEdit *RPMInput;
	TButton *Ok;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TButton *Ativa;
	TButton *Res;
	TButton *Set;
	TButton *Freio;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall BtOpenPortClick(TObject *Sender);
	void __fastcall Chart1AfterDraw(TObject *Sender);
	void __fastcall BtClosePortClick(TObject *Sender);
	void __fastcall CbSerialPort1DropDown(TObject *Sender);
	void __fastcall CSpinEdit1Change(TObject *Sender);
	void __fastcall OkClick(TObject *Sender);
	void __fastcall AtivaClick(TObject *Sender);
	void __fastcall ResClick(TObject *Sender);
	void __fastcall SetClick(TObject *Sender);
	void __fastcall FreioClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TAutoNormalization(TComponent* Owner);

    void __fastcall AtualizaGrafico();
	void __fastcall LerPortaSerial();

};



//---------------------------------------------------------------------------

class Thread : public TThread
{
        private:
        protected:
                void __fastcall Execute();

        public:
                __fastcall Thread(bool CreateSuspended);

};

//---------------------------------------------------------------------------



//---------------------------------------------------------------------------
extern PACKAGE TAutoNormalization *AutoNormalization;
//---------------------------------------------------------------------------
#endif
