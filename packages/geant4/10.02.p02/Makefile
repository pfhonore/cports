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

DEPENDS+=	"gccxml/0.9.0 --build-env --run-env"
DEPENDS+=	"cmake/3.5.1 --build-env --run-env"
DEPENDS+=	"gcc/4.9.3 --build-env --run-env"
DEPENDS+=	"root/6.06.08 --build-env --run-env"
CONFIGURE_ENV+=	ROOTSYS=$(PREFIX_root)
DEPENDS+=	"clhep/2.3.1.1 --build-env --run-env"
DEPENDS+=	"G4ABLA/3.0 --run-env"
DEPENDS+=	"G4EMLOW/6.48 --run-env"
DEPENDS+=	"G4ENSDFSTATE/1.2.3 --run-env"
DEPENDS+=	"G4NDL/4.5 --run-env"
DEPENDS+=	"G4NEUTRONXS/1.4 --run-env"
DEPENDS+=	"G4PhotonEvaporation/3.2 --run-env"
DEPENDS+=	"G4PII/1.3 --run-env"
DEPENDS+=	"G4RadioactiveDecay/4.3.2 --run-env"
DEPENDS+=	"G4SAIDDATA/1.1 --run-env"
DEPENDS+=	"G4TENDL/1.0 --run-env"
DEPENDS+=	"RealSurface/1.0 --run-env"

extract: fetch $(EXTRACT_COOKIE) do-extract
	cd $(SOURCEDIR) && mkdir -p $(PKGSUBDIR)

do-configure:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC) && \
	$(CONFIGURE_ENV) $(PREFIX_cmake)/bin/cmake -DCMAKE_INSTALL_PREFIX=$(PROGRAM_PREFIX) \
		-DBUILD_SHARED_LIBS=ON \
		-DBUILD_STATIC_LIBS=OFF \
		-DCMAKE_BUILD_TYPE=RelWithDebInfo \
		-DGEANT4_BUILD_MULTITHREADED=ON \
		-DCMAKE_CXX_COMPILER=$(PREFIX_gcc)/bin/g++ -DCMAKE_C_COMPILER=$(PREFIX_gcc)/bin/gcc \
		-DCLHEP_ROOT_DIR=$(PREFIX_clhep) \
		-DGEANT4_USE_QT=ON \
		-DQT_QMAKE_EXECUTABLE=/usr/bin/qmake \
		-DGEANT4_USE_GDML=ON \
		-DXERCESC_ROOT_DIR=/usr \
		-DGEANT4_USE_XM=ON \
		-DGEANT4_USE_OPENGL_X11=ON \
		-DGEANT4_USE_NETWORKDAWN=OFF \
		-DGEANT4_USE_NETWORKVRML=OFF \
		-DGEANT4_INSTALL_DATA=OFF \
		-DGEANT4_BUILD_EXAMPLES=ON \
		../$(DISTNAME).$(VERSION)

include ../../../mk/gnu.post.mk
