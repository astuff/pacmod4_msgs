# Global report 2

# enable_method constants
uint8 INDIVIDUAL_SYSTEM_ENABLE = 0
uint8 GLOBAL_SYSTEM_ENABLE = 1

std_msgs/Header header

bool system_enabled                # True if control any system on the PACMod is enabled
bool system_override_active        # True if an override was triggered on any system
bool system_fault_active           # True if a fault is active on any system
bool supervisory_enable_required   # True if the platform supports Supervisory Enablement Rules
bool disable_all_systems
bool system_ready
uint8 enable_method
bool override_mode
bool development_mode
bool development_mode_allowed
