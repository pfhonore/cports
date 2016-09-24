include ../../../mk/gnu.pre.mk

DISTNAME=	gnutls
VERSION=	3.4.10
HOMEPAGE=	http://www.gnu.org/software/gnutls/
MASTER_SITES=	ftp://ftp.gnutls.org/gcrypt/gnutls/v3.4
MAINTAINER=	darach@tchpc.tcd.ie
GNU_CONFIGURE=	yes
DISTFILES = $(DISTNAME)-$(VERSION).tar.xz

DEPENDS+= "libgpg-error/1.21 --build-env"
DEPENDS+= "libgcrypt/1.5.4 --build-env"
DEPENDS+= "nettle/3.2 --build-env"
DEPENDS+= "m4/1.4.17 --build-env"
DEPENDS+= gmp/6.1.0 --build-env
DEPENDS+= libtasn1/4.7 --build-env
DEPENDS+= libidn/1.32 --build-env
DEPENDS+= p11-kit/0.23.2 --build-env
#DEPENDS+= unbound/1.5.8 --build-env


DESCRIPTION=	"GnuTLS is a project that aims to develop a library which provides a secure layer, over a reliable transport layer."

CONFIGURE_ARGS+=  --with-libgcrypt-prefix=$(PREFIX_libgcrypt)

include ../../../mk/gnu.post.mk
