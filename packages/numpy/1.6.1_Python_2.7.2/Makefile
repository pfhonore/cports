# $Id: Makefile,v 1.6 2002/01/24 17:11:14 eskil Exp $

include ../../../mk/gnu.pre.mk



DISTNAME=	numpy
VERSION=	1.6.1
CATEGORIES=	scripting
HOMEPAGE=	http://numpy.scipy.org/ 
MASTER_SITES=	http://heanet.dl.sourceforge.net/project/numpy/NumPy/1.6.1
MAINTAINER=	neil@tchpc.tcd.ie
HAS_CONFIGURE=	no
DISTFILES = $(DISTNAME)-$(VERSION).tar.gz

EXTRAVERSION=_Python_2.7.2

DEPENDS+="atlas/3.8.3 --build-env atlas/3.8.3 --run-env" 
DEPENDS+="Python/2.7.2 --build-env Python/2.7.2 --run-env"
DEPENDS+="nose/0.11.3_Python_2.7.2 --build-env  nose/0.11.3_Python_2.7.2 --run-env" 

DESCRIPTION=	"numpy is a numerical module associated with python"

CONFIGURE_ARGS +=

do-configure:
	@

do-build:
	$(MODULE_ADD) $(BUILD_DEPENDS); \
	cat site.cfg.template | $(SED) -e 's|\@\@ATLASLIB\@\@|$(PREFIX_atlas)/lib|' -e 's|\@\@ATLASINCLUDE\@\@|$(PREFIX_atlas)/include|' > $(WRKSRC)/site.cfg; \
	cd $(WRKSRC); \
	python setup.py build --fcompiler=gnu95; 

do-install:
	$(MODULE_ADD) $(BUILD_DEPENDS); \
	cd $(WRKSRC); \
	python setup.py install --home=$(PROGRAM_PREFIX); 

do-test:
	$(MODULE_ADD) $(RUN_DEPENDS) $(DISTNAME)/$(VERSION)$(EXTRAVERSION)$(COMPILER_TAG) ; \
	python -c 'import numpy; numpy.show_config();' ; \
	python -c 'import numpy; numpy.test()';

include ../../../mk/gnu.post.mk
