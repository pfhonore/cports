include ../../../mk/gnu.pre.mk

DISTNAME=       Anaconda2
VERSION=        4.2.0
CATEGORIES=     scripting
HOMEPAGE=       http://continuum.io/downloads
MASTER_SITES=   http://repo.continuum.io/archive
MAINTAINER=     Pierre-Francois.Honore@cea.fr
GNU_CONFIGURE=  no
NO_BUILD=       yes
DISTFILES =     $(DISTNAME)-$(VERSION)-Linux-x86_64.sh

EXTRAVERSION=

DO_RUN_TESTS=no

DESCRIPTION=    "Anaconda is a completely free Python distribution including for commercial use and redistribution."

INSTALL_ARGS += -b
INSTALL_ARGS += -f
INSTALL_ARGS += -b -p $(PROGRAM_PREFIX)

do-configure:
	@

do-install:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WORKDIR); \
	/bin/sh $(DISTNAME)-$(VERSION)-Linux-x86_64.sh $(INSTALL_ARGS)

include ../../../mk/gnu.post.mk
