#include "SSD.h"
#include "Main.h"
#include "Port.h"
#include "OS.h"

#define N_SSD   (3)
#define N_SSD_SYMBOLS   (11)
#define SSD_UPDATE_PERIOD_MS    (5)

static tSSD_Symbol SSD_Symbols[N_SSD];

static tSSD SSD_Current = SSD_HUNDREDS;

/* SSD Symbols port data values */
static tByte SSD_Data[N_SSD_SYMBOLS] =
{
    0b00111111,
    0b00000110,
    0b01011011,
    0b01001111,
    0b01100110,
    0b01101101,
    0b01111101,
    0b00000111,
    0b01111111,
    0b01101111,
    0b00000000,
};

static void SSD_Out(tSSD ssd, tSSD_Symbol symbol);

void SSD_Init(tSSD ssd, tSSD_State state, tSSD_Symbol symbol)
{
    /* Initialize SSD pins as output */
    GPIO_InitPort(SSD_DATA_PORT_CR, GPIO_OUT);
    SSD_Out(ssd, SSD_NULL);

    switch (ssd)
    {
    case SSD_HUNDREDS:
        GPIO_InitPortPin(SSD_HUNDREDS_CR, SSD_HUNDREDS_PIN, GPIO_OUT);
        break;
    case SSD_TENS:
        GPIO_InitPortPin(SSD_TENS_CR, SSD_TENS_PIN, GPIO_OUT);
        break;
    case SSD_UNITS:
        GPIO_InitPortPin(SSD_UNITS_CR, SSD_UNITS_PIN, GPIO_OUT);
        break;
    default:
        /* Should not be here */
        break;

    }

    /* Set state */
    SSD_SetState(ssd, state);

    /* Set symbol */
    SSD_SetSymbol(ssd, symbol);
}

tSSD_State SSD_GetState(tSSD ssd)
{
    tSSD_State ret = SSD_OFF;

    switch (ssd)
    {
    case SSD_HUNDREDS:
        ret = GPIO_ReadPortPin(SSD_HUNDREDS_DR, SSD_HUNDREDS_PIN);
        break;
    case SSD_TENS:
        ret = GPIO_ReadPortPin(SSD_TENS_DR, SSD_TENS_PIN);
        break;
    case SSD_UNITS:
        ret = GPIO_ReadPortPin(SSD_UNITS_DR, SSD_UNITS_PIN);
        break;
    default:
        /* Should not be here */
        break;

    }

    return ret;
}

void SSD_SetState(tSSD ssd, tSSD_State state)
{

    switch (ssd)
    {
    case SSD_HUNDREDS:
       GPIO_WritePortPin(SSD_HUNDREDS_DR, SSD_HUNDREDS_PIN, state);
        break;
    case SSD_TENS:
        GPIO_WritePortPin(SSD_TENS_DR, SSD_TENS_PIN, state);
        break;
    case SSD_UNITS:
        GPIO_WritePortPin(SSD_UNITS_DR, SSD_UNITS_PIN, state);
        break;
    default:
        /* Should not be here */
        break;

    }
}

tSSD_Symbol SSD_GetSymbol(tSSD ssd)
{
    return SSD_Symbols[ssd];
}

void SSD_SetSymbol(tSSD ssd, tSSD_Symbol symbol)
{
    SSD_Symbols[ssd] = symbol;
}

void SSD_Update(void)
{
    static tByte SSD_Update_Counter = 0;

    /* Check its period to run */
    SSD_Update_Counter += OS_TICK_MS;
    if (SSD_Update_Counter < SSD_UPDATE_PERIOD_MS)
    {
        return;
    }
    SSD_Update_Counter = 0;

    /* Multiplexing SSD */
    SSD_Out(SSD_Current, SSD_GetSymbol(SSD_Current));

    if (SSD_Current == SSD_UNITS)
    {
        SSD_Current = SSD_HUNDREDS;
    } else
    {
        SSD_Current++;
    }
}


static void SSD_Out(tSSD ssd, tSSD_Symbol symbol)
{
    SSD_SetState(SSD_HUNDREDS, SSD_OFF);
    SSD_SetState(SSD_TENS, SSD_OFF);
    SSD_SetState(SSD_UNITS, SSD_OFF);

    GPIO_WritePort(SSD_DATA_PORT_DR, SSD_Data[symbol]);

    SSD_SetState(ssd, SSD_ON);
}
