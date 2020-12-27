#include "Display.h"
#include "OS.h"
#include "SSD.h"
#include "Counter.h"

#define DISP_UPDATE_PERIOD_MS   (20)


void DISP_Init(void)
{

    /* Get initial count */

    /* Initialize SSD */
    SSD_Init(SSD_HUNDREDS, SSD_OFF, SSD_0);
    SSD_Init(SSD_TENS, SSD_OFF, SSD_0);
    SSD_Init(SSD_UNITS, SSD_OFF, SSD_0);
}

void DISP_Update(void)
{
    static tByte DISP_Update_Counter = 0;
    static tWord TestCount = 0;



    /* Check its period to run */
    DISP_Update_Counter += OS_TICK_MS;
    if (DISP_Update_Counter < DISP_UPDATE_PERIOD_MS)
    {
        return;
    }
    DISP_Update_Counter = 0;

    #if 1

    /* Set SSD symbols based on counter value */
    SSD_SetSymbol(SSD_HUNDREDS, CNT_GetCounter()/100);
    SSD_SetSymbol(SSD_TENS, ( CNT_GetCounter()%100)/10);
    SSD_SetSymbol(SSD_UNITS,  CNT_GetCounter()%10);
    #else
    TestCount++;
    if (TestCount == 1000)
    {
        TestCount = 0;
    }
    SSD_SetSymbol(SSD_HUNDREDS, TestCount/100);
    SSD_SetSymbol(SSD_TENS, ( TestCount%100)/10);
    SSD_SetSymbol(SSD_UNITS,  TestCount%10);
    #endif


}
