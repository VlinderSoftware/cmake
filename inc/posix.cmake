if (UNIX)
	find_package(Threads)
	include (CheckLibraryExists)
	check_library_exists(pthread pthread_timedjoin_np "" HAVE_PHTREAD_TIMEDJOIN_NP)
	set(CMAKE_C_FLAGS "-g -O2 -Wall -W -Wshadow -Wunused-variable -Wunused-parameter -Wunused-function -Wunused -Wno-unused-local-typedefs -Wno-system-headers -Wwrite-strings -fprofile-arcs -ftest-coverage -save-temps")
	if (${CYGWIN})
	elseif(${MINGW})
	else()
		set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
	endif()
	set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -Wno-deprecated -Woverloaded-virtual")
 
	set(VLINDER_TARGET_PLATFORM_NAME posix)
endif()
