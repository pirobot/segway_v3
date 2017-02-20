# This configures the environment variables for a segway rmp V3 simulation
# This is necessary to run before starting the simulation 
#

# If there is an onboard PC powered by the system this will run the watchdog
# to make sure it gets gracefully shutdown before the system power cuts out.
export SEGWAY_POWERS_PC_ONBOARD=true

#Default Segway RMP_V3 network 
export SEGWAY_IP_ADDRESS=10.66.171.5
export SEGWAY_IP_PORT_NUM=8080

# The reference frame for all the accessories and sensors
export SEGWAY_PARENT_LINK=base_chassis_link

#Determines if move base should run in balance mode, if false runs in tractor
export SEGWAY_RUNS_IN_BALANCE_MODE=false
# Determines if Segway platform is equipped with a BSA almost all are expect the RMP210
export SEGWAY_HAS_BSA=false

# Platform name for specific URDF models and configurations; the base platform is
# used for drivers, sim controllers, etc; the platform name is for special URDF/Sensor
# configurations. In general they should be the same unless we built you a custom system
export SEGWAY_BASE_PLATFORM=RMP_210
export SEGWAY_PLATFORM_NAME=RMP_210

# Defines the location of the sensors frames and the UI box
# they all move together for the navigator elite. This is the point at the
# base of the sensor pedestal aligned with the base_link
export NAVIGATOR_ELITE_XYZ="-0.1801 0 0.060625"

#Only the RMP220 and RMP210 can have caster plates so do not enable them if using another model
export SEGWAY_HAS_REAR_CASTER=true
export SEGWAY_HAS_FRONT_CASTER=false

#Determines if the platform should use 2D or 3D odometry
export SEGWAY_USE_2D_ODOMETRY=true
# Determines if we should use robot_localization EKF or the onboard odometry;
# set to true for onboard odometry
export SEGWAY_USE_PLATFORM_ODOMETRY=true
# determines if GPS is used for local or global odometry (requires a GPS data source)
export SEGWAY_USE_GPS_FOR_LOCAL_ODOM=false
export SEGWAY_USE_GPS_FOR_GLOBAL_LOCALIZATION=false

# Joystick configurations for onboard joystick
# Joystick configurations for onboard joystick
export SEGWAY_HAS_ONBOARD_JOY=false
export SEGWAY_JOY_DEV=/dev/input/js0
export SEGWAY_JOY_MAPPING=extreme3D
export SEGWAY_JOY_DEADZONE=0.1

# Sets whether the costmaps use 3D voxel grid layer (need a 3D sensor enabled)
export SEGWAY_USE_VOXEL_GRID=false

# External IMU configuration;
export SEGWAY_HAS_EXT_IMU=false
export SEGWAY_HAS_UM7_IMU=false
export SEGWAY_UM7_DEV="/dev/serial/by-path/pci-0000:00:14.0-usb-0:3:1.0-port0"
export EXT_IMU_XYZ="-0.25203 0.130 0.0715"
export EXT_IMU_RPY="3.1415 0 3.1415"

# GPS configuration
export SEGWAY_HAS_GPS=false
export SEGWAY_HAS_NEO7=false
export SEGWAY_NEO7_DEV="/dev/serial/by-path/pci-0000:00:14.0-usb-0:4:1.0-port0"
export GPS_XYZ="0.5 0 0.25409"
export GPS_RPY="0 0 0"

# 2D scanner configuration for launch files; should change hokuyo
# to sick if using a SICK LMS1XX
export SEGWAY_HAS_ONE_2D_LASER=true
export SEGWAY_HAS_SECOND_2D_LASER=false

# Hokuyo configuration (only supports two by default) watch 
# wavelength on multi-laser systems
export SEGWAY_LASER1_IS_HOKUYO=false
export SEGWAY_LASER1_IS_SICK_TIM=true
export SEGWAY_LASER1_IP=10.66.171.8
export SEGWAY_LASER1_PORT=2112
#Uncomment below and comment line above for hokuyo
#export SEGWAY_LASER1_PORT=10940 
#export LASER1_XYZ="0.35 0 0.25409"
export LASER1_XYZ="0.29345 0 0.26796"
export LASER1_RPY="0 0 0"
export LASER1_MAX_RANGE=20.0
export LASER1_MIN_RANGE=0.01
export LASER1_PREFIX="front"

export SEGWAY_LASER2_IS_HOKUYO=true
export SEGWAY_LASER2_IS_SICK_TIM=false
export SEGWAY_LASER2_IP=10.66.171.9
export SEGWAY_LASER2_PORT=2112
#Uncomment below and comment line above for hokuyo
#export SEGWAY_LASER1_PORT=10940 
export LASER2_XYZ="-0.62204 0 0.25409"
export LASER2_RPY="0 0 3.1415"
export LASER2_MAX_RANGE=20.0
export LASER2_MIN_RANGE=0.01
export LASER2_PREFIX="rear"

# Segway has KINECT
export SEGWAY_HAS_KINECT=false
export SEGWAY_HAS_KINECT_360=false
#export SEGWAY_HAS_KINECT_ONE=false not supported unless custom platform
export RGBD_SENSOR_XYZ="0 0 1.0"
export RGBD_SENSOR_RPY="0 0 0"

# Segway has VLP16
export SEGWAY_HAS_VLP16=false
export SEGWAY_VLP16_IP=192.168.1.201
export SEGWAY_VLP16_PORT=2368
export VLP16_XYZ="0.0254 0 0.42760744"
export VLP16_RPY="0 0 0"

# Machine vision
export SEGWAY_HAS_FLEA3=false
export SEGWAY_FLEA3_SN='14472220'
export SEGWAY_FLEA3_IS_CALIBRATED=false
export FLEA3_XYZ="0.0518 0 0.35508750"
export FLEA3_RPY="0 0 0"
