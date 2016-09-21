include ../../../mk/gnu.pre.mk

DISTNAME=	guile
VERSION=	1.8.7
CATEGORIES=	devel lib
MASTER_SITES=	$(MASTER_SITE_GNU:=$(DISTNAME)/)
HOMEPAGE=	http://www.gnu.org/software/guile/guile.html
MAINTAINER=	jtang@tchpc.tcd.ie
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

DEPENDS=	"gawk/4.1.3 --build-env"
DEPENDS+=	"gettext/0.19.7 --lib --build-env"
DEPENDS+=	"libiconv/1.14 --lib --build-env"
#DEPENDS+=	"glib --lib --build-env"
#DEPENDS+=	"gtk --lib --build-env"
#DEPENDS+=	"gnome-libs --lib --build-env"
DEPENDS+=	"texinfo/6.1 --build-env"
DEPENDS+=	"ncurses/6.0 --lib --build-env"
DEPENDS+=	"readline/6.1 --lib --build-env"
DEPENDS+=	"libtool/2.4.6 --build-env"

#CONFIGURE_ARGS=	--with-glib-prefix=$(PREFIX_glib)
#CONFIGURE_ARGS+=--with-gnome=$(PREFIX_gnome-libs)
#CONFIGURE_ARGS+=--with-libgtop-guile 
CONFIGURE_ARGS+= --with-x

INFO_FILE=	$(PROGRAM_PREFIX)/info/data-rep.info	# data-rep???

DESCRIPTION=	"Guile is a library designed to help programmers create"
DESCRIPTION+=	"flexible applications. Using Guile in an application allows"
DESCRIPTION+=	"programmers to write plug-ins, or modules and users to use"
DESCRIPTION+=	"them to have an application fit their needs."

include ../../../mk/gnu.post.mk
