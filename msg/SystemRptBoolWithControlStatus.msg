# Feedback report for bool systems

# Parking Brake Command Constants
bool PARKING_BRAKE_OFF = 0
bool PARKING_BRAKE_ON = 1

# trailer air supply constants
bool TRAILER_AIR_SUPPLY_OFF = 0
bool TRAILER_AIR_SUPPLY_ON = 1


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
bool manual_input             # Measured value on vehicle stalk/sensor. Values defined above
bool command                  # Echoed user command value. Values defined above
bool output                   # Measured value of PACMod output. Values defined above

bool control_status
uint8 controlling_systems
uint8 performance_status
