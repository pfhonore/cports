include ../../../mk/gnu.pre.mk

DISTNAME=	p11-kit
VERSION=	0.23.2
HOMEPAGE=	https://p11-glue.freedesktop.org/p11-kit.html
MASTER_SITES=	http://p11-glue.freedesktop.org/releases/ https://www.mirrorservice.org/sites/distfiles.macports.org/p11-kit/
MAINTAINER=	Pierre-Francois,Honore@cea.fr
GNU_CONFIGURE=	yes

DEPENDS+= libtasn1/4.7 --build-env
DEPENDS+= libffi/3.2.1 --build-env

DESCRIPTION=	"Provides a way to load and enumerate PKCS11 modules. Provides a standard configuration setup for installing PKCS11 modules"

CONFIGURE_ARGS+=

include ../../../mk/gnu.post.mk
