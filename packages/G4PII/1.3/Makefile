include ../../../mk/gnu.pre.mk

DISTNAME=       G4PII
VERSION=        1.3
CATEGORIES=     science cern
HOMEPAGE=       http://geant4.cern.ch
MASTER_SITES=   http://geant4.cern.ch/support/source
MAINTAINER=     pierre-francois.honore@cea.fr
DISTFILES=	$(DISTNAME).$(VERSION).tar.gz
PKGSUBDIR=	$(DISTNAME)$(VERSION)

DESCRIPTION=    "Geant4 : Neutron data files with thermal cross-sections"

MODULEFILE_LINES+=      SETENV
MODULEFILE_CMD_SETENV?= \
        $(ECHO) "setenv G4PIIDATA $(PROGRAM_PREFIX)";

do-build:
	: ok
do-install:
	cd $(WRKSRC) && \
	$(MKDIR) -p $(PROGRAM_PREFIX) && \
	rsync -arx . $(PROGRAM_PREFIX)

include ../../../mk/gnu.post.mk
