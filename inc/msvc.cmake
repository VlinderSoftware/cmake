if (WIN32)
	set(VLINDER_TARGET_PLATFORM_NAME win32)
	set(CMAKE_CXX_FLAGS "-D_SCL_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_WARNINGS -DVLINDER_TARGET_WIN32 -D_WINSOCKAPI_ /wd4251 /wd4996 /wd4273 /wd4275 /wd4018 /wd4146 /EHsc")
	set(PLATFORM_SOCKET_LIBRARIES ws2_32)
endif()

