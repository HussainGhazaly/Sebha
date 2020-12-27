#ifndef __SW_H__
#define __SW_H__

typedef enum
{
    SW_PLUS,
    SW_RESET
}tSW;

typedef enum
{
    SW_RELEASED,
    SW_PRE_PRESSED,
    SW_PRESSED,
    SW_PRE_RELEASED
}tSW_State;

void SW_Init(tSW sw, tSW_State state);
tSW_State SW_GetState(tSW sw);
void SW_Update(void);
#endif // __SW_H__
