if (UNIX)
	find_package(Threads)
	include (CheckLibraryExists)
	check_library_exists(pthread pthread_timedjoin_np "" HAVE_PHTREAD_TIMEDJOIN_NP)
	set(CMAKE_CXX_FLAGS "-g -O2 -Wall -W -Wshadow -Wunused-variable -Wunused-parameter -Wunused-function -Wunused -Wno-unused-typedef -Wno-system-headers -Wno-deprecated -Woverloaded-virtual -Wwrite-strings -fprofile-arcs -ftest-coverage -save-temps")
 
	set(VLINDER_TARGET_PLATFORM_NAME posix)
endif()
