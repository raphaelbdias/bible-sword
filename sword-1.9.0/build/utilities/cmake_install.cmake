# Install script for directory: /workspaces/bible-sword/sword-1.9.0/utilities

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/addld" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/addld")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/addld"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/addld")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/addld")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/addld" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/addld")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/addld"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/addld")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/emptyvss" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/emptyvss")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/emptyvss"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/emptyvss")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/emptyvss")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/emptyvss" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/emptyvss")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/emptyvss"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/emptyvss")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/imp2gbs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/imp2gbs")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/imp2gbs"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/imp2gbs")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/imp2gbs")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/imp2gbs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/imp2gbs")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/imp2gbs"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/imp2gbs")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/imp2ld" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/imp2ld")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/imp2ld"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/imp2ld")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/imp2ld")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/imp2ld" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/imp2ld")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/imp2ld"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/imp2ld")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/imp2vs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/imp2vs")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/imp2vs"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/imp2vs")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/imp2vs")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/imp2vs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/imp2vs")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/imp2vs"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/imp2vs")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/installmgr" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/installmgr")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/installmgr"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/installmgr")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/installmgr")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/installmgr" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/installmgr")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/installmgr"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/installmgr")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mkfastmod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mkfastmod")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/mkfastmod"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/mkfastmod")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/mkfastmod")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mkfastmod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mkfastmod")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/mkfastmod"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/mkfastmod")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mod2imp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mod2imp")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/mod2imp"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/mod2imp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/mod2imp")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mod2imp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mod2imp")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/mod2imp"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/mod2imp")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mod2osis" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mod2osis")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/mod2osis"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/mod2osis")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/mod2osis")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mod2osis" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mod2osis")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/mod2osis"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/mod2osis")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mod2vpl" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mod2vpl")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/mod2vpl"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/mod2vpl")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/mod2vpl")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mod2vpl" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mod2vpl")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/mod2vpl"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/mod2vpl")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tei2mod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tei2mod")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/tei2mod"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/tei2mod")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/tei2mod")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/tei2mod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/tei2mod")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/tei2mod"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/tei2mod")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/vpl2mod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/vpl2mod")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/vpl2mod"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/vpl2mod")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/vpl2mod")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/vpl2mod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/vpl2mod")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/vpl2mod"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/vpl2mod")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/vs2osisref" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/vs2osisref")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/vs2osisref"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/vs2osisref")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/vs2osisref")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/vs2osisref" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/vs2osisref")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/vs2osisref"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/vs2osisref")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/vs2osisreftxt" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/vs2osisreftxt")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/vs2osisreftxt"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/vs2osisreftxt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/vs2osisreftxt")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/vs2osisreftxt" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/vs2osisreftxt")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/vs2osisreftxt"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/vs2osisreftxt")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/xml2gbs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/xml2gbs")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/xml2gbs"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/xml2gbs")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/xml2gbs")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/xml2gbs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/xml2gbs")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/xml2gbs"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/xml2gbs")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/osis2mod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/osis2mod")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/osis2mod"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/osis2mod")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/osis2mod")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/osis2mod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/osis2mod")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/osis2mod"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/osis2mod")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mod2zmod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mod2zmod")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/mod2zmod"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/mod2zmod")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/workspaces/bible-sword/sword-1.9.0/build/utilities/mod2zmod")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mod2zmod" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mod2zmod")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/mod2zmod"
         OLD_RPATH "/workspaces/bible-sword/sword-1.9.0/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/mod2zmod")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/workspaces/bible-sword/sword-1.9.0/build/utilities/diatheke/cmake_install.cmake")

endif()

