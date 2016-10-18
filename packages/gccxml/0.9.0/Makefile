include ../../../mk/gnu.pre.mk

DISTNAME=       gccxml
VERSION=        0.9.0
CATEGORIES=     system
HOMEPAGE=       http://www.gccxml.org/
MASTER_SITES=   http://archive.ubuntu.com/ubuntu/pool/universe/g/gccxml
MAINTAINER=     Pierre-Francois.Honore@cea.fr

DISTFILES=	gccxml_0.9.0+git20140716.orig.tar.xz

DESCRIPTION=    "XML output extension to GCC"

DEPENDS+=	"cmake/3.5.1 --build-env"

extract: fetch $(EXTRACT_COOKIE) do-extract
	cd $(SOURCEDIR) && mkdir -p $(PKGSUBDIR)

do-configure:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC) && \
	$(PREFIX_cmake)/bin/cmake -DCMAKE_INSTALL_PREFIX=$(PROGRAM_PREFIX) -DCMAKE_CXX_COMPILER=$(PREFIX_gcc)/bin/g++ -DCMAKE_C_COMPILER=$(PREFIX_gcc)/bin/gcc ../$(DISTNAME)-$(VERSION)+*.orig

include ../../../mk/gnu.post.mk

