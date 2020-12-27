#include "Counter.h"
#include "Main.h"
#include "OS.h"
#include "Switch.h"

#define CNT_UPDATE_PERIOD_MS (20)


static tWord CNT_Counter;

void CNT_Init(tWord counter)
{
    CNT_Counter = counter;
}

tWord CNT_GetCounter(void)
{
    return CNT_Counter;
}

void CNT_Update(void)
{
    static tByte CNT_Update_Counter = 0;

    /* Check its period to run */
    CNT_Update_Counter += OS_TICK_MS;
    if (CNT_Update_Counter < CNT_UPDATE_PERIOD_MS)
    {
        return;
    }
    CNT_Update_Counter = 0;

#if 1
    /* Get SW states */
    if (SW_GetState(SW_RESET) == SW_PRE_PRESSED)
    {
        CNT_Counter = 0;
    } else if (SW_GetState(SW_PLUS) == SW_PRE_RELEASED)
    {
        CNT_Counter++;
        if (CNT_Counter == 1000)
        {
            CNT_Counter = 0;
        }
    }
#else
    CNT_Counter++;
    if (CNT_Counter == 1000)
    {
        CNT_Counter = 0;
    }
#endif
}
