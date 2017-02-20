export SEGWAY_BASE_PLATFORM=RMP_210
export SEGWAY_PLATFORM_NAME=RMP_210
export SEGWAY_DESCRIPTION=$(catkin_find --without-underlays --first-only segway_description urdf/description.xacro 2>/dev/null)
