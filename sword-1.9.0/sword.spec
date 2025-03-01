Summary:	The SWORD Project framework for manipulating Bible texts
Name:		sword
%define version 1.9.0
Version:	%{version}
Release:	1
#Icon:		sword.gif
Copyright:	GPL
Packager:	CrossWire Bible Society
URL:		http://www.crosswire.org/sword
Source:		http://www.crosswire.org/download/ftpmirror.tmp/pub/sword/source/v1.5/sword-%{version}.tar.gz
Group:		System Environment/Libraries
BuildRoot:	%{_tmppath}/sword-root
Requires:	curl
Requires:	zlib
# Requires:	icu >= 2.6
# Patch0:		sword-patch-curl.diff

%description
The SWORD Project is an effort to create an ever expanding software package for research and study of God and His Word.
The SWORD Bible Framework allows easy manipulation of Bible texts, commentaries, lexicons, dictionaries, etc.  Many frontends are build using this framework.
An installed module set may be shared between any frontend using the framework.

%package devel
Summary: Include files and static libraries for developing sword applications.
Group: Development/Libraries
Requires:	sword = %{version}
Requires:	curl-devel >= 7.10.5
Requires:	zlib-devel

%description devel
Include files and static libraries for developing sword applications. This package is required to compile Sword frontends, too.

%prep
%setup -q
# %patch0 -p1

%build
export CFLAGS="$RPM_OPT_FLAGS"
export CXXFLAGS="$RPM_OPT_FLAGS"
export LDFLAGS='-s'
 ./usrinst.sh --disable-dependency-tracking --prefix=/usr --sysconfdir=/etc --enable-utilities --with-curl --disable-debug --enable-shared --with-conf
make

%install
rm -rf $RPM_BUILD_ROOT
make install-strip DESTDIR="$RPM_BUILD_ROOT"
make install_config DESTDIR="$RPM_BUILD_ROOT"
mkdir -p $RPM_BUILD_ROOT/usr/lib/sword
exit 0

%post devel -p /sbin/ldconfig

%postun devel -p /sbin/ldconfig

%files
%defattr(-,root,root)
%config /etc/sword.conf
%config /usr/share/sword/mods.d/globals.conf
%config /usr/share/sword/locales.d/*.conf
%doc README AUTHORS NEWS INSTALL
/usr/lib/libsword*.so*
#Available when ICU is used in Sword
# /usr/lib/sword

%files devel
%defattr(-,root,root)
%doc doc/*
/usr/include/sword
/usr/lib/libsword*.*a
/usr/bin/*

%changelog
* Mon Dec 27 2003 Joachim Ansorg <junkmail@joachim.ansorgs.de>
- Version 1.5.7
- Added a patch to make installmgr work on Curl version 7.10.5
- We require libcurl now
* Mon May 20 2002 Joachim Ansorg <junkmail@joachim.ansorgs.de>
- Version 1.5.6
* Mon May 20 2002 Stuart Gathman <stuart@bmsi.com>
- Version 1.5.3
* Wed Dec 19 2001 Stuart Gathman <stuart@bmsi.com>
- add additional utilities, move to /usr/lib/sword
* Thu Dec 13 2001 Stuart Gathman <stuart@bmsi.com>
- add locales config
* Sat Jan 20 2001 Stuart Gathman <stuart@bmsi.com>
- mkfastmod and other utilities
* Thu Nov 30 2000 Stuart Gathman <stuart@bmsi.com>
- cheatah application
* Fri Nov 17 2000 Stuart Gathman <stuart@bmsi.com>
- initial release
