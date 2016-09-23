# $Id: Makefile,v 1.6 2002/01/24 17:11:14 eskil Exp $

include ../../../mk/gnu.pre.mk

DISTNAME=	ppl
VERSION=	1.1
CATEGORIES=	system
HOMEPAGE=	http://bugseng.com/products/ppl
MASTER_SITES=	http://bugseng.com/products/ppl/download/ftp/releases/$(VERSION)
MAINTAINER=	jtang@tchpc.tcd.ie
GNU_CONFIGURE=	yes
DISTFILES = $(DISTNAME)-$(VERSION).tar.gz

EXTRAVERSION=

DEPENDS+= "gmp/6.1.0 --build-env --lib"
DEPENDS+= "m4/1.4.17 --build-env"

DESCRIPTION=	"The Parma Polyhedra Library (PPL) provides numerical abstractions  especially targeted at applications in the field of analysis and verification of complex systems."


include ../../../mk/gnu.post.mk
