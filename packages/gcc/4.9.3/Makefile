# $Id: Makefile,v 1.6 2002/01/24 17:11:14 eskil Exp $

include ../../../mk/gnu.pre.mk

DISTNAME=       gcc
VERSION=        4.9.3
CATEGORIES=     system
HOMEPAGE=       http://www.gnu.org/software/gcc/gcc.html
MASTER_SITES=   ftp://ftp.gnu.org/pub/gnu/gcc/gcc-$(VERSION)
MAINTAINER=     jtang@tchpc.tcd.ie
GNU_CONFIGURE=  yes
DISTFILES = $(DISTNAME)-$(VERSION).tar.bz2
WRKSRC=$(WORKDIR)/$(PKGSUBDIR)-tmp/

COMPILERS=gnu4.9

EXTRAVERSION=

DEPENDS += "zlib/1.2.8 --build-env --lib"
DEPENDS += "gmp/6.1.0 --build-env --lib"
DEPENDS += "mpfr/3.1.4 --build-env --lib"
DEPENDS += "mpc/1.0.3 --build-env --lib"
DEPENDS += "libelf/0.8.13 --build-env --lib"
DEPENDS += "polylib/5.22.5 --build-env --lib"
DEPENDS += "cloog-ppl/0.16.1 --build-env --lib"
DEPENDS += "ppl/1.1 --build-env --lib"

CONFIGURE_ARGS += --enable-shared --enable-threads=posix --with-system-zlib
CONFIGURE_ARGS += --enable-__cxa_atexit --disable-libunwind-exceptions
CONFIGURE_ARGS += --enable-languages=c,c++,fortran --disable-libada
CONFIGURE_ARGS += --with-local-prefix=$(PROGRAM_PREFIX)
CONFIGURE_ARGS += --with-gmp=$(PREFIX_gmp)
CONFIGURE_ARGS += --with-mpfr=$(PREFIX_mpfr)
CONFIGURE_ARGS += --with-mpc=$(PREFIX_mpc)
CONFIGURE_ARGS += --with-cloog-ppl=$(PREFIX_cloog-ppl)
CONFIGURE_ARGS += --with-libelf=$(PREFIX_libelf)
CONFIGURE_ARGS += --with-ppl=$(PREFIX_ppl)
CONFIGURE_ARGS += --disable-multilib


ALL_TARGET= bootstrap

MODULEFILE_LINES+=      COMPILERS
MODULEFILE_CMD_COMPILERS?= \
        $(ECHO) "setenv  COMPILERS $(shell echo $(VERSION)|sed 's,4\.9.*,gnu4.9,'|sed 's,5\..*,gnu5,'|sed 's,6\..*,gnu6,')";

DESCRIPTION=    "gcc 4.9.3 enviornment"

include ../../../mk/gnu.post.mk
