#include "HLD.h"
#include "LED_Test.h"

#define BINARY

void LED_blinking (void)
{

	static uint8 LED_counter = 0;
	LED_counter ++;
#ifdef BINARY
	if(LED_counter == 16)
	{
		LED_counter = 0;
	}
	HLD_Led_setLedBinary(LED_counter);
#endif
}
