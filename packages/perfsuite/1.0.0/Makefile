include ../../../mk/gnu.pre.mk

DISTNAME=	perfsuite
VERSION=	1.0.0
HOMEPAGE=	http://perfsuite.ncsa.uiuc.edu
MASTER_SITES=	http://perfsuite.ncsa.illinois.edu/download
MAINTAINER=	darach@tchpc.tcd.ie
GNU_CONFIGURE=	yes
DISTFILES = $(DISTNAME)-$(VERSION).tar.gz

DO_RUN_TESTS=yes

DEPENDS+= "binutils/2.20  --build-env --lib"	
DEPENDS+= "expat/2.0.1  --build-env --lib"	
DEPENDS+= "papi/4.1.3  --build-env --lib"	
DEPENDS+= "openmpi/1.4.3 --build-env --lib --run-env"
DEPENDS+= "tcl/8.5.8 --build-env --lib --run-env"
DEPENDS+= "tk/8.5.8 --build-env --lib --run-env"
DEPENDS+= "tDOM/0.8.3 --build-env --lib "
DEPENDS+= "scalasca/1.3.3 --build-env --lib --run-env "

CONFIGURE_ARGS+= --with-papi=$(PREFIX_papi)
CONFIGURE_ARGS+= --with-tdom=$(PREFIX_tDOM)
CONFIGURE_ARGS+= --with-cube=$(PREFIX_scalasca)
CONFIGURE_ARGS+= --with-mpi
CONFIGURE_ARGS+= --enable-java
CONFIGURE_ARGS+= --with-tclsh=$(PREFIX_tcl)/bin/tclsh
CONFIGURE_ARGS+= --with-wish=$(PREFIX_tk)/bin/wish

DESCRIPTION+=	"PerfSuite is a collection of tools, utilities, and libraries for software performance analysis where the primary design goals are ease of use, comprehensibility, interoperability, and simplicity."

do-test:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC); \
	make -s check 2>&1 | tee $(WORKDIR)/testlog
#
#do-test:
#	$(MODULE_ADD) $(BUILD_DEPENDS);   \
#        cd $(WRKSRC); \
#        make test; \
#	make fulltest
#
#do-install:
#	$(MODULE_ADD) $(BUILD_DEPENDS);   \
#	cd $(WRKSRC); \
#	make install-all; 
# "papi/4.1.3  --build-env --lib"

include ../../../mk/gnu.post.mk