# manual_input/commanded_value/output_value constants
uint8 OFF = 0
uint8 LEVEL_1 = 1
uint8 LEVEL_2 = 2
uint8 LEVEL_3 = 3
uint8 LEVEL_4 = 4
uint8 LEVEL_5 = 5

# auto constants
uint8 AUTO_OFF = 0
uint8 AUTO_ON = 1

std_msgs/Header header

bool command_timeout
bool vehicle_fault
bool pacmod_fault
bool output_reported_fault
bool input_output_fault
bool command_output_fault
bool override_active
bool enabled
uint8 manual_input
uint8 commanded_value
uint8 output_value
uint8 out_auto
uint8 cmd_auto
uint8 man_auto
