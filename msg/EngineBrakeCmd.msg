# engine brake constants
uint8 OFF = 0
uint8 LEVEL_1 = 1
uint8 LEVEL_2 = 2
uint8 LEVEL_3 = 3
uint8 LEVEL_4 = 4
uint8 LEVEL_5 = 5

# auto_cmd constants
uint8 AUTO_OFF = 2
uint8 AUTO_ON = 1


std_msgs/Header header

bool enable
bool ignore_overrides
bool clear_override
uint8 engine_brake_cmd
uint8 auto_cmd
