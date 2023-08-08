# Feedback report for int systems

uint16 LOCK_OFF = 0
uint16 LOCK_ON = 1
uint16 ERROR = 2
uint16 NOT_AVAIL = 3

std_msgs/Header header

bool enabled                  # True if system is enabled
bool override_active          # True if override has been triggered
bool command_output_fault     # True if fault is active
bool input_output_fault       # True if fault is active
bool output_reported_fault    # True if fault is active
bool pacmod_fault             # True if fault is active
bool vehicle_fault            # True if fault is active
bool command_timeout          # True if timeout has occurred on command message while enabled
uint16 man_front_lock         # Values defined above
uint16 cmd_front_lock         # Values defined above
uint16 out_front_lock         # Values defined above
uint16 man_center_lock        # Values defined above
uint16 cmd_center_lock        # Values defined above
uint16 out_center_lock        # Values defined above
uint16 man_rear_lock          # Values defined above
uint16 cmd_rear_lock          # Values defined above
uint16 out_rear_lock          # Values defined above
