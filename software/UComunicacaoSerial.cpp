// ---------------------------------------------------------------------------

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
int valor = 0;
bool pause = false;
AnsiString saida;

// Declara��o das Threads de processamento.
Thread *ProcessaGrafico;

// ------- Gr�fico de sinais -------------------------------------------------

FILE *arq_dados;

unsigned int max_tela = 100;
unsigned int i = 0;
unsigned int j = 0;
unsigned int posicao_do_grafico = 0;

unsigned char buffer[256] = {0};

// ------- Gr�fico de sinais -------------------------------------------------

// Declara��o de Vari�veis.
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
	// ------- Gr�fico de sinais ---------------------------------------------

	// Redimensiona o valor m�ximo do eixo x com o tamanho da tela desejada.
	Chart1->BottomAxis->Maximum = max_tela;

	// Expande o gr�fico para comportar a quantidade de amostras contidas em max_tela.
	for (unsigned int a = 0; a < max_tela + 1; a++) {
		Chart1->Series[0]->AddY(0);
		Chart1->Series[1]->AddY(0);
	}

	// Atualiza o chart.
	Chart1->Refresh();

	// ------- Gr�fico de sinais ---------------------------------------------

	// Verifica quais portas seriais est�o dispon�veis/conectadas.
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
	// Configura��es da Porta Serial selecionada.
	PortaSerial = new SerialCommPort();
	PortaSerial->Open(CbSerialPort1->Text, CbBaudRate1->Text);

	// Memo1->Lines->Add("Porta Serial Aberta...");

	// Decalara��o do ponteiro do arquivo que armazena os dados.
	arq_dados = fopen("dados.txt", "w");

	// Declara��o da thread para leitura dos pacotes e plotagem do gr�fico.
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

	// Verifica��o da inst�ncia da thread de atualiza��o do gr�fico.
	if (ProcessaGrafico != NULL) {
		// ProcessaGrafico->WaitFor();
		ProcessaGrafico->Terminate();
		delete ProcessaGrafico;
		ProcessaGrafico = NULL;

		// Memo1->Lines->Add("finalizou a thread e deletou a inst�ncia.");
	}

	// Verifica��o da inst�ncia da porta serial.
	if (PortaSerial != NULL) {
		Sleep(1000);
		PortaSerial->Close();

		// Memo1->Lines->Add("Porta Serial Fechada...");
	}

	delete PortaSerial;
	PortaSerial = NULL;

	// Fecha o arquivo e salva altera��es.
	fclose(arq_dados);
}
// ---------------------------------------------------------------------------

void __fastcall TAutoNormalization::Chart1AfterDraw(TObject *Sender) {
	// ------- Gr�fico de sinais ------------------------------------------

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
		// Desenho da barra de atualiza��o da tela.
	}

	// ------- Gr�fico de sinais ------------------------------------------
}

// ---------------------------------------------------------------------------

void __fastcall TAutoNormalization::AtualizaGrafico() {
	// Plota a amostra no gr�fico.
	AutoNormalization->Chart1->Series[0]->YValues->Value[posicao_do_grafico] =
		rpm;
	AutoNormalization->Chart1->Series[1]->YValues->Value[posicao_do_grafico] =
		rpmAlvo;

	//if (TemperatureCombo->Text == "") {

   //			OutputDebugStringW(L"\nNovo RPM alvo.");
   //				TemperatureCombo->Text = rpmAlvo;
	//}
}

// ---------------------------------------------------------------------------

void __fastcall TAutoNormalization::CbSerialPort1DropDown(TObject *Sender) {
	// Verifica quais portas seriais est�o dispon�veis/conectadas.
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
// Declara��o da thread de processamento                      //
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
			// AQUISI��O DOS PACOTES DE DADOS DE MODO CONT�NUO.
			// ------------------------------------------------------------------------

			// Verifica��o e Valida��o do pacote de dados recebido.
			if (buffer1[0] == '#' && buffer1[1] == '$' && buffer1[2] == ':') {

				unsigned char checksum = 0x00;
				for (unsigned char index = 0; index < 6; index++) {
					checksum ^= buffer1[index];
				}

				if (buffer1[6] == checksum) {
					// Calculo da temperatura conforme os bytes recebidos (10 bits).
					valor = (buffer1[3] << 8) + (buffer1[4]);
					rpm = valor;

					// ------- Gr�fico de sinais ------------------------------------------

					// Verifica��o do fim do gr�fico.
					if (posicao_do_grafico == max_tela + 1) {
						posicao_do_grafico = 0;
					}

					// Plotagem dos dados sincronizados com a thread.
					Synchronize(AutoNormalization->AtualizaGrafico);

					// Incremento da posi��o do gr�fico.
					posicao_do_grafico++;

					// Atualiza��o do chart com os novos dados.
					AutoNormalization->Chart1->Refresh();

					// Grava o canal 1 no arquivo.
					fprintf(arq_dados, "%f\n", rpm);
				}
				else {
					OutputDebugStringW(L"\nChecksum inv�lido!");
				}
				// ------- Gr�fico de sinais ----------------------------------------
				// FSerialPort->Memo1->Lines->Add(saida);
			}
			else {
				printf("Erro!");
				// Sa�da indicando erro de recebimento de pacotes.
				OutputDebugStringW(
					L"\nErro no recebimento do pacote de dados!");

				// Apresenta a sa�da.
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

	char *buffer;
	buffer[0] = '#';
	buffer[1] = '$';
	buffer[2] = ':';

	// Medi��o
	buffer[3] = first;
	buffer[4] = second;
	buffer[5] = 0;

	unsigned char checksum = 0x00;
	for (unsigned char index = 0; index < 6; index++)
	{
		checksum ^= buffer[index];
	}
	buffer[6] = checksum;

	pause = true;
	Sleep(300);
	PortaSerial->WriteABuffer(buffer, 7);
	Sleep(300);
	pause = false;

}
//---------------------------------------------------------------------------

