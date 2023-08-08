# light color constants
uint8 WHITE = 1
uint8 RED = 2
uint8 GREEN = 3
uint8 BLUE = 4
uint8 PURPLE = 5
uint8 ORANGE = 6
uint8 YELLOW = 7
uint8 TEAL = 8
uint8 PINK = 9
uint8 COLOR_OFF = 10

# light status constants
uint8 NO_BLINK = 0
uint8 BLINK = 1

# buzzer status
uint8 BUZZER_OFF = 0
uint8 BUZZER_ON = 1
uint8 BUZZER_BLINK = 2

std_msgs/Header header

uint8 light_color
uint8 light_status
uint8 buzzer_status
