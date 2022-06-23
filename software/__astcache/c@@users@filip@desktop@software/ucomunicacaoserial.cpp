﻿// ---------------------------------------------------------------------------
#include <vcl.h>
#include <stdio.h>
#include <vector>
#include <string.h>
#pragma hdrstop
#include "UComunicacaoSerial.h"
#include "SerialComPort.h"
// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cspin"
#pragma resource "*.dfm"
#define odslog(msg) { std::wstringstream ss; ss << msg; OutputDebugStringW(ss.str().c_str()); }
TAutoNormalization *AutoNormalization;
SerialCommPort *PortaSerial;
double rpm = 0;
double rpmAlvo = 0;
unsigned char Lab4[30] = {0};
unsigned char Lab5[30] = {0};
int valor = 0;
bool pause = false;
AnsiString saida;
// Declaração das Threads de processamento.
Thread *ProcessaGrafico;
// ------- Gráfico de sinais -------------------------------------------------
FILE *arq_dados;
unsigned int max_tela = 100;
unsigned int i = 0;
unsigned int j = 0;
unsigned int posicao_do_grafico = 0;
unsigned char buffer[256] = {0};
unsigned char buffer2[20] = {0};
// ------- Gráfico de sinais -------------------------------------------------
// Declaração de Variáveis.
AnsiString NomeArquivoDeDados;
unsigned long PosicaoInicial;
unsigned long PosicaoAtual;
unsigned long PosicaoFinal;
unsigned long Fim;
unsigned int TamanhoDaJanelaEmSegundos;
unsigned int TamanhoDoRegistro;
unsigned int NumeroDeAmostras;
unsigned int TamanhoDaEpoca;
unsigned int Deslocamento;
bool LeArquivo = false;
// ---------------------------------------------------------------------------
__fastcall TAutoNormalization::TAutoNormalization(TComponent* Owner)
	: TForm(Owner) {
}
// ---------------------------------------------------------------------------
void __fastcall TAutoNormalization::FormCreate(TObject *Sender) {
	// ------- Gráfico de sinais ---------------------------------------------
	// Redimensiona o valor máximo do eixo x com o tamanho da tela desejada.
	Chart1->BottomAxis->Maximum = max_tela;
	// Expande o gráfico para comportar a quantidade de amostras contidas em max_tela.
	for (unsigned int a = 0; a < max_tela + 1; a++) {
		Chart1->Series[0]->AddY(0);
		Chart1->Series[1]->AddY(0);
	}
	// Atualiza o chart.
	Chart1->Refresh();
	// ------- Gráfico de sinais ---------------------------------------------
	// Verifica quais portas seriais estão disponíveis/conectadas.
	std::vector<AnsiString>asDetectedPorts;
	asDetectedPorts = PortaSerial->List();
	CbSerialPort1->Clear();
	for (unsigned int a = 0; a < asDetectedPorts.size(); a++) {
		CbSerialPort1->Items->Add(asDetectedPorts[a]);
	}
	CbSerialPort1->ItemIndex = 0;
}
// ---------------------------------------------------------------------------
void __fastcall TAutoNormalization::BtOpenPortClick(TObject *Sender) {
	// Configurações da Porta Serial selecionada.
	PortaSerial = new SerialCommPort();
	PortaSerial->Open(CbSerialPort1->Text, CbBaudRate1->Text);
	// Memo1->Lines->Add("Porta Serial Aberta...");
	// Decalaração do ponteiro do arquivo que armazena os dados.
	arq_dados = fopen("dados.txt", "w");
	// Declaração da thread para leitura dos pacotes e plotagem do gráfico.
	ProcessaGrafico = new Thread(true);
	ProcessaGrafico->Resume();
	BtOpenPort->Enabled = false;
	//TemperatureCombo->Enabled = true;
	//TemperatureCombo->Text = "";
}
// ---------------------------------------------------------------------------
void __fastcall TAutoNormalization::BtClosePortClick(TObject *Sender) {
	BtOpenPort->Enabled = true;
	//TemperatureCombo->Enabled = false;
	//TemperatureCombo->Text = "";
	// Verificação da instância da thread de atualização do gráfico.
	if (ProcessaGrafico != NULL) {
		// ProcessaGrafico->WaitFor();
		ProcessaGrafico->Terminate();
		delete ProcessaGrafico;
		ProcessaGrafico = NULL;
		// Memo1->Lines->Add("finalizou a thread e deletou a instância.");
	}
	// Verificação da instância da porta serial.
	if (PortaSerial != NULL) {
		Sleep(1000);
		PortaSerial->Close();
		// Memo1->Lines->Add("Porta Serial Fechada...");
	}
	delete PortaSerial;
	PortaSerial = NULL;
	// Fecha o arquivo e salva alterações.
	fclose(arq_dados);
}
// ---------------------------------------------------------------------------
void __fastcall TAutoNormalization::Chart1AfterDraw(TObject *Sender) {
	// ------- Gráfico de sinais ------------------------------------------
	if (!LeArquivo) {
		double xi, xf, yi, yf;
		xi = Chart1->BottomAxis->CalcPosValue(posicao_do_grafico - 1) - 15;
		yi = Chart1->LeftAxis->CalcPosValue(Chart1->LeftAxis->Minimum) - 1;
		xf = Chart1->BottomAxis->CalcPosValue(posicao_do_grafico - 1) + 15;
		yf = Chart1->LeftAxis->CalcPosValue(Chart1->LeftAxis->Maximum) + 1;
		Chart1->Canvas->Pen->Style = psSolid;
		Chart1->Canvas->Pen->Color = clWhite;
		Chart1->Canvas->Brush->Color = clWhite;
		Chart1->Canvas->Rectangle(xi, yi, xf, yf);
		// Desenho da barra de atualização da tela.
	}
	// ------- Gráfico de sinais ------------------------------------------
}
// ---------------------------------------------------------------------------
void __fastcall TAutoNormalization::AtualizaGrafico() {
	// Plota a amostra no gráfico.
	AutoNormalization->Chart1->Series[0]->YValues->Value[posicao_do_grafico] =
		rpm;
	AutoNormalization->Chart1->Series[1]->YValues->Value[posicao_do_grafico] =
		rpmAlvo;
	TAutoNormalization::Label4->Caption = Labl4;
	TAutoNormalization::Label5->Caption = Labl5;
	//if (TemperatureCombo->Text == "") {
   //			OutputDebugStringW(L"\nNovo RPM alvo.");
   //				TemperatureCombo->Text = rpmAlvo;
	//}
}
// ---------------------------------------------------------------------------
void __fastcall TAutoNormalization::CbSerialPort1DropDown(TObject *Sender) {
	// Verifica quais portas seriais estão disponíveis/conectadas.
	std::vector<AnsiString>asDetectedPorts;
	asDetectedPorts = PortaSerial->List();
	CbSerialPort1->Clear();
	for (unsigned int a = 0; a < asDetectedPorts.size(); a++) {
		CbSerialPort1->Items->Add(asDetectedPorts[a]);
	}
	CbSerialPort1->ItemIndex = 0;
}
// ---------------------------------------------------------------------------
// ---------------------------------------------------------------------------//
// Declaração da thread de processamento                      //
// ---------------------------------------------------------------------------//
// ---------------------------------------------------------------------------
__fastcall Thread::Thread(bool CreateSuspended) : TThread(CreateSuspended) {
	Priority = tpHigher; // Normal;
	// FSerialPort->Memo1->Lines->Add("iniciou a thread...");
}
// ---------------------------------------------------------------------------
void __fastcall Thread::Execute() {
	AnsiString check;
	while (!Terminated) {
		if (!pause) {
			std::vector<unsigned char>buffer1;
			int valor = 0;
			AnsiString saida;
			// Envia o buffer pela porta serial.
			// PortaSerial->WriteABuffer("A", 1);
			//PortaSerial->WriteABuffer("#", 1);
			//PortaSerial->WriteABuffer("A", 1);
			//PortaSerial->WriteABuffer("A", 1);
			//PortaSerial->WriteABuffer("A", 1);
			//PortaSerial->WriteABuffer("A", 1);
			OutputDebugStringW(L"\nA");
			PortaSerial->WriteABuffer("#", 1);
			PortaSerial->WriteABuffer("A", 1);
			PortaSerial->WriteABuffer("A", 1);
			PortaSerial->WriteABuffer("A", 1);
			PortaSerial->WriteABuffer("A", 1);
			PortaSerial->WriteABuffer("A", 1);
			PortaSerial->WriteABuffer("A", 1);
			// Instante de tempo para receber resposta do mestre.
			Sleep(30);
			// Armazena em buffer a resposta enviada pelo mestre com as temperaturas.
			buffer1 = PortaSerial->ReadBuffer();
			// ------------------------------------------------------------------------
			// AQUISIÇÃO DOS PACOTES DE DADOS DE MODO CONTÍNUO.
			// ------------------------------------------------------------------------
			// Verificação e Validação do pacote de dados recebido.
			if (buffer1[0] == '#' && buffer1[1] == '$' && buffer1[2] == ':') {
				unsigned char checksum = 0x00;
				for (unsigned char index = 0; index < 8; index++) {
					checksum ^= buffer1[index];
				}
				if (buffer1[8] == checksum) {
					// Calculo da temperatura conforme os bytes recebidos (10 bits).
					valor = (buffer1[3] << 8) + (buffer1[4]);
					rpm = valor;
					valor = (buffer1[5] << 8) + (buffer1[6]);
					rpmAlvo = valor;
					Lab4 = rpm;
					Lab5 = rpmAlvo;

					// ------- Gráfico de sinais ------------------------------------------
					// Verificação do fim do gráfico.
					if (posicao_do_grafico == max_tela + 1) {
						posicao_do_grafico = 0;
					}
					// Plotagem dos dados sincronizados com a thread.
					Synchronize(AutoNormalization->AtualizaGrafico);
					// Incremento da posição do gráfico.
					posicao_do_grafico++;
					// Atualização do chart com os novos dados.
					AutoNormalization->Chart1->Refresh();
					// Grava o canal 1 no arquivo.
					fprintf(arq_dados, "%f\n", rpm);
				}
				else {
					OutputDebugStringW(L"\nChecksum inválido!");
				}
				// ------- Gráfico de sinais ----------------------------------------
				// FSerialPort->Memo1->Lines->Add(saida);
				Sleep(500);
			}
			else {
				printf("Erro!");
				// Saída indicando erro de recebimento de pacotes.
				OutputDebugStringW(
					L"\nErro no recebimento do pacote de dados!");
				// Apresenta a saída.
				// FSerialPort->Memo1->Lines->Add(saida);
			}
		}
	}
}
// ---------------------------------------------------------------------------
void __fastcall TAutoNormalization::CSpinEdit1Change(TObject *Sender) {
//	OutputDebugStringW(L"\nChange!");
//
//	if (PortaSerial == NULL) {
//		return;
//	}
//
//	UnicodeString text = TemperatureCombo->Text;
//	const size_t len = WideCharToMultiByte(CP_ACP, 0, text.c_str(), -1, NULL, 0,
//		NULL, NULL);
//	HGLOBAL hMem = GlobalAlloc(GMEM_MOVEABLE, len);
//	if (hMem) {
//		char *output = (char*) GlobalLock(hMem);
//		WideCharToMultiByte(CP_ACP, 0, text.c_str(), -1, output, len,
//			NULL, NULL);
//		GlobalUnlock(hMem);
//
//		pause = true;
//		Sleep(300);
//		char *first = &output[0];
//		char *second = &output[1];
//		PortaSerial->WriteABuffer(first, 1);
//		PortaSerial->WriteABuffer(second, 1);
//		PortaSerial->WriteABuffer("\n", 1);
//		Sleep(300);
//		pause = false;
//
//		if (hMem)
//			GlobalFree(hMem);
//	}
}
// ---------------------------------------------------------------------------

void __fastcall TAutoNormalization::OkClick(TObject *Sender)
{
	OutputDebugStringW(L"\nChange!");

	//char *firstVec;
	//char *secondVec;
	//char *extraVec;
	//char *checkVec;

	if (PortaSerial == NULL) {
		return;
	}

	UnicodeString text = RPMInput->Text;
	int value = StrToInt(text);

	char first = (value >> 8) & 0xFF;
	char second = value & 0xFF;

	char buffer[6];
	buffer[0] = '#';
	buffer[1] = '$';
	buffer[2] = ':';
	// Medição
	buffer[3] = first;
	buffer[4] = second;
	unsigned char checksum = 0x00;
	for (unsigned char index = 0; index < 5; index++)
	{
		checksum ^= buffer[index];
	}
	buffer[5] = checksum;

	pause = true;
	Sleep(300);
	PortaSerial->WriteABuffer(buffer, 6);
	Sleep(300);
	pause = false;

}
//---------------------------------------------------------------------------



//---------------------------------------------------------------------------

