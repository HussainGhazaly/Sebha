#include "Switch.h"
#include "Counter.h"
#include "Display.h"
#include "OS.h"
#include "Main.h"
#include "SSD.h"

tWord __at(0x2007) CONFIG = _HS_OSC & _WDT_OFF & _PWRTE_ON & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _DEBUG_OFF & _CP_OFF;

void main (void)
{
    /* Initialization */
    SW_Init(SW_PLUS, SW_RELEASED);
    SW_Init(SW_RESET, SW_RELEASED);

    CNT_Init(456);

    DISP_Init();

    //SSD_Init(SSD_UNITS, SSD_OFF, SSD_6);
    //SSD_Init(SSD_TENS, SSD_OFF, SSD_7);
    //SSD_Init(SSD_HUNDREDS, SSD_OFF, SSD_1);


    OS_Init();
    OS_Start(OS_TICK_MS);



    while (1)
    {
        OS_Schedule();

    }

}

