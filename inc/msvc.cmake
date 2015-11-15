if (WIN32)
	set(VLINDER_TARGET_PLATFORM_NAME win32)
	set(MSVC_DISABLE_WARNINGS "-D_SCL_SECURE_NO_WARNINGS /wd4251 /wd4996 /wd4273 /wd4275")
	set(MSVC_ENABLE_EXCEPTIONS "/EHsc")
	set(VLINDER_COMPILE_FLAGS "${MSVC_DIABLE_WARNINGS} ${MSVC_ENABLE_EXCEPTIONS}")
endif()
