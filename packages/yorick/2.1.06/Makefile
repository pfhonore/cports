include ../../../mk/gnu.pre.mk

DISTNAME=	yorick
VERSION=	2.1.06
EXTRAVERSION=	
CATEGORIES=	graphics scripting
HOMEPAGE=	http://yorick.sourceforge.net
MASTER_SITES=	http://heanet.dl.sourceforge.net/project/$(DISTNAME)/$(DISTNAME)/$(VERSION)/
MAINTAINER=	Pierre-Francois.Honore@cea.fr
GNU_CONFIGURE=	yes
DISTFILES = $(DISTNAME)-$(VERSION).tgz
PKGSUBDIR = $(DISTNAME)-2.1

DESCRIPTION=	"Yorick is an interpreted programming language for scientific simulations or calculations,"
DESCRIPTION+=	" postprocessing or steering large simulation codes, interactive scientific graphics, and"
DESCRIPTION+=	" reading, writing, or translating large files of numbers."

do-configure:
        $(MODULE_ADD) $(BUILD_DEPENDS);   \
        cd $(WRKSRC); \
        $(ENVIRONMENT) make Y_HOME=/scratch/rhel-5.x86_64/gnu/yorick/2.1.06 ysite; \
        $(ENVIRONMENT) make config

do-build:
        $(MODULE_ADD) $(BUILD_DEPENDS);   \
        cd $(WRKSRC); \
        $(MAKE) build

do-install:
        $(MODULE_ADD) $(BUILD_DEPENDS);   \
        cd $(WRKSRC); \
        $(MAKE) install



include ../../../mk/gnu.post.mk

