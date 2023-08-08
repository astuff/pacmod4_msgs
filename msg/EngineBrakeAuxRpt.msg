# engine_brake_status constants
uint8 BRAKING_NOT_ACTIVE = 0
uint8 BRAKING_ACTIVE = 1

std_msgs/Header header

uint8 engine_brake_status
float64 actual_engine_brk_torque
float64 intended_engine_brk_torque
bool engine_brake_status_avail
bool actual_engine_brk_torque_avail
bool intended_engine_brk_torque_avail

