# Install script for directory: /workspaces/bible-sword/sword-1.9.0

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libsword.so.1.9.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libsword.so.1.9.0")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/lib/libsword.so.1.9.0"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libsword.so.1.9.0")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/workspaces/bible-sword/sword-1.9.0/build/libsword.so.1.9.0")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libsword.so.1.9.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libsword.so.1.9.0")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libsword.so.1.9.0")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libsword.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libsword.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/lib/libsword.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libsword.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/workspaces/bible-sword/sword-1.9.0/build/libsword.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libsword.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libsword.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libsword.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libsword.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE STATIC_LIBRARY FILES "/workspaces/bible-sword/sword-1.9.0/build/libsword.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/sword/locales.d")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/sword" TYPE DIRECTORY FILES "/workspaces/bible-sword/sword-1.9.0/locales.d")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/sword/bz2comprs.h;/usr/local/include/sword/canon.h;/usr/local/include/sword/canon_abbrevs.h;/usr/local/include/sword/cipherfil.h;/usr/local/include/sword/curlftpt.h;/usr/local/include/sword/curlhttpt.h;/usr/local/include/sword/defs.h;/usr/local/include/sword/echomod.h;/usr/local/include/sword/encfiltmgr.h;/usr/local/include/sword/entriesblk.h;/usr/local/include/sword/femain.h;/usr/local/include/sword/filemgr.h;/usr/local/include/sword/versificationmgr.h;/usr/local/include/sword/flatapi.h;/usr/local/include/sword/ftpparse.h;/usr/local/include/sword/remotetrans.h;/usr/local/include/sword/ftplibftpt.h;/usr/local/include/sword/ftplib.h;/usr/local/include/sword/gbffootnotes.h;/usr/local/include/sword/gbfheadings.h;/usr/local/include/sword/gbfhtml.h;/usr/local/include/sword/gbfxhtml.h;/usr/local/include/sword/gbfhtmlhref.h;/usr/local/include/sword/gbfwebif.h;/usr/local/include/sword/gbfmorph.h;/usr/local/include/sword/gbfosis.h;/usr/local/include/sword/gbfplain.h;/usr/local/include/sword/gbfredletterwords.h;/usr/local/include/sword/gbfrtf.h;/usr/local/include/sword/gbfstrongs.h;/usr/local/include/sword/gbfwordjs.h;/usr/local/include/sword/gbfthml.h;/usr/local/include/sword/gbflatex.h;/usr/local/include/sword/greeklexattribs.h;/usr/local/include/sword/hebrewmcim.h;/usr/local/include/sword/hrefcom.h;/usr/local/include/sword/installmgr.h;/usr/local/include/sword/latin1utf16.h;/usr/local/include/sword/latin1utf8.h;/usr/local/include/sword/listkey.h;/usr/local/include/sword/localemgr.h;/usr/local/include/sword/lzsscomprs.h;/usr/local/include/sword/markupfiltmgr.h;/usr/local/include/sword/multimapwdef.h;/usr/local/include/sword/nullim.h;/usr/local/include/sword/osisenum.h;/usr/local/include/sword/osisglosses.h;/usr/local/include/sword/osisxlit.h;/usr/local/include/sword/osisheadings.h;/usr/local/include/sword/osishtmlhref.h;/usr/local/include/sword/osisxhtml.h;/usr/local/include/sword/osiswebif.h;/usr/local/include/sword/osismorph.h;/usr/local/include/sword/osismorphsegmentation.h;/usr/local/include/sword/osisplain.h;/usr/local/include/sword/osisrtf.h;/usr/local/include/sword/osisosis.h;/usr/local/include/sword/osisstrongs.h;/usr/local/include/sword/osisfootnotes.h;/usr/local/include/sword/osislemma.h;/usr/local/include/sword/osisredletterwords.h;/usr/local/include/sword/osisscripref.h;/usr/local/include/sword/osiswordjs.h;/usr/local/include/sword/osisvariants.h;/usr/local/include/sword/osisreferencelinks.h;/usr/local/include/sword/osislatex.h;/usr/local/include/sword/papyriplain.h;/usr/local/include/sword/rawcom.h;/usr/local/include/sword/rawfiles.h;/usr/local/include/sword/rawgenbook.h;/usr/local/include/sword/rawld.h;/usr/local/include/sword/rawld4.h;/usr/local/include/sword/rawstr.h;/usr/local/include/sword/rawstr4.h;/usr/local/include/sword/rawtext.h;/usr/local/include/sword/rawverse.h;/usr/local/include/sword/roman.h;/usr/local/include/sword/rtfhtml.h;/usr/local/include/sword/sapphire.h;/usr/local/include/sword/scsuutf8.h;/usr/local/include/sword/strkey.h;/usr/local/include/sword/swbasicfilter.h;/usr/local/include/sword/swbuf.h;/usr/local/include/sword/swcacher.h;/usr/local/include/sword/swcipher.h;/usr/local/include/sword/swcom.h;/usr/local/include/sword/swcomprs.h;/usr/local/include/sword/swconfig.h;/usr/local/include/sword/swdisp.h;/usr/local/include/sword/swfilter.h;/usr/local/include/sword/swfiltermgr.h;/usr/local/include/sword/swgenbook.h;/usr/local/include/sword/swinputmeth.h;/usr/local/include/sword/swkey.h;/usr/local/include/sword/swld.h;/usr/local/include/sword/swlocale.h;/usr/local/include/sword/swlog.h;/usr/local/include/sword/swmacs.h;/usr/local/include/sword/swmgr.h;/usr/local/include/sword/stringmgr.h;/usr/local/include/sword/swmodule.h;/usr/local/include/sword/swoptfilter.h;/usr/local/include/sword/swobject.h;/usr/local/include/sword/swsearchable.h;/usr/local/include/sword/swtext.h;/usr/local/include/sword/swversion.h;/usr/local/include/sword/sysdata.h;/usr/local/include/sword/thmlfootnotes.h;/usr/local/include/sword/thmlgbf.h;/usr/local/include/sword/thmlheadings.h;/usr/local/include/sword/thmlhtml.h;/usr/local/include/sword/thmlxhtml.h;/usr/local/include/sword/thmlhtmlhref.h;/usr/local/include/sword/thmlwebif.h;/usr/local/include/sword/thmllemma.h;/usr/local/include/sword/thmlmorph.h;/usr/local/include/sword/thmlosis.h;/usr/local/include/sword/thmlplain.h;/usr/local/include/sword/thmlrtf.h;/usr/local/include/sword/thmlscripref.h;/usr/local/include/sword/thmlstrongs.h;/usr/local/include/sword/thmlvariants.h;/usr/local/include/sword/thmlwordjs.h;/usr/local/include/sword/thmllatex.h;/usr/local/include/sword/teiplain.h;/usr/local/include/sword/teirtf.h;/usr/local/include/sword/teixhtml.h;/usr/local/include/sword/teihtmlhref.h;/usr/local/include/sword/teilatex.h;/usr/local/include/sword/treekey.h;/usr/local/include/sword/treekeyidx.h;/usr/local/include/sword/unicodertf.h;/usr/local/include/sword/url.h;/usr/local/include/sword/utf16utf8.h;/usr/local/include/sword/utf8arshaping.h;/usr/local/include/sword/utf8bidireorder.h;/usr/local/include/sword/utf8cantillation.h;/usr/local/include/sword/utf8greekaccents.h;/usr/local/include/sword/utf8hebrewpoints.h;/usr/local/include/sword/utf8arabicpoints.h;/usr/local/include/sword/utf8html.h;/usr/local/include/sword/utf8latin1.h;/usr/local/include/sword/utf8nfc.h;/usr/local/include/sword/utf8nfkd.h;/usr/local/include/sword/utf8scsu.h;/usr/local/include/sword/utf8transliterator.h;/usr/local/include/sword/utf8utf16.h;/usr/local/include/sword/utilstr.h;/usr/local/include/sword/utilxml.h;/usr/local/include/sword/versekey.h;/usr/local/include/sword/versetreekey.h;/usr/local/include/sword/xzcomprs.h;/usr/local/include/sword/zcom.h;/usr/local/include/sword/zcom4.h;/usr/local/include/sword/zconf.h;/usr/local/include/sword/zipcomprs.h;/usr/local/include/sword/zld.h;/usr/local/include/sword/zstr.h;/usr/local/include/sword/ztext.h;/usr/local/include/sword/ztext4.h;/usr/local/include/sword/zverse.h;/usr/local/include/sword/zverse4.h;/usr/local/include/sword/canon_kjva.h;/usr/local/include/sword/canon_leningrad.h;/usr/local/include/sword/canon_mt.h;/usr/local/include/sword/canon_nrsv.h;/usr/local/include/sword/canon_nrsva.h;/usr/local/include/sword/canon_synodal.h;/usr/local/include/sword/canon_vulg.h;/usr/local/include/sword/canon_german.h;/usr/local/include/sword/canon_luther.h;/usr/local/include/sword/canon_null.h;/usr/local/include/sword/canon_lxx.h;/usr/local/include/sword/canon_orthodox.h;/usr/local/include/sword/canon_synodalprot.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/sword" TYPE FILE FILES
    "/workspaces/bible-sword/sword-1.9.0/include/bz2comprs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_abbrevs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/cipherfil.h"
    "/workspaces/bible-sword/sword-1.9.0/include/curlftpt.h"
    "/workspaces/bible-sword/sword-1.9.0/include/curlhttpt.h"
    "/workspaces/bible-sword/sword-1.9.0/include/defs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/echomod.h"
    "/workspaces/bible-sword/sword-1.9.0/include/encfiltmgr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/entriesblk.h"
    "/workspaces/bible-sword/sword-1.9.0/include/femain.h"
    "/workspaces/bible-sword/sword-1.9.0/include/filemgr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/versificationmgr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/flatapi.h"
    "/workspaces/bible-sword/sword-1.9.0/include/ftpparse.h"
    "/workspaces/bible-sword/sword-1.9.0/include/remotetrans.h"
    "/workspaces/bible-sword/sword-1.9.0/include/ftplibftpt.h"
    "/workspaces/bible-sword/sword-1.9.0/include/ftplib.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbffootnotes.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfheadings.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfhtml.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfxhtml.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfhtmlhref.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfwebif.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfmorph.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfosis.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfplain.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfredletterwords.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfrtf.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfstrongs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfwordjs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbfthml.h"
    "/workspaces/bible-sword/sword-1.9.0/include/gbflatex.h"
    "/workspaces/bible-sword/sword-1.9.0/include/greeklexattribs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/hebrewmcim.h"
    "/workspaces/bible-sword/sword-1.9.0/include/hrefcom.h"
    "/workspaces/bible-sword/sword-1.9.0/include/installmgr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/latin1utf16.h"
    "/workspaces/bible-sword/sword-1.9.0/include/latin1utf8.h"
    "/workspaces/bible-sword/sword-1.9.0/include/listkey.h"
    "/workspaces/bible-sword/sword-1.9.0/include/localemgr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/lzsscomprs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/markupfiltmgr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/multimapwdef.h"
    "/workspaces/bible-sword/sword-1.9.0/include/nullim.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisenum.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisglosses.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisxlit.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisheadings.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osishtmlhref.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisxhtml.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osiswebif.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osismorph.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osismorphsegmentation.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisplain.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisrtf.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisosis.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisstrongs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisfootnotes.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osislemma.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisredletterwords.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisscripref.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osiswordjs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisvariants.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osisreferencelinks.h"
    "/workspaces/bible-sword/sword-1.9.0/include/osislatex.h"
    "/workspaces/bible-sword/sword-1.9.0/include/papyriplain.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rawcom.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rawfiles.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rawgenbook.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rawld.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rawld4.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rawstr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rawstr4.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rawtext.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rawverse.h"
    "/workspaces/bible-sword/sword-1.9.0/include/roman.h"
    "/workspaces/bible-sword/sword-1.9.0/include/rtfhtml.h"
    "/workspaces/bible-sword/sword-1.9.0/include/sapphire.h"
    "/workspaces/bible-sword/sword-1.9.0/include/scsuutf8.h"
    "/workspaces/bible-sword/sword-1.9.0/include/strkey.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swbasicfilter.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swbuf.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swcacher.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swcipher.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swcom.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swcomprs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swconfig.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swdisp.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swfilter.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swfiltermgr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swgenbook.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swinputmeth.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swkey.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swld.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swlocale.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swlog.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swmacs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swmgr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/stringmgr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swmodule.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swoptfilter.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swobject.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swsearchable.h"
    "/workspaces/bible-sword/sword-1.9.0/include/swtext.h"
    "/workspaces/bible-sword/sword-1.9.0/build/include/swversion.h"
    "/workspaces/bible-sword/sword-1.9.0/include/sysdata.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlfootnotes.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlgbf.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlheadings.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlhtml.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlxhtml.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlhtmlhref.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlwebif.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmllemma.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlmorph.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlosis.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlplain.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlrtf.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlscripref.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlstrongs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlvariants.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmlwordjs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/thmllatex.h"
    "/workspaces/bible-sword/sword-1.9.0/include/teiplain.h"
    "/workspaces/bible-sword/sword-1.9.0/include/teirtf.h"
    "/workspaces/bible-sword/sword-1.9.0/include/teixhtml.h"
    "/workspaces/bible-sword/sword-1.9.0/include/teihtmlhref.h"
    "/workspaces/bible-sword/sword-1.9.0/include/teilatex.h"
    "/workspaces/bible-sword/sword-1.9.0/include/treekey.h"
    "/workspaces/bible-sword/sword-1.9.0/include/treekeyidx.h"
    "/workspaces/bible-sword/sword-1.9.0/include/unicodertf.h"
    "/workspaces/bible-sword/sword-1.9.0/include/url.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf16utf8.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8arshaping.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8bidireorder.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8cantillation.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8greekaccents.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8hebrewpoints.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8arabicpoints.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8html.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8latin1.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8nfc.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8nfkd.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8scsu.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8transliterator.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utf8utf16.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utilstr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/utilxml.h"
    "/workspaces/bible-sword/sword-1.9.0/include/versekey.h"
    "/workspaces/bible-sword/sword-1.9.0/include/versetreekey.h"
    "/workspaces/bible-sword/sword-1.9.0/include/xzcomprs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/zcom.h"
    "/workspaces/bible-sword/sword-1.9.0/include/zcom4.h"
    "/workspaces/bible-sword/sword-1.9.0/include/zconf.h"
    "/workspaces/bible-sword/sword-1.9.0/include/zipcomprs.h"
    "/workspaces/bible-sword/sword-1.9.0/include/zld.h"
    "/workspaces/bible-sword/sword-1.9.0/include/zstr.h"
    "/workspaces/bible-sword/sword-1.9.0/include/ztext.h"
    "/workspaces/bible-sword/sword-1.9.0/include/ztext4.h"
    "/workspaces/bible-sword/sword-1.9.0/include/zverse.h"
    "/workspaces/bible-sword/sword-1.9.0/include/zverse4.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_kjva.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_leningrad.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_mt.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_nrsv.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_nrsva.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_synodal.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_vulg.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_german.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_luther.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_null.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_lxx.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_orthodox.h"
    "/workspaces/bible-sword/sword-1.9.0/include/canon_synodalprot.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/etc/sword.conf")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/etc" TYPE FILE FILES "/workspaces/bible-sword/sword-1.9.0/build/sword.conf")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/sword/mods.d/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/sword/mods.d" TYPE DIRECTORY FILES "")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/pkgconfig/sword.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib/pkgconfig" TYPE FILE FILES "/workspaces/bible-sword/sword-1.9.0/build/sword.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/workspaces/bible-sword/sword-1.9.0/build/utilities/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/workspaces/bible-sword/sword-1.9.0/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
