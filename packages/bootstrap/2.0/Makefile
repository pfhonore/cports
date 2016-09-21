include ../../../mk/gnu.pre.mk

DISTNAME=	bootstrap
VERSION=	1.0
CATEGORIES=	system
MAINTAINER=	jtang@tchpc.tcd.ie
HAS_CONFIGURE=	no
DISTFILES=

DONT_CREATE_METAINFO=yes

DEPENDS+=	"texinfo/6.1 --build-env"
DEPENDS+=	"gmake/4.1 --build-env"
DEPENDS+=	"wget/1.17.1 --build-env"
DEPENDS+=	"libiconv/1.14 --lib --build-env"
DEPENDS+=	"gettext/0.19.7 --lib --build-env"
DEPENDS+=	"libtool/2.4.6 --build-env"
DEPENDS+=	"gawk/4.1.3 --build-env"
DEPENDS+=	"m4/1.4.17 --build-env"
DEPENDS+=	"automake/1.15 --build-env"
DEPENDS+=	"openssl/1.0.0h --build-env"

do-build:
	(cd ../../m4/1.4.17/ && make build)
	(cd ../../texinfo/6.1/ && make build)
	(cd ../../gmake/4.1/ && make build)
	(cd ../../wget/1.17.1/ && make build)
	(cd ../../libiconv/1.14/ && make build)
	(cd ../../gettext/0.19.7/ && make build)
	(cd ../../libtool/2.4.6/ && make build)

do-install:
	(cd ../../m4/6.1/ && make install)
	(cd ../../texinfo/6.1/ && make install)
	(cd ../../gmake/4.1/ && make install)
	(cd ../../wget/1.17.1/ && make install)
	(cd ../../libiconv/1.14/ && make install)
	(cd ../../gettext/0.19.7/ && make install)
	(cd ../../libtool/2.4.6/ && make install)

do-cleaz:
	(cd ../../m4/6.1/ && make clean)
	(cd ../../texinfo/6.1/ && make clean)
	(cd ../../gmake/4.1/ && make clean)
	(cd ../../wget/1.17.1/ && make clean)
	(cd ../../libiconv/1.14/ && make clean)
	(cd ../../gettext/0.19.7/ && make clean)
	(cd ../../libtool/2.4.6/ && make clean)

include ../../../mk/gnu.post.mk
