include ../../../mk/gnu.pre.mk

DISTNAME=       root
VERSION=        6.06.08
CATEGORIES=     science cern
HOMEPAGE=       http://root.cern.ch
MASTER_SITES=   http://root.cern.ch/download
MAINTAINER=     pierre-francois.honore@cea.fr
GNU_CONFIGURE=  yes
PKGSUBDIR=      $(DISTNAME)
DISTFILES=      $(DISTNAME)_v$(VERSION).Linux-cc7-x86_64-gcc$(shell gcc --version|head -1|sed 's/.* //'|sed 's,4\.9.*,4.9,'|sed 's,5\..*,5,'|sed 's,6\..*,6,').tar.gz

DESCRIPTION=    "CLHEP A Class Library for High Energy Physics"
DESCRIPTION+=   "HEP-specific foundation and utility classes such as "
DESCRIPTION+=   "random generators, physics vectors, geometry and linear algebra."

do-configure:
        $(MODULE_ADD) $(BUILD_DEPENDS);   \
        cd $(WRKSRC); \
        $(MKDIR) ../BUILD ;\
        cd ../BUILD ;\
        cmake "-DCMAKE_INSTALL_PREFIX=$(PROGRAM_PREFIX)" \
        $(WRKSRC)

do-build:
        $(MODULE_ADD) $(BUILD_DEPENDS);   \
        cd $(WRKSRC); \
        cd ../BUILD ;\
        $(MAKE)

do-install:
        $(MODULE_ADD) $(BUILD_DEPENDS);   \
        cd $(WRKSRC); \
        cd ../BUILD ;\
        $(MAKE) install

include ../../../mk/gnu.post.mk
