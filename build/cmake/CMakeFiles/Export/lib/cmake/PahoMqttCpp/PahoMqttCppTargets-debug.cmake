#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PahoMqttCpp::paho-mqttpp3" for configuration "Debug"
set_property(TARGET PahoMqttCpp::paho-mqttpp3 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(PahoMqttCpp::paho-mqttpp3 PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libpaho-mqttpp3.so.1.2.0"
  IMPORTED_SONAME_DEBUG "libpaho-mqttpp3.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS PahoMqttCpp::paho-mqttpp3 )
list(APPEND _IMPORT_CHECK_FILES_FOR_PahoMqttCpp::paho-mqttpp3 "${_IMPORT_PREFIX}/lib/libpaho-mqttpp3.so.1.2.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
