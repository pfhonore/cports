include ../../../mk/gnu.pre.mk

DISTNAME=	eigen
VERSION=	3.0.5
CATEGORIES=	utilities
HOMEPAGE=	http://eigen.tuxfamily.org/
MASTER_SITES=	http://bitbucket.org/eigen/eigen/get/
MAINTAINER=	jtang@tchpc.tcd.ie
GNU_CONFIGURE=	no
HAS_CONFIGURE=	no
DISTFILES = $(VERSION).tar.bz2

PKGSUBDIR=eigen-eigen-6e7488e20373

EXTRAVERSION=

DEPENDS+=	"cmake/2.8.3 --build-env"
DEPENDS+=	"gsl/1.14 --build-env --run-env --lib"

DESCRIPTION=    "The Eigen Project"

do-configure:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC); \
	$(MKDIR) BUILD ;\
	cd BUILD ;\
	cmake "-DCMAKE_INSTALL_PREFIX=$(PROGRAM_PREFIX)" \
	../

do-build:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC); \
	cd BUILD ;\
	$(MAKE)

do-install:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
        cd $(WRKSRC); \
        cd BUILD ;\
	$(MAKE) install

include ../../../mk/gnu.post.mk
