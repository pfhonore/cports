include ../../../mk/gnu.pre.mk

DISTNAME=	boost
VERSION=	1_46_1
CATEGORIES=	library
HOMEPAGE=	http://www.boost.org/
MASTER_SITES=	http://heanet.dl.sourceforge.net/project/boost/boost/$(strip $(shell echo $(VERSION) | sed -e 's/_/./g'))
HAS_CONFIGURE = no
DISTFILES = $(DISTNAME)_$(VERSION).tar.bz2

EXTRAVERSION=_openmpi_1.4.3

DEPENDS+="openmpi/1.4.3 --build-env openmpi/1.4.3 --run-env"
DEPENDS+="Python/2.6.5 --build-env Python/2.6.5 --run-env "
DEPENDS+="bzip2/1.0.6 --build-env --lib "
DEPENDS+="zlib/1.2.5 --build-env --lib "

DESCRIPTION=	"Boost provides free peer-reviewed portable C++ source libraries."

#CONFIGURE_ARGS +=

do-configure:
	@
do-build:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd work/$(DISTNAME)_$(VERSION); \
	./bootstrap.sh --with-libraries=all --prefix=$(PROGRAM_PREFIX); \
	echo 'using mpi ;' >> ./tools/build/v2/user-config.jam; \
	./bjam;
	
do-install:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
        cd work/$(DISTNAME)_$(VERSION); \
        ./bjam install;
	
include ../../../mk/gnu.post.mk


