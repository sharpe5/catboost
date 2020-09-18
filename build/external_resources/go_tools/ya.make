

RESOURCES_LIBRARY()

IF (NOT HOST_OS_DARWIN AND NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS)
    MESSAGE(FATAL_ERROR Unsupported host platform for GO_TOOLS)
ELSEIF(GOSTD_VERSION STREQUAL 1.14.6)
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        GO_TOOLS
        sbr:1618013784 FOR DARWIN
        sbr:1618012908 FOR LINUX
        sbr:1618014823 FOR WIN32
    )
ELSEIF(GOSTD_VERSION STREQUAL 1.15.2)
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        GO_TOOLS
        sbr:1724315781 FOR DARWIN
        sbr:1724314661 FOR LINUX
        sbr:1724317325 FOR WIN32
    )
ELSE()
    MESSAGE(FATAL_ERROR Unsupported version [${GOSTD_VERSION}] of Go Standard Library)
ENDIF()

END()
