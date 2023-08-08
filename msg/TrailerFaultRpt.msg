# supply status constants
uint8 INSUFFICIENT = 0
uint8 SUFFICIENT = 1
uint8 ERROR = 2
uint8 NOT_AVAIL = 3

# abs_status/service_brake constants
uint8 PASSIVE = 0
uint8 ACTIVE = 1

# warning lamp constants
uint8 LAMP_OFF = 0
uint8 LAMP_ON = 1

std_msgs/Header header

uint8 service_brake_status
uint8 abs_status
uint8 electrical_supply_status
uint8 pneumatic_supply_status
uint8 amber_warning_lamp_request
uint8 red_warning_lamp_request
