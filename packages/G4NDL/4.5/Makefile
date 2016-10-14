include ../../../mk/gnu.pre.mk

DISTNAME=       G4NDL
VERSION=        4.5
CATEGORIES=     science cern
HOMEPAGE=       http://geant4.cern.ch
MASTER_SITES=   http://geant4.cern.ch/support/source
MAINTAINER=     pierre-francois.honore@cea.fr
DISTFILES=	$(DISTNAME).$(VERSION).tar.gz
PKGSUBDIR=	$(DISTNAME)$(VERSION)

DESCRIPTION=    "Neutron data files with thermal cross-sections Geant4"

do-build:
do-install:
	rsync -arx . $(PROGRAM_PREFIX)

include ../../../mk/gnu.post.mk
