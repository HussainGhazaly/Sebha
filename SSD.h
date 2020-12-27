#ifndef __SDD_H__
#define __SDD_H__

typedef enum
{
    SSD_HUNDREDS,
    SSD_TENS,
    SSD_UNITS
}tSSD;

typedef enum
{
    SSD_OFF,
    SSD_ON
}tSSD_State;

typedef enum
{
    SSD_0,
    SSD_1,
    SSD_2,
    SSD_3,
    SSD_4,
    SSD_5,
    SSD_6,
    SSD_7,
    SSD_8,
    SSD_9,
    SSD_NULL
}tSSD_Symbol;

void SSD_Init(tSSD ssd, tSSD_State state, tSSD_Symbol symbol);

tSSD_State SSD_GetState(tSSD ssd);
void SSD_SetState(tSSD ssd, tSSD_State state);

tSSD_Symbol SSD_GetSymbol(tSSD ssd);
void SSD_SetSymbol(tSSD ssd, tSSD_Symbol symbol);

void SSD_Update(void);

#endif // __SDD_H__
