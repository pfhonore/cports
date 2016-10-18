include ../../../mk/gnu.pre.mk

DISTNAME=       gccxml
VERSION=        0.9.0
CATEGORIES=     system
HOMEPAGE=       http://www.gccxml.org/
MASTER_SITES=   http://archive.ubuntu.com/ubuntu/pool/universe/g/gccxml
MAINTAINER=     Pierre-Francois.Honore@cea.fr
GNU_CONFIGURE=  yes

DISTFILES=	gccxml_0.9.0+git20140716.orig.tar.xz
DISTNAME=	gccxml-0.9.0+git20140716.orig

DESCRIPTION=    "XML output extension to GCC"

do-configure:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC) && \
	$(PREFIX_cmake)/bin/cmake -DCMAKE_INSTALL_PREFIX=$(PROGRAM_PREFIX) -DCMAKE_CXX_COMPILER=$(PREFIX_gcc)/bin/g++ -DCMAKE_C_COMPILER=$(PREFIX_gcc)/bin/gcc ../$(VERSION)/CLHEP

include ../../../mk/gnu.post.mk

