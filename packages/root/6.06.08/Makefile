include ../../../mk/gnu.pre.mk

DISTNAME=       root
VERSION=        6.06.08
CATEGORIES=     science cern
HOMEPAGE=       http://root.cern.ch
MASTER_SITES=   http://root.cern.ch/download
MAINTAINER=     pierre-francois.honore@cea.fr
PKGSUBDIR=      $(DISTNAME)
DISTFILES=      $(DISTNAME)_v$(VERSION).Linux-centos7-x86_64-gcc$(shell gcc --version|head -1|sed 's/.* //'|sed 's,4\.9.*,4.9,'|sed 's,5\..*,5,'|sed 's,6\..*,6,').tar.gz $(DISTNAME)_v$(VERSION).source.tar.gz

DESCRIPTION=    "CLHEP A Class Library for High Energy Physics"
DESCRIPTION+=   "HEP-specific foundation and utility classes such as "
DESCRIPTION+=   "random generators, physics vectors, geometry and linear algebra."

DEPENDS+=	"cmake/3.5.1 --build-env --run-env"
DEPENDS+=	"gcc/4.9.3 --build-env --run-env"

MAKE_ENV+=  MAKE_FLAGS='-j12'

do-configure:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC); \
	$(PREFIX_cmake)/bin/cmake -DCMAKE_INSTALL_PREFIX=$(PROGRAM_PREFIX) -DCMAKE_CXX_COMPILER=$(PREFIX_gcc)/bin/g++ -DCMAKE_C_COMPILER=$(PREFIX_gcc)/bin/gcc ../$(DISTNAME)-$(VERSION)
#	cmake -DRDK_INSTALL_INTREE=0 -DCMAKE_INSTALL_PREFIX=$(PROGRAM_PREFIX) -DBOOST_ROOT=$(PREFIX_boost) -DPYTHON_INCLUDE_DIR=$(PREFIX_Python)/include/python2.6 ../

include ../../../mk/gnu.post.mk
