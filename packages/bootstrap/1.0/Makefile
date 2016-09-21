include ../../../mk/gnu.pre.mk

DISTNAME=	bootstrap
VERSION=	1.0
CATEGORIES=	system
MAINTAINER=	jtang@tchpc.tcd.ie
HAS_CONFIGURE=	no
DISTFILES=

DONT_CREATE_METAINFO=yes

#DEPENDS=	"gmake --build-env"
#DEPENDS+=	"wget --build-env"
#DEPENDS+=	"gtar --build-env"

do-build:
	(cd ../../ncurses/6.0/ && make install)
	(cd ../../m4/1.4.17/ && make BOOTSTRAP=yes build)
	(cd ../../texinfo/6.1/ && make BOOTSTRAP=yes build)
	(cd ../../gmake/4.1/ && make BOOTSTRAP=yes build)
	(cd ../../wget/1.17.1/ && make BOOTSTRAP=yes build)
	(cd ../../libiconv/1.14/ && make BOOTSTRAP=yes build)
	(cd ../../gettext/0.19.7/ && make BOOTSTRAP=yes build)
	(cd ../../libtool/2.2.10/ && make BOOTSTRAP=yes build)

do-install:
	(cd ../../m4/1.4.17/ && make BOOTSTRAP=yes install)
	(cd ../../texinfo/6.1/ && make BOOTSTRAP=yes install)
	(cd ../../gmake/4.1/ && make BOOTSTRAP=yes install)
	(cd ../../wget/1.17.1/ && make BOOTSTRAP=yes install)
	(cd ../../libiconv/1.14/ && make BOOTSTRAP=yes install)
	(cd ../../gettext/0.19.7/ && make BOOTSTRAP=yes install)
	(cd ../../libtool/2.2.10/ && make BOOTSTRAP=yes install)

do-cleaz:
	(cd ../../ncurses/6.0/ && make clean)
	(cd ../../m4/1.4.17/ && make clean)
	(cd ../../texinfo/6.1/ && make clean)
	(cd ../../gmake/4.1/ && make clean)
	(cd ../../wget/1.17.1/ && make clean)
	(cd ../../libiconv/1.14/ && make clean)
	(cd ../../gettext/0.19.7/ && make clean)
	(cd ../../libtool/2.2.10/ && make clean)


include ../../../mk/gnu.post.mk
