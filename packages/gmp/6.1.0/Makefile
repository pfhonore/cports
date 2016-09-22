# $Id: Makefile,v 1.6 2002/01/24 17:11:14 eskil Exp $

include ../../../mk/gnu.pre.mk

DISTNAME=	gmp
VERSION=	6.1.0
CATEGORIES=	system
HOMEPAGE=	http://www.swox.com/gmp/
MASTER_SITES=	ftp://ftp.gnu.org/gnu/gmp/
MAINTAINER=	jtang@tchpc.tcd.ie
GNU_CONFIGURE=	yes
DISTFILES = $(DISTNAME)-$(VERSION).tar.bz2

EXTRAVERSION=

DESCRIPTION=	"GMP: a free library for arbitrary precision arithmetic"

CONFIGURE_ARGS+= --enable-mpfr --enable-cxx

DEPENDS+=	"m4/1.4.17 --build-env"

include ../../../mk/gnu.post.mk
