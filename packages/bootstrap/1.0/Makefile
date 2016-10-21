include ../../../mk/gnu.pre.mk

DISTNAME=       bootstrap
VERSION=        1.0
CATEGORIES=     system
MAINTAINER=     jtang@tchpc.tcd.ie
HAS_CONFIGURE=  no
DISTFILES=

DONT_CREATE_METAINFO=yes

#DEPENDS=       "gmake --build-env"
#DEPENDS+=      "wget --build-env"
#DEPENDS+=      "gtar --build-env"

do-build:
	(cd ../../ncurses/6.0/ && make install)
	(cd ../../texinfo/6.1/ && make BOOTSTRAP=yes build install)
	(cd ../../binutils/2.26.1/ && make BOOTSTRAP=yes build install)
	(cd ../../m4/1.4.17/ && make BOOTSTRAP=yes build install)
	(cd ../../gmake/4.1/ && make BOOTSTRAP=yes build)
	(cd ../../wget/1.17.1/ && make BOOTSTRAP=yes build)
	(cd ../../libiconv/1.14/ && make BOOTSTRAP=yes build install)
	(cd ../../gettext/0.19.7/ && make BOOTSTRAP=yes build)
	(cd ../../libtool/2.4.6/ && make BOOTSTRAP=yes build install)
	(cd ../../gawk/4.1.3/ && make BOOTSTRAP=yes build install)
	(cd ../../autoconf/2.69/ && make BOOTSTRAP=yes build install)
	(cd ../../automake/1.15/ && make BOOTSTRAP=yes build)
	(cd ../../bison/3.0.4/ && make BOOTSTRAP=yes build)
	(cd ../../openssl/1.0.2j/ && make BOOTSTRAP=yes build)


do-install:
	(cd ../../m4/1.4.17/ && make BOOTSTRAP=yes install)
	(cd ../../texinfo/6.1/ && make BOOTSTRAP=yes install)
	(cd ../../gmake/4.1/ && make BOOTSTRAP=yes install)
	(cd ../../wget/1.17.1/ && make BOOTSTRAP=yes install)
	(cd ../../libiconv/1.14/ && make BOOTSTRAP=yes install)
	(cd ../../gettext/0.19.7/ && make BOOTSTRAP=yes install)
	(cd ../../libtool/2.4.6/ && make BOOTSTRAP=yes install)
	(cd ../../gawk/4.1.3/ && make BOOTSTRAP=yes install)
	(cd ../../autoconf/2.69/ && make BOOTSTRAP=yes install)
	(cd ../../automake/1.15/ && make BOOTSTRAP=yes install)
	(cd ../../bison/3.0.4/ && make BOOTSTRAP=yes install)
	(cd ../../openssl/1.0.2j/ && make BOOTSTRAP=yes install)

do-cleaz:
	(cd ../../ncurses/6.0/ && make clean)
	(cd ../../m4/1.4.17/ && make clean)
	(cd ../../texinfo/6.1/ && make clean)
	(cd ../../gmake/4.1/ && make clean)
	(cd ../../wget/1.17.1/ && make clean)
	(cd ../../libiconv/1.14/ && make clean)
	(cd ../../gettext/0.19.7/ && make clean)
	(cd ../../libtool/2.4.6/ && make clean)
	(cd ../../gawk/4.1.3/ && make clean)
	(cd ../../autoconf/2.69/ && make clean)
	(cd ../../automake/1.15/ && make clean)
	(cd ../../bison/3.0.4/ && make clean)
	(cd ../../openssl/1.0.2j/ && make clean)


include ../../../mk/gnu.post.mk
