# User command to set the safety function for the platform

# Safety Function Command Constants
uint16 STATE_NONE = 0
uint16 STATE_AUTO_READY = 1
uint16 STATE_AUTO = 2
uint16 STATE_MANUAL_READY = 3
uint16 STATE_MANUAL = 4
uint16 STATE_STARTUP = 5

uint16 NOT_OBTAINABLE = 0
uint16 OBTAINABLE = 1

uint16 CMD_NONE = 0
uint16 CMD_AUTO_READY = 0
uint16 CMD_AUTO = 0
uint16 CMD_MANUAL_READY = 0

std_msgs/Header header

uint16 commanded_state
uint16 state
bool manual_state_obtainable
bool auto_ready_state_obtainable 
bool auto_state_obtainable
bool manual_ready_state_obtainable
