include ../../../mk/gnu.pre.mk

DISTNAME=	scotch
VERSION=	5.1.10
CATEGORIES=	parallel
MAINTAINER=	darach@tchpc.tcd.ie

HOMEPAGE=	http://www.labri.fr/perso/pelegrin/scotch/
MASTER_SITES=	https://gforge.inria.fr/frs/download.php/27437/ 
DISTFILES+=	$(DISTNAME)_$(VERSION).tar.gz

#MODULELINES=	"prepend-path PATH	$(PROGRAM_PREFIX)/bin"

DEPENDS+=	"openmpi/1.4.3 --build-env openmpi/1.4.3 --run-env "
DEPENDS+=	"zlib/1.2.5 --build-env --lib"

HAS_CONFIGURE=	no

#CONFIGURE_ARGS+=

PKGSUBDIR=scotch_$(VERSION)a_esmumps

DESCRIPTION=	"Software package and libraries for sequential and parallel graph partitioning, static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning"

#do-fetch:
#	echo "got this far"
#	cd $(DISTDIR); \
#	$(MKDIR) $(DISTNAME); \
#	cd $(DISTNAME); \
#	curl -o $(DISTNAME)_$(VERSION).tar.gz $(MASTER_SITES)/$(DISTNAME)_$(VERSION).tar.gz;

CPRT_SCOTCH_MAKEINC ?= Makefile.inc.i686_pc_linux2.shlib
ifeq ("$(findstring gnu,$(SYSTEM_TYPE_OS))","gnu")
CPRT_SCOTCH_MAKEINC = Makefile.inc.i686_pc_linux2.shlib
else
CPRT_SCOTCH_MAKEINC = Makefile.inc.i686_mac_darwin8
endif

do-configure:
	echo "configuring"
	cd $(SOURCEDIR)/$(PKGSUBDIR)/src/Make.inc; \
	mv $(CPRT_SCOTCH_MAKEINC) make.inc.tmp.cprt; \
	$(SED) -e "s|CCD.*=\(.*\)|CCD		=\1 -I$(PREFIX_openmpi)/include|" make.inc.tmp.cprt | \
	$(SED) -e "s|\(CFLAGS.*\)|\1 -fPIC|" > $(CPRT_SCOTCH_MAKEINC); \
	cd ..; \
	ln -sf Make.inc/$(CPRT_SCOTCH_MAKEINC) Makefile.inc;  

do-build:
	$(MODULE_ADD) $(BUILD_DEPENDS); \
	cd $(SOURCEDIR)/$(PKGSUBDIR)/src; \
	make scotch; \
	make ptscotch;

do-install:
	$(MKDIR) $(PROGRAM_PREFIX);
	$(MKDIR) $(PROGRAM_PREFIX)/bin;
	$(MKDIR) $(PROGRAM_PREFIX)/include;
	$(MKDIR) $(PROGRAM_PREFIX)/lib;
	$(MKDIR) $(PROGRAM_PREFIX)/share;
	$(MKDIR) $(PROGRAM_PREFIX)/man;
	$(MODULE_ADD) $(BUILD_DEPENDS); \
	cd $(SOURCEDIR)/$(PKGSUBDIR)/src; \
	make prefix=$(PROGRAM_PREFIX) install;
	$(INSTALL) -m 755 $(SOURCEDIR)/$(PKGSUBDIR)/lib/lib*.* $(PROGRAM_PREFIX)/lib

include ../../../mk/gnu.post.mk

