if (WIN32)

	set(VLINDER_TARGET_PLATFORM_NAME win32)
	if (USING_ASIO)
		add_definitions(-D_WIN32_WINNT=0x0501)
		add_definitions(-DASIO_HAS_STD_SYSTEM_ERROR)  

		set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W3 /MP")
	else ()
		set (WINSOCKAPI "-D_WINSOCKAPI_")
	endif()
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D_SCL_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_WARNINGS -DVLINDER_TARGET_WIN32 ${WINSOCKAPI} /wd4251 /wd4996 /wd4273 /wd4275 /wd4018 /wd4146 /EHsc")
	if (NOT USING_ASIO)
		set(PLATFORM_SOCKET_LIBRARIES ws2_32)
	endif()
endif()

