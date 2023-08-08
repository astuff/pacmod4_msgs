# Feedback report for bool systems

# Shift Command Constants
uint16 SHIFT_PARK = 0
uint16 SHIFT_REVERSE = 1
uint16 SHIFT_NEUTRAL = 2
uint16 SHIFT_HIGH = 3
uint16 SHIFT_FORWARD = 3
uint16 SHIFT_LOW = 4
uint16 SHIFT_NONE = 7
uint16 REV_THIRD = 124
uint16 REV_SECOND = 125
uint16 REV_FIRST = 126
uint16 RESERVED = 127
uint16 FIRST = 128
uint16 SECOND = 129
uint16 THIRD = 130
uint16 FOURTH = 131
uint16 FIFTH = 132
uint16 SIXTH = 133
uint16 SEVENTH = 134
uint16 EIGHTH = 135
uint16 NINTH = 136
uint16 TENTH = 137
uint16 ELEVENTH = 138
uint16 TWELFTH = 139
uint16 THIRTEENTH = 140
uint16 FOURTEENTH = 141
uint16 FIFTEENTH = 142
uint16 SIXTEENTH = 143
uint16 SEVENTEENTH = 144
uint16 EIGHTEENTH = 145
uint16 NINETEENTH = 146
uint16 TWENTIETH = 147
uint16 TWENTY_FIRST = 148
uint16 TWENTY_SECOND = 149
uint16 TWENTY_THIRD = 150
uint16 TWENTY_FOURTH = 151
uint16 TWENTY_FIFTH = 152
uint16 ERROR = 254
uint16 NOT_AVAI = 255

# Control Status Constants
bool SAFE = 0
bool AVAILABLE = 1

# Performance Status Constants
uint8 NONE = 0
uint8 CMD_TRACKING_FAILURE = 1
uint8 APPROACHING_OPERATIONAL_LIMITS = 2
uint8 LIMITING_ACTIVE = 3
uint8 LIMITING_IMMINENT = 4

std_msgs/Header header

bool enabled                  # True if system is enabled
bool override_active          # True if override has been triggered
bool command_output_fault     # True if fault is active
bool input_output_fault       # True if fault is active
bool output_reported_fault    # True if fault is active
bool pacmod_fault             # True if fault is active
bool vehicle_fault            # True if fault is active
bool command_timeout          # True if timeout has occurred on command message while enabled
uint16 manual_input             # Measured value on vehicle stalk/sensor. Values defined above
uint16 command                  # Echoed user command value. Values defined above
uint16 output                   # Measured value of PACMod output. Values defined above

bool control_status
uint8 controlling_systems
uint8 performance_status
