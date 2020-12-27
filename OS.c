#include "OS.h"
#include "Main.h"
#include "Display.h"
#include "SSD.h"
#include "Counter.h"
#include "Switch.h"
static volatile tByte OS_Flag = 0;
void OS_Init(void)
{
    TMR_SET_PRESCALER_256;
	TMR_DISABLE_CLOCK;
	OS_Flag = 0;
	TRISC7=0;
	RC7=0;
}

void OS_Start(tByte tick)
{
    TMR_CLEAR_FLAG;
	TMR_UPDATE_REGISTER(tick);
	TMR_ENABLE_INTERRUPT;
	GLOBAL_INTERRUPT_ENABLE;
	TMR_ENABLE_CLOCK;
}

void OS_GoToSleep(void)
{

}
void OS_Update(void) __interrupt 0
{
    TMR_CLEAR_FLAG;
	TMR_UPDATE_REGISTER(OS_TICK_MS);
	RC7 = 1 ^ RC7;
	OS_Flag = 1;



}

void OS_Schedule(void)
{
    while(OS_Flag == 0);
    OS_Flag = 0;
    /* Tasks */
	SSD_Update();
	SW_Update();
	CNT_Update();
	DISP_Update();

	/* Go to Sleep */
    OS_GoToSleep();
}
