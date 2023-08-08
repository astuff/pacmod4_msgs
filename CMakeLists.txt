project(pacmod4_msgs)

find_package(ros_environment REQUIRED)

set(ROS_VERSION $ENV{ROS_VERSION})

set(MSG_FILES
  "AccelAuxRpt.msg"
  "AirPressureRpt.msg"
  "AllSystemStatuses.msg"
  "AngVelRpt.msg"
  "AutomsManSwitchRpt.msg"
  "BatteryVoltageLevelRpt.msg"
  "BrakeAuxRpt.msg"
  "BrakeDecelAuxRpt.msg"
  "BrakeDecelCmd.msg"
  "CabinClimateCmd.msg"
  "CabinClimateRpt.msg"
  "ComponentRpt.msg"
  "DateTimeRpt.msg"
  "DetectedObjectRpt.msg"
  "DifferentialLocksCmd.msg"
  "DifferentialLocksRpt.msg"
  "DoorRpt.msg"
  "DrivetrainFeatureRpt.msg"
  "EngineAuxRpt.msg"
  "EngineAuxRpt2.msg"
  "EngineBrakeAuxRpt.msg"
  "EngineBrakeCmd.msg"
  "EngineBrakeRpt.msg"
  "EngineLoadFactorRpt.msg"
  "EStopRpt.msg"
  "FireSuppressionRpt.msg"
  "GlobalCmd.msg"
  "GlobalRpt.msg"
  "GlobalRpt2.msg"
  "GnssTime.msg"
  "HeadlightAuxRpt.msg"
  "InteriorLightsRpt.msg"
  "KeyValuePair.msg"
  "LatLonHeadingRpt.msg"
  "LinearAccelRpt.msg"
  "NotificationRpt.msg"
  "MotorRpt1.msg"
  "MotorRpt2.msg"
  "MotorRpt3.msg"
  "NotificationCmd.msg"
  "OccupancyRpt.msg"
  "ParkingBrakeAuxRpt.msg"
  "RearLightsRpt.msg"
  "RemoteStopRpt.msg"
  "SafetyBrakeCmd.msg"
  "SafetyBrakeRpt.msg"
  "SafetyFuncCmd.msg"
  "SafetyFuncCriticalStopRpt.msg"
  "SafetyFuncRpt.msg"
  "SafetyFuncRpt2.msg"
  "SafetyResponseRpt.msg"
  "ShiftAuxRpt.msg"
  "SoftwareVersionRpt.msg"
  "SteeringAuxRpt.msg"
  "SteeringCmd.msg"
  "SteeringCmdLimitRpt.msg"
  "SupervisoryCtrl.msg"
  "SystemCmdBool.msg"
  "SystemCmdFloat.msg"
  "SystemCmdInt.msg"
  "SystemCmdLimitRpt.msg"
  "SystemRptBool.msg"
  "SystemRptBoolWithControlStatus.msg"
  "SystemRptFloat.msg"
  "SystemRptInt.msg"
  "SystemRptIntWithControlStatus.msg"
  "TipperBodyAuxRpt.msg"
  "TirePressureExtendedRpt.msg"
  "TirePressureRpt.msg"
  "TireTemperatureExtendedRpt.msg"
  "TrailerBrakePressureRpt.msg"
  "TrailerFaultRpt.msg"
  "TrailerPayloadRpt.msg"
  "TrailerWheelSpeedRpt.msg"
  "TurnAuxRpt.msg"
  "UserPcHealthRpt.msg"
  "VehicleDynamicsRpt.msg"
  "VehicleFaultRpt.msg"
  "VehicleFaultRpt2.msg"
  "VehicleSpeedRpt.msg"
  "VinRpt.msg"
  "WatchdogRpt.msg"
  "WatchdogRpt2.msg"
  "WheelSpeedRpt.msg"
  "WiperAuxRpt.msg"
  "YawRateRpt.msg"
)

if(${ROS_VERSION} EQUAL 1)

  cmake_minimum_required(VERSION 2.8.3)

  # Default to C++11
  if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 11)
  endif()

  find_package(catkin REQUIRED
    COMPONENTS
    message_generation
    std_msgs
  )

  add_message_files(FILES
    ${MSG_FILES}
    DIRECTORY msg
  )

  generate_messages(DEPENDENCIES std_msgs)

  catkin_package(
    CATKIN_DEPENDS message_runtime
  )

  # install(DIRECTORY migration
  #   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/
  # )

elseif(${ROS_VERSION} EQUAL 2)

  cmake_minimum_required(VERSION 3.5)

  if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
    set(CMAKE_CXX_STANDARD 14)
  endif()

  if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wall -Wextra -Wpedantic)
  endif()

  find_package(ament_cmake REQUIRED)
  find_package(builtin_interfaces REQUIRED)
  find_package(std_msgs REQUIRED)
  find_package(rosidl_default_generators REQUIRED)

  # Apend "msg/" to each file name
  set(TEMP_LIST "")
  foreach(MSG_FILE ${MSG_FILES})
    list(APPEND TEMP_LIST "msg/${MSG_FILE}")
  endforeach()
  set(MSG_FILES ${TEMP_LIST})

  rosidl_generate_interfaces(${PROJECT_NAME}
    ${MSG_FILES}
    DEPENDENCIES builtin_interfaces std_msgs
    ADD_LINTER_TESTS
  )

  ament_export_dependencies(rosidl_default_runtime)

  if(BUILD_TESTING)
    find_package(ament_lint_auto REQUIRED)
    ament_lint_auto_find_test_dependencies()
  endif()

  # install(DIRECTORY migration
  #   DESTINATION share/${PROJECT_NAME}/
  # )

  ament_package()

endif()
