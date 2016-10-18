include ../../../mk/gnu.pre.mk

DISTNAME=       gccxml
VERSION=        0.9.0
CATEGORIES=     system
HOMEPAGE=       http://www.gccxml.org/
MASTER_SITES=   http://archive.ubuntu.com/ubuntu/pool/universe/g/gccxml
MAINTAINER=     Pierre-Francois.Honore@cea.fr

DISTFILES=	gccxml_0.9.0+git20140716.orig.tar.xz
PKGSUBDIR=	gccxml-0.9.0+git20140716.orig/build


DESCRIPTION=    "XML output extension to GCC"

DEPENDS+=	"cmake/3.5.1 --build-env"

extract: fetch $(EXTRACT_COOKIE) do-extract
	cd $(SOURCEDIR) && mkdir -p $(PKGSUBDIR)

do-configure:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC) && \
	sed -i 's/xatexit.c//' ../GCC/libiberty/CMakeLists.txt && \
	$(PREFIX_cmake)/bin/cmake -DCMAKE_INSTALL_PREFIX=$(PROGRAM_PREFIX) ..

include ../../../mk/gnu.post.mk

