include ../../../mk/gnu.pre.mk

DISTNAME=	binutils
VERSION=	2.26.1
CATEGORIES=	devel
HOMEPAGE=	http://www.gnu.org/software/binutils/binutils.html
MASTER_SITES=	$(MASTER_SITE_GNU:=$(DISTNAME)/)
MAINTAINER=	jtang@tchpc.tcd.ie
GNU_CONFIGURE=	yes

#ifndef BOOTSTRAP
DEPENDS+=       "texinfo/6.1 --build-env"
#endif

CONFIGURE_ARGS+= --enable-shared

DESCRIPTION=	"Tools to produce, examine and manipulate executable"
DESCRIPTION+=	"binaries and libraries"

include ../../../mk/gnu.post.mk
