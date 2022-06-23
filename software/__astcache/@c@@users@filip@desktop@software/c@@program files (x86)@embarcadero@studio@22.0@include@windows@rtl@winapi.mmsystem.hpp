// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Winapi.MMSystem.pas' rev: 35.00 (Windows)

#ifndef Winapi_MmsystemHPP
#define Winapi_MmsystemHPP

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

#include <mmsystem.h>


namespace Winapi
{
namespace Mmsystem
{
//-- forward type declarations -----------------------------------------------
struct TMCI_Sound_Parms;
struct MCI_SAVE_PARMSA;
struct MCI_SAVE_PARMSW;
//-- type declarations -------------------------------------------------------
typedef mmtime_tag *PMMTime;

typedef mmtime_tag TMMTime;

typedef DRVCONFIGINFOEX *PDrvConfigInfoEx;

typedef DRVCONFIGINFOEX TDrvConfigInfoEx;

typedef tagDRVCONFIGINFO *PDrvConfigInfo;

typedef tagDRVCONFIGINFO TDrvConfigInfo;

typedef int __stdcall (*TFNDriverProc)(NativeUInt dwDriverId, NativeInt hdrvr, unsigned msg, NativeInt lparam1, NativeInt lparam2);

typedef void __stdcall (*TFNDrvCallBack)(NativeInt hdrvr, unsigned uMsg, NativeUInt dwUser, NativeUInt dw1, NativeUInt dw2);

typedef NativeInt *PHWAVE;

typedef NativeInt *PHWAVEIN;

typedef NativeInt *PHWAVEOUT;

typedef TFNDrvCallBack TFNWaveCallBack;

typedef wavehdr_tag *PWaveHdr;

typedef wavehdr_tag TWaveHdr;

typedef tagWAVEOUTCAPSA *PWaveOutCapsA;

typedef tagWAVEOUTCAPSW *PWaveOutCapsW;

typedef PWaveOutCapsW PWaveOutCaps;

typedef tagWAVEOUTCAPSA TWaveOutCapsA;

typedef tagWAVEOUTCAPSW TWaveOutCapsW;

typedef tagWAVEOUTCAPSW TWaveOutCaps;

typedef tagWAVEINCAPSA *PWaveInCapsA;

typedef tagWAVEINCAPSW *PWaveInCapsW;

typedef PWaveInCapsW PWaveInCaps;

typedef tagWAVEINCAPSA TWaveInCapsA;

typedef tagWAVEINCAPSW TWaveInCapsW;

typedef tagWAVEINCAPSW TWaveInCaps;

typedef waveformat_tag *PWaveFormat;

typedef waveformat_tag TWaveFormat;

typedef pcmwaveformat_tag *PPCMWaveFormat;

typedef pcmwaveformat_tag TPCMWaveFormat;

typedef tWAVEFORMATEX *PWaveFormatEx;

typedef NativeInt *PHMIDI;

typedef NativeInt *PHMIDIIN;

typedef NativeInt *PHMIDIOUT;

typedef NativeInt *PHMIDISTRM;

typedef TFNDrvCallBack TFNMidiCallBack;

typedef System::StaticArray<System::Word, 128> TPatchArray;

typedef TPatchArray *PPatchArray;

typedef System::StaticArray<System::Word, 128> TKeyArray;

typedef TKeyArray *PKeyArray;

typedef tagMIDIOUTCAPSA *PMidiOutCapsA;

typedef tagMIDIOUTCAPSW *PMidiOutCapsW;

typedef PMidiOutCapsW PMidiOutCaps;

typedef tagMIDIOUTCAPSA TMidiOutCapsA;

typedef tagMIDIOUTCAPSW TMidiOutCapsW;

typedef tagMIDIOUTCAPSW TMidiOutCaps;

typedef tagMIDIINCAPSA *PMidiInCapsA;

typedef tagMIDIINCAPSW *PMidiInCapsW;

typedef PMidiInCapsW PMidiInCaps;

typedef tagMIDIINCAPSA TMidiInCapsA;

typedef tagMIDIINCAPSW TMidiInCapsW;

typedef tagMIDIINCAPSW TMidiInCaps;

typedef midihdr_tag *PMidiHdr;

typedef midihdr_tag TMidiHdr;

typedef midievent_tag *PMidiEvent;

typedef midievent_tag TMidiEvent;

typedef midistrmbuffver_tag *PMidiStrmBuffVer;

typedef midistrmbuffver_tag TMidiStrmBuffVer;

typedef midiproptimediv_tag *PMidiPropTimeDiv;

typedef midiproptimediv_tag TMidiPropTimeDiv;

typedef midiproptempo_tag *PMidiPropTempo;

typedef midiproptempo_tag TMidiPropTempo;

typedef tagAUXCAPSA *PAuxCapsA;

typedef tagAUXCAPSW *PAuxCapsW;

typedef PAuxCapsW PAuxCaps;

typedef tagAUXCAPSA TAuxCapsA;

typedef tagAUXCAPSW TAuxCapsW;

typedef tagAUXCAPSW TAuxCaps;

typedef NativeInt *PHMIXEROBJ;

typedef NativeInt *PHMIXER;

typedef tagMIXERCAPSA *PMixerCapsA;

typedef tagMIXERCAPSW *PMixerCapsW;

typedef PMixerCapsW PMixerCaps;

typedef tagMIXERCAPSA TMixerCapsA;

typedef tagMIXERCAPSW TMixerCapsW;

typedef tagMIXERCAPSW TMixerCaps;

typedef tagMIXERLINEA *PMixerLineA;

typedef tagMIXERLINEW *PMixerLineW;

typedef PMixerLineW PMixerLine;

typedef tagMIXERLINEA TMixerLineA;

typedef tagMIXERLINEW TMixerLineW;

typedef tagMIXERLINEW TMixerLine;

typedef tagMIXERCONTROLA *PMixerControlA;

typedef tagMIXERCONTROLW *PMixerControlW;

typedef PMixerControlW PMixerControl;

typedef tagMIXERCONTROLA TMixerControlA;

typedef tagMIXERCONTROLW TMixerControlW;

typedef tagMIXERCONTROLW TMixerControl;

typedef tagMIXERLINECONTROLSA *PMixerLineControlsA;

typedef tagMIXERLINECONTROLSW *PMixerLineControlsW;

typedef PMixerLineControlsW PMixerLineControls;

typedef tagMIXERLINECONTROLSA TMixerLineControlsA;

typedef tagMIXERLINECONTROLSW TMixerLineControlsW;

typedef tagMIXERLINECONTROLSW TMixerLineControls;

typedef tMIXERCONTROLDETAILS *PMixerControlDetails;

typedef tagMIXERCONTROLDETAILS_LISTTEXTA *PMixerControlDetailsListTextA;

typedef tagMIXERCONTROLDETAILS_LISTTEXTW *PMixerControlDetailsListTextW;

typedef PMixerControlDetailsListTextW PMixerControlDetailsListText;

typedef tagMIXERCONTROLDETAILS_LISTTEXTA TMixerControlDetailsListTextA;

typedef tagMIXERCONTROLDETAILS_LISTTEXTW TMixerControlDetailsListTextW;

typedef tagMIXERCONTROLDETAILS_LISTTEXTW TMixerControlDetailsListText;

typedef tMIXERCONTROLDETAILS_BOOLEAN *PMixerControlDetailsBoolean;

typedef tMIXERCONTROLDETAILS_BOOLEAN TMixerControlDetailsBoolean;

typedef tMIXERCONTROLDETAILS_SIGNED *PMixerControlDetailsSigned;

typedef tMIXERCONTROLDETAILS_SIGNED TMixerControlDetailsSigned;

typedef tMIXERCONTROLDETAILS_UNSIGNED *PMixerControlDetailsUnsigned;

typedef tMIXERCONTROLDETAILS_UNSIGNED TMixerControlDetailsUnsigned;

typedef void __stdcall (*TFNTimeCallBack)(unsigned uTimerID, unsigned uMessage, NativeUInt dwUser, NativeUInt dw1, NativeUInt dw2);

typedef timecaps_tag *PTimeCaps;

typedef timecaps_tag TTimeCaps;

typedef tagJOYCAPSA *PJoyCapsA;

typedef tagJOYCAPSW *PJoyCapsW;

typedef PJoyCapsW PJoyCaps;

typedef tagJOYCAPSA TJoyCapsA;

typedef tagJOYCAPSW TJoyCapsW;

typedef tagJOYCAPSW TJoyCaps;

typedef joyinfo_tag *PJoyInfo;

typedef joyinfo_tag TJoyInfo;

typedef joyinfoex_tag *PJoyInfoEx;

typedef joyinfoex_tag TJoyInfoEx;

typedef NativeInt *PHMMIO;

typedef int __stdcall (*TFNMMIOProc)(char * lpmmioinfo, unsigned uMessage, NativeInt lParam1, NativeInt lParam2);

typedef _MMIOINFO *PMMIOInfo;

typedef _MMIOINFO TMMIOInfo;

typedef _MMCKINFO *PMMCKInfo;

typedef _MMCKINFO TMMCKInfo;

typedef unsigned __stdcall (*TFNYieldProc)(unsigned mciId, unsigned dwYieldData);

typedef tagMCI_GENERIC_PARMS *PMCI_Generic_Parms;

typedef tagMCI_GENERIC_PARMS TMCI_Generic_Parms;

typedef tagMCI_OPEN_PARMSA *PMCI_Open_ParmsA;

typedef tagMCI_OPEN_PARMSW *PMCI_Open_ParmsW;

typedef PMCI_Open_ParmsW PMCI_Open_Parms;

typedef tagMCI_OPEN_PARMSA TMCI_Open_ParmsA;

typedef tagMCI_OPEN_PARMSW TMCI_Open_ParmsW;

typedef tagMCI_OPEN_PARMSW TMCI_Open_Parms;

typedef tagMCI_PLAY_PARMS *PMCI_Play_Parms;

typedef tagMCI_PLAY_PARMS TMCI_Play_Parms;

typedef tagMCI_SEEK_PARMS *PMCI_Seek_Parms;

typedef tagMCI_SEEK_PARMS TMCI_Seek_Parms;

typedef tagMCI_STATUS_PARMS *PMCI_Status_Parms;

typedef tagMCI_STATUS_PARMS TMCI_Status_Parms;

typedef tagMCI_INFO_PARMSA *PMCI_Info_ParmsA;

typedef tagMCI_INFO_PARMSW *PMCI_Info_ParmsW;

typedef PMCI_Info_ParmsW PMCI_Info_Parms;

typedef tagMCI_INFO_PARMSA TMCI_Info_ParmsA;

typedef tagMCI_INFO_PARMSW TMCI_Info_ParmsW;

typedef tagMCI_INFO_PARMSW TMCI_Info_Parms;

typedef tagMCI_GETDEVCAPS_PARMS *PMCI_GetDevCaps_Parms;

typedef tagMCI_GETDEVCAPS_PARMS TMCI_GetDevCaps_Parms;

typedef tagMCI_SYSINFO_PARMSA *PMCI_SysInfo_ParmsA;

typedef tagMCI_SYSINFO_PARMSW *PMCI_SysInfo_ParmsW;

typedef PMCI_SysInfo_ParmsW PMCI_SysInfo_Parms;

typedef tagMCI_SYSINFO_PARMSA TMCI_SysInfo_ParmsA;

typedef tagMCI_SYSINFO_PARMSW TMCI_SysInfo_ParmsW;

typedef tagMCI_SYSINFO_PARMSW TMCI_SysInfo_Parms;

typedef tagMCI_SET_PARMS *PMCI_Set_Parms;

typedef tagMCI_SET_PARMS TMCI_Set_Parms;

typedef tagMCI_BREAK_PARMS *PMCI_Break_Parms;

typedef tagMCI_BREAK_PARMS TMCI_BReak_Parms;

typedef TMCI_Sound_Parms *PMCI_Sound_Parms;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TMCI_Sound_Parms
{
public:
	int dwCallback;
	System::WideChar *lpstrSoundName;
};
#pragma pack(pop)


typedef MCI_SAVE_PARMSA *PMCI_Save_ParmsA;

typedef MCI_SAVE_PARMSW *PMCI_Save_ParmsW;

typedef PMCI_Save_ParmsW PMCI_Save_Parms;

#pragma pack(push,1)
struct DECLSPEC_DRECORD MCI_SAVE_PARMSA
{
public:
	NativeUInt dwCallback;
	char *lpfilename;
};
#pragma pack(pop)


#pragma pack(push,1)
struct DECLSPEC_DRECORD MCI_SAVE_PARMSW
{
public:
	NativeUInt dwCallback;
	System::WideChar *lpfilename;
};
#pragma pack(pop)


typedef MCI_SAVE_PARMSW MCI_SAVE_PARMS;

typedef MCI_SAVE_PARMSA TMCI_SaveParmsA;

typedef PMCI_Save_ParmsA LPMCI_SAVE_PARMSA;

typedef MCI_SAVE_PARMSW TMCI_SaveParmsW;

typedef PMCI_Save_ParmsW LPMCI_SAVE_PARMSW;

typedef MCI_SAVE_PARMSW TMCI_SaveParms;

typedef tagMCI_LOAD_PARMSA *PMCI_Load_ParmsA;

typedef tagMCI_LOAD_PARMSW *PMCI_Load_ParmsW;

typedef PMCI_Load_ParmsW PMCI_Load_Parms;

typedef tagMCI_LOAD_PARMSA TMCI_Load_ParmsA;

typedef tagMCI_LOAD_PARMSW TMCI_Load_ParmsW;

typedef tagMCI_LOAD_PARMSW TMCI_Load_Parms;

typedef tagMCI_RECORD_PARMS *PMCI_Record_Parms;

typedef tagMCI_RECORD_PARMS TMCI_Record_Parms;

typedef tagMCI_VD_PLAY_PARMS *PMCI_VD_Play_Parms;

typedef tagMCI_VD_PLAY_PARMS TMCI_VD_Play_Parms;

typedef tagMCI_VD_STEP_PARMS *PMCI_VD_Step_Parms;

typedef tagMCI_VD_STEP_PARMS TMCI_VD_Step_Parms;

typedef tagMCI_VD_ESCAPE_PARMSA *PMCI_VD_Escape_ParmsA;

typedef tagMCI_VD_ESCAPE_PARMSW *PMCI_VD_Escape_ParmsW;

typedef PMCI_VD_Escape_ParmsW PMCI_VD_Escape_Parms;

typedef tagMCI_VD_ESCAPE_PARMSA TMCI_VD_Escape_ParmsA;

typedef tagMCI_VD_ESCAPE_PARMSW TMCI_VD_Escape_ParmsW;

typedef tagMCI_VD_ESCAPE_PARMSW TMCI_VD_Escape_Parms;

typedef tagMCI_WAVE_OPEN_PARMSA *PMCI_Wave_Open_ParmsA;

typedef tagMCI_WAVE_OPEN_PARMSW *PMCI_Wave_Open_ParmsW;

typedef PMCI_Wave_Open_ParmsW PMCI_Wave_Open_Parms;

typedef tagMCI_WAVE_OPEN_PARMSA TMCI_Wave_Open_ParmsA;

typedef tagMCI_WAVE_OPEN_PARMSW TMCI_Wave_Open_ParmsW;

typedef tagMCI_WAVE_OPEN_PARMSW TMCI_Wave_Open_Parms;

typedef tagMCI_WAVE_DELETE_PARMS *PMCI_Wave_Delete_Parms;

typedef tagMCI_WAVE_DELETE_PARMS TMCI_Wave_Delete_Parms;

typedef tagMCI_WAVE_SET_PARMS *PMCI_Wave_Set_Parms;

typedef tagMCI_WAVE_SET_PARMS TMCI_Wave_Set_Parms;

typedef tagMCI_SEQ_SET_PARMS *PMCI_Seq_Set_Parms;

typedef tagMCI_SEQ_SET_PARMS TMCI_Seq_Set_Parms;

typedef tagMCI_ANIM_OPEN_PARMSA *PMCI_Anim_Open_ParmsA;

typedef tagMCI_ANIM_OPEN_PARMSW *PMCI_Anim_Open_ParmsW;

typedef PMCI_Anim_Open_ParmsW PMCI_Anim_Open_Parms;

typedef tagMCI_ANIM_OPEN_PARMSA TMCI_Anim_Open_ParmsA;

typedef tagMCI_ANIM_OPEN_PARMSW TMCI_Anim_Open_ParmsW;

typedef tagMCI_ANIM_OPEN_PARMSW TMCI_Anim_Open_Parms;

typedef tagMCI_ANIM_PLAY_PARMS *PMCI_Anim_Play_Parms;

typedef tagMCI_ANIM_PLAY_PARMS TMCI_Anim_Play_Parms;

typedef tagMCI_ANIM_STEP_PARMS *PMCI_Anim_Step_Parms;

typedef tagMCI_ANIM_STEP_PARMS TMCI_Anim_Step_Parms;

typedef tagMCI_ANIM_WINDOW_PARMSA *PMCI_Anim_Window_ParmsA;

typedef tagMCI_ANIM_WINDOW_PARMSW *PMCI_Anim_Window_ParmsW;

typedef PMCI_Anim_Window_ParmsW PMCI_Anim_Window_Parms;

typedef tagMCI_ANIM_WINDOW_PARMSA TMCI_Anim_Window_ParmsA;

typedef tagMCI_ANIM_WINDOW_PARMSW TMCI_Anim_Window_ParmsW;

typedef tagMCI_ANIM_WINDOW_PARMSW TMCI_Anim_Window_Parms;

typedef tagMCI_ANIM_RECT_PARMS *PMCI_Anim_Rect_Parms;

typedef tagMCI_ANIM_RECT_PARMS TMCI_Anim_Rect_Parms;

typedef tagMCI_ANIM_UPDATE_PARMS *PMCI_Anim_Update_Parms;

typedef tagMCI_ANIM_UPDATE_PARMS TMCI_Anim_Update_Parms;

typedef tagMCI_OVLY_OPEN_PARMSA *PMCI_Ovly_Open_ParmsA;

typedef tagMCI_OVLY_OPEN_PARMSW *PMCI_Ovly_Open_ParmsW;

typedef PMCI_Ovly_Open_ParmsW PMCI_Ovly_Open_Parms;

typedef tagMCI_OVLY_OPEN_PARMSA TMCI_Ovly_Open_ParmsA;

typedef tagMCI_OVLY_OPEN_PARMSW TMCI_Ovly_Open_ParmsW;

typedef tagMCI_OVLY_OPEN_PARMSW TMCI_Ovly_Open_Parms;

typedef tagMCI_OVLY_WINDOW_PARMSA *PMCI_Ovly_Window_ParmsA;

typedef tagMCI_OVLY_WINDOW_PARMSW *PMCI_Ovly_Window_ParmsW;

typedef PMCI_Ovly_Window_ParmsW PMCI_Ovly_Window_Parms;

typedef tagMCI_OVLY_WINDOW_PARMSA TMCI_Ovly_Window_ParmsA;

typedef tagMCI_OVLY_WINDOW_PARMSW TMCI_Ovly_Window_ParmsW;

typedef tagMCI_OVLY_WINDOW_PARMSW TMCI_Ovly_Window_Parms;

typedef tagMCI_OVLY_RECT_PARMS *PMCI_Ovly_Rect_Parms;

typedef tagMCI_OVLY_RECT_PARMS TMCI_Ovly_Rect_Parms;

typedef tagMCI_OVLY_SAVE_PARMSA *PMCI_Ovly_Save_ParmsA;

typedef tagMCI_OVLY_SAVE_PARMSW *PMCI_Ovly_Save_ParmsW;

typedef PMCI_Ovly_Save_ParmsW PMCI_Ovly_Save_Parms;

typedef tagMCI_OVLY_SAVE_PARMSA TMCI_Ovly_Save_ParmsA;

typedef tagMCI_OVLY_SAVE_PARMSW TMCI_Ovly_Save_ParmsW;

typedef tagMCI_OVLY_SAVE_PARMSW TMCI_Ovly_Save_Parms;

typedef tagMCI_OVLY_LOAD_PARMSA *PMCI_Ovly_Load_ParmsA;

typedef tagMCI_OVLY_LOAD_PARMSW *PMCI_Ovly_Load_ParmsW;

typedef PMCI_Ovly_Load_ParmsW PMCI_Ovly_Load_Parms;

typedef tagMCI_OVLY_LOAD_PARMSA TMCI_Ovly_Load_ParmsA;

typedef tagMCI_OVLY_LOAD_PARMSW TMCI_Ovly_Load_ParmsW;

typedef tagMCI_OVLY_LOAD_PARMSW TMCI_Ovly_Load_Parms;

//-- var, const, procedure ---------------------------------------------------
static const System::Word MCI_SOUND = System::Word(0x812);
static const System::Word MCI_SOUND_NAME = System::Word(0x100);
#define mmsyst L"winmm.dll"
extern DELPHI_PACKAGE int __fastcall DIBIndex(int N);
}	/* namespace Mmsystem */
}	/* namespace Winapi */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_WINAPI_MMSYSTEM)
using namespace Winapi::Mmsystem;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_WINAPI)
using namespace Winapi;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Winapi_MmsystemHPP
