# $Id: Makefile,v 1.6 2002/01/24 17:11:14 eskil Exp $

include ../../../mk/gnu.pre.mk

DISTNAME=	cloog-ppl
VERSION=	0.16.1
CATEGORIES=	system
HOMEPAGE=	ftp://gcc.gnu.org/pub/gcc/infrastructure/
MASTER_SITES=	ftp://gcc.gnu.org/pub/gcc/infrastructure/
MAINTAINER=	jtang@tchpc.tcd.ie
GNU_CONFIGURE=	yes
PKGSUBDIR=cloog-$(VERSION)
DISTFILES=cloog-$(VERSION).tar.gz

EXTRAVERSION=

DEPENDS+= "ppl/1.1 --build-env --lib"
DEPENDS+= "gmp/6.1.0 --build-env --lib"
DEPENDS+= "polylib/5.22.5 --build-env --lib"

CONFIGURE_ARGS += --with-polylib-dir=$(PREFIX_polylib)
CONFIGURE_ARGS += --with-gmp=$(PREFIX_gmp)
CONFIGURE_ARGS += --with-ppl=$(PREFIX_ppl)

DESCRIPTION=	"CLooG is a software which generates loops for scanning Z-polyhedra."


include ../../../mk/gnu.post.mk
