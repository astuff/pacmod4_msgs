# lock command constants
uint8 LOCK_OFF = 0
uint8 LOCK_ON = 1
uint8 ERROR = 2
uint8 NOT_AVAIL = 3

std_msgs/Header header

bool enable
bool ignore_overrides
bool clear_override

uint8 front_lock_cmd
uint8 center_lock_cmd
uint8 rear_lock_cmd
