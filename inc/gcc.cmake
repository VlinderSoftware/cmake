if (CMAKE_COMPILER_IS_GNUCC AND CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 7.1)
    add_compile_options("-Wno-psabi")
endif()
