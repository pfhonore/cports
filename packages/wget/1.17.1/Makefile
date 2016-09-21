include ../../../mk/gnu.pre.mk

DISTNAME=	wget
VERSION=	1.17.1
CATEGORIES=	network
HOMEPAGE=	http://www.gnu.org/software/wget/wget.html
MASTER_SITES=	$(MASTER_SITE_GNU:=$(DISTNAME)/)
MAINTAINER=	jtang@tchpc.tcd.ie
GNU_CONFIGURE=	yes

ifdef BOOTSTRAP
CONFIGURE_ARGS=	--disable-nls
#DEPENDS+=	"texinfo/6.1 --build-env"
else
USE_LIBTOOL=	yes
DEPENDS+=	"gettext/0.19.7 --build-env"
DEPENDS+=	"gettext/0.19.7 --lib"
#DEPENDS+=	"texinfo/6.1 --build-env"
DEPENDS+=	"openssl/1.0.0a --build-env"
DEPENDS+=	"openssl/1.0.0a --lib"
#DEPENDS+=	"perl/5.12.1 --build-env"
DEPENDS+=	"libtool/2.4.6 --build-env"
#CONFIGURE_ARGS+= --with-ssl=$(PREFIX_openssl)
endif # !BOOTSTRAP

ifneq (,$(findstring osf,$(SYSTEM_TYPE_OS)))
CONFIGURE_ENV+=	CC="cc -std1 -w1"
endif

DESCRIPTION=	"Wget is a utility designed for retrieving files across the"
DESCRIPTION+=	"Web, through the use of HTTP and FTP, and saving them to"
DESCRIPTION+=	"disk. Wget is  non-interactive, which means it can work in"
DESCRIPTION+=	"the background"

include ../../../mk/gnu.post.mk
