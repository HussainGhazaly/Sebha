#include "switch.h"
#include "Main.h"
#include "Port.h"
#include "OS.h"

#define N_SAMPLES   (2)

#define N_SWITCHES  (2)

#define SW_RELEASED_LEVEL       (1)
#define SW_PRESSED_LEVEL        (0)

#define SW_UPDATE_PERIOD_MS (20)


typedef struct
{
    tByte sw_samples[N_SAMPLES];
    tSW_State sw_state;
}tSW_Info;

tSW_Info SWs_Info[N_SWITCHES];


void SW_Init(tSW sw, tSW_State state)
{
    /* Initialize pins */
    TRISC6=0;
    RC6=0;
    switch (sw)
    {
    case SW_PLUS:
        GPIO_InitPortPin(SW_PLUS_PORT_CR, SW_PLUS_PIN, GPIO_IN);
        break;
    case SW_RESET:
        GPIO_InitPortPin(SW_RESET_PORT_CR, SW_RESET_PIN, GPIO_IN);
        break;
    default:
        /* Should not be here */
        break;
    }

    /* Initialize state */
    SWs_Info[sw].sw_state = state;

    /* Initialize samples */
    switch (state)
    {
    case SW_RELEASED:
    case SW_PRE_RELEASED:
        SWs_Info[sw].sw_samples[0] = SW_RELEASED_LEVEL;
        SWs_Info[sw].sw_samples[1] = SW_RELEASED_LEVEL;
        break;
    case SW_PRE_PRESSED:
    case SW_PRESSED:
        SWs_Info[sw].sw_samples[0] = SW_PRESSED_LEVEL;
        SWs_Info[sw].sw_samples[1] = SW_PRESSED_LEVEL;
        break;
    default:
        /* Should not be here */
        break;

    }
}

tSW_State SW_GetState(tSW sw)
{
    return SWs_Info[sw].sw_state;
}

void SW_Update(void)
{
    static tByte SW_Update_Counter = 0;
    tByte index = 0;

    /* Check its period to run */
    SW_Update_Counter += OS_TICK_MS;
    if (SW_Update_Counter < SW_UPDATE_PERIOD_MS)
    {
        return;
    }
    SW_Update_Counter = 0;


    RC6 = 1^ RC6;
    for (index = 0; index < N_SWITCHES; index++)
    {
        /* Update samples */
        SWs_Info[index].sw_samples[0] = SWs_Info[index].sw_samples[1];

        switch (index)
        {
        case SW_PLUS:
            SWs_Info[index].sw_samples[1] = GPIO_ReadPortPin(SW_PLUS_PORT_DR, SW_PLUS_PIN);
            break;
        case SW_RESET:
            SWs_Info[index].sw_samples[1] = GPIO_ReadPortPin(SW_RESET_PORT_DR, SW_RESET_PIN);
            break;
        default:
            /* Should not be here */
            break;
        }

        /* Update state */

        switch(SWs_Info[index].sw_state)
        {
        case SW_RELEASED:
            if ((SWs_Info[index].sw_samples[0] == SW_PRESSED_LEVEL) &&
                (SWs_Info[index].sw_samples[1] == SW_PRESSED_LEVEL))
            {
                SWs_Info[index].sw_state = SW_PRE_PRESSED;
            } else
            {
                /* Should do nothing */
            }
            break;
        case SW_PRE_PRESSED:
            if (SWs_Info[index].sw_samples[1] == SW_PRESSED_LEVEL)
            {
                SWs_Info[index].sw_state = SW_PRESSED;
            } else
            {
                /* Should do nothing */
            }
            break;
        case SW_PRESSED:
            if ((SWs_Info[index].sw_samples[0] == SW_RELEASED_LEVEL) &&
                (SWs_Info[index].sw_samples[1] == SW_RELEASED_LEVEL))
            {
                SWs_Info[index].sw_state = SW_PRE_RELEASED;
            } else
            {
                /* Should do nothing */
            }
            break;
        case SW_PRE_RELEASED:
            if (SWs_Info[index].sw_samples[1] == SW_RELEASED_LEVEL)
            {
                SWs_Info[index].sw_state = SW_RELEASED;
            } else
            {
                /* Should do nothing */
            }
            break;
        default:
            /* Should not be here */
            break;
        }
    }

}
