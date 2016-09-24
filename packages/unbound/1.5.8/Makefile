include ../../../mk/gnu.pre.mk

DISTNAME=	unbound
VERSION=	1.5.8
HOMEPAGE=	https://www.unbound.net/
MASTER_SITES=	https://www.unbound.net/downloads/ ftp://ftp.oregonstate.edu/.1/blfs/conglomeration/unbound/
MAINTAINER=	Pierre-Francois,Honore@cea.fr
GNU_CONFIGURE=	yes

DESCRIPTION=	"Unbound is a validating, recursive, and caching DNS resolver"

DEPENDS+=       "nettle/3.2 --build-env"
DEPENDS+=       "openssl/1.0.2i --build-env"

CONFIGURE_ARGS+= --with-ssl=$(PREFIX_openssl)
CONFIGURE_ARGS+= --with-nettle=$(PREFIX_nettle)

include ../../../mk/gnu.post.mk
