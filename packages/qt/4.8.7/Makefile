include ../../../mk/gnu.pre.mk

DISTNAME=       qt
VERSION=        4.8.7
CATEGORIES=     graphics
HOMEPAGE=       http://qt.nokia.com/
MASTER_SITES=   http://download.qt.io/archive/qt/$(shell echo $(VERSION)|sed 's,^\(.\..\).*,\1,')/$(VERSION)/ http://download.qt.io/official_releases/qt/$(shell echo $(VERSION)|sed 's,^\(.\..\).*,\1,')/$(VERSION)/
MAINTAINER=     jtang@tchpc.tcd.ie
HAS_CONFIGURE=  no
DISTFILES = $(DISTNAME)-everywhere-opensource-src-$(VERSION).tar.gz

PKGSUBDIR= $(DISTNAME)-everywhere-opensource-src-$(VERSION)

EXTRAVERSION=

DESCRIPTION=    "Qt is a cross-platform application and UI framework."

DEPENDS+=       "fontconfig/2.8.0 --lib --build-env"
DEPENDS+=       "libjpeg/8b --lib --build-env"
DEPENDS+=       "libpng/1.2.51 --lib --build-env"
DEPENDS+=       "libtiff/4.0.6 --lib --build-env"
DEPENDS+=       "pango/1.28.1 --build-env --lib"
DEPENDS+=       "cairo/1.14.6 --build-env --lib"
DEPENDS+=       "sqlite/3.13.0 --build-env --lib"
DEPENDS+=       "freetype/2.6.3 --build-env --lib"
DEPENDS+=       "openssl/1.0.0s --build-env --lib"
DEPENDS+=       "libiconv/1.13 --build-env --lib"
DEPENDS+=       "gettext/0.19.4 --build-env --lib"
DEPENDS+=       "zlib/1.2.8 --build-env --lib"
DEPENDS+=       "glib/2.48.1 --build-env --lib"
DEPENDS+=       "gstreamer/1.5.2 --build-env --lib"

do-configure:
        $(MODULE_ADD) $(BUILD_DEPENDS);   \
        cd $(WRKSRC); \
        (echo y) | ./configure -opensource \
                -prefix $(PROGRAM_PREFIX) \
                -system-sqlite \
                -system-zlib \
                -system-libtiff \
                -system-libpng \
                -system-libjpeg 

include ../../../mk/gnu.post.mk
