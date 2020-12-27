#ifndef __OS_H__
#define __OS_H__

#include "Main.h"

#define OS_TICK_MS (5)


void OS_Init(void);
void OS_Start(tByte tick);
void OS_GoToSleep(void);
void OS_Update(void) __interrupt 0;
void OS_Schedule(void);

#endif // __OS_H__
