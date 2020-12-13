

LIBRARY()

LICENSE(
    APACHE2
)

VERSION(1.10.0)

NO_UTIL()

ADDINCL(
    contrib/libs/flatbuffers/include
)

SRCDIR(
    contrib/libs/flatbuffers/src
)

SRCS(
    idl_parser.cpp
    idl_gen_text.cpp
    reflection.cpp
    util.cpp
)

END()
