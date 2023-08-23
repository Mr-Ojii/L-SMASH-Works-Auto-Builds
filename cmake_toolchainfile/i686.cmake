# Ref
# https://cmake.org/cmake/help/book/mastering-cmake/chapter/Cross%20Compiling%20With%20CMake.html
# https://gist.github.com/peterspackman/8cf73f7f12ba270aa8192d6911972fe8
# https://stackoverflow.com/questions/35772562/inlining-failed-in-call-to-always-inline-m128i-mm-cvtepu8-epi32-m128i-t
# https://stackoverflow.com/questions/44962849/inlining-failed-in-call-to-always-inline-m256d-mm256-broadcast-sdconst-doub
# https://stackoverflow.com/questions/54654290/error-inlining-failed-to-call-always-inline
# https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html

set(CMAKE_SYSTEM_NAME Windows)
set(TOOLCHAIN_PREFIX i686-w64-mingw32)

# cross compilers to use for C and C++
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc-posix)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-g++-posix)
set(CMAKE_RC_COMPILER ${TOOLCHAIN_PREFIX}-windres)

# target environment on the build host system
set(CMAKE_FIND_ROOT_PATH /usr/${TOOLCHAIN_PREFIX})

# modify default behavior of FIND_XXX() commands
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=pentium4")
