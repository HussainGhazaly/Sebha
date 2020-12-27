#ifndef __PORT_H__
#define __PORT_H__

/* Switches */
#define SW_PLUS_PORT_DR     (GPIO_PORTB_DATA)
#define SW_PLUS_PORT_CR     (GPIO_PORTB_CONTROL)
#define SW_PLUS_PIN         (GPIO_PIN_0)

#define SW_RESET_PORT_DR    (GPIO_PORTB_DATA)
#define SW_RESET_PORT_CR    (GPIO_PORTB_CONTROL)
#define SW_RESET_PIN        (GPIO_PIN_1)

/* SSD */
#define SSD_DATA_PORT_DR    (GPIO_PORTD_DATA)
#define SSD_DATA_PORT_CR    (GPIO_PORTD_CONTROL)

#define SSD_HUNDREDS_DR     (GPIO_PORTB_DATA)
#define SSD_HUNDREDS_CR     (GPIO_PORTB_CONTROL)
#define SSD_HUNDREDS_PIN    (GPIO_PIN_7)

#define SSD_TENS_DR         (GPIO_PORTB_DATA)
#define SSD_TENS_CR         (GPIO_PORTB_CONTROL)
#define SSD_TENS_PIN        (GPIO_PIN_6)

#define SSD_UNITS_DR        (GPIO_PORTB_DATA)
#define SSD_UNITS_CR        (GPIO_PORTB_CONTROL)
#define SSD_UNITS_PIN       (GPIO_PIN_5)
#endif // __PORT_H__
