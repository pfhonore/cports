include ../../../mk/gnu.pre.mk

DISTNAME=	gnutls
VERSION=	3.4.10
HOMEPAGE=	http://www.gnu.org/software/gnutls/
MASTER_SITES=	ftp://ftp.gnutls.org/gcrypt/gnutls/v3.4
MAINTAINER=	darach@tchpc.tcd.ie
GNU_CONFIGURE=	yes
DISTFILES = $(DISTNAME)-$(VERSION).tar.xz

DEPENDS+= "libgpg-error/1.9 --build-env"
DEPENDS+= "libgcrypt/1.4.6 --build-env"

DESCRIPTION=	"GnuTLS is a project that aims to develop a library which provides a secure layer, over a reliable transport layer."

CONFIGURE_ARGS+=  --with-libgcrypt-prefix=$(PREFIX_libgcrypt)

include ../../../mk/gnu.post.mk
