#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "rtlsdr::rtlsdr" for configuration "RelWithDebInfo"
set_property(TARGET rtlsdr::rtlsdr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(rtlsdr::rtlsdr PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/arm-linux-gnueabihf/librtlsdr.so.0.6.0"
  IMPORTED_SONAME_RELWITHDEBINFO "librtlsdr.so.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS rtlsdr::rtlsdr )
list(APPEND _IMPORT_CHECK_FILES_FOR_rtlsdr::rtlsdr "${_IMPORT_PREFIX}/lib/arm-linux-gnueabihf/librtlsdr.so.0.6.0" )

# Import target "rtlsdr::rtlsdr_static" for configuration "RelWithDebInfo"
set_property(TARGET rtlsdr::rtlsdr_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(rtlsdr::rtlsdr_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/arm-linux-gnueabihf/librtlsdr.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS rtlsdr::rtlsdr_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_rtlsdr::rtlsdr_static "${_IMPORT_PREFIX}/lib/arm-linux-gnueabihf/librtlsdr.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
