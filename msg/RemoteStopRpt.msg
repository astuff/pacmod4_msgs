# remote_stop_command constants
uint8 GO = 0
uint8 STOP = 1
uint8 TEST = 2
uint8 ERROR = 254
uint8 NOT_AVAIL = 255

std_msgs/Header header

uint8 remote_stop_command
uint16 remote_stop_sender_id
bool remote_stop_timeout
bool remote_stop_fault
bool remote_stop_mode_change_allowed
