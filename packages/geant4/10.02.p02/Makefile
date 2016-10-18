include ../../../mk/gnu.pre.mk

DISTNAME=       geant4
VERSION=	10.02.p02
CATEGORIES=     science cern
HOMEPAGE=       http://proj-clhep.web.cern.ch/proj-clhep
MASTER_SITES=   http://geant4.cern.ch/support/source/
MAINTAINER=     pierre-francois.honore@cea.fr
PKGSUBDIR=	geant4
DISTFILES=      $(DISTNAME).$(VERSION).tar.gz

DESCRIPTION=    "geant4 A Class Library for High Energy Physics"

DEPENDS+=	"cmake/3.5.1 --build-env --run-env"
DEPENDS+=	"gcc/4.9.3 --build-env --run-env"
DEPENDS+=	"root/6.0608 --build-env --run-env"
DEPENDS+=	"clhep/2.3.1.1 --build-env --run-env"

extract: fetch $(EXTRACT_COOKIE) do-extract
	cd $(SOURCEDIR) && mkdir -p $(PKGSUBDIR)

do-configure:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC) && \
	$(PREFIX_cmake)/bin/cmake -DCMAKE_INSTALL_PREFIX=$(PROGRAM_PREFIX) -DCMAKE_CXX_COMPILER=$(PREFIX_gcc)/bin/g++ -DCMAKE_C_COMPILER=$(PREFIX_gcc)/bin/gcc ../$(VERSION)/CLHEP

include ../../../mk/gnu.post.mk
