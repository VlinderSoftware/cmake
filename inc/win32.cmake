if (WIN32)

	set(VLINDER_TARGET_PLATFORM_NAME win32)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DVLINDER_TARGET_WIN32")
endif()

