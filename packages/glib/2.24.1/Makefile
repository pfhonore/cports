include ../../../mk/gnu.pre.mk

DISTNAME=	glib
VERSION=	2.24.1
HOMEPAGE=	http://www.gtk.org/
MASTER_SITES=	http://ftp.gnome.org/pub/gnome/sources/glib/2.24
MAINTAINER=	jtang@tchpc.tcd.ie
GNU_CONFIGURE=	yes

#Commented out, because it will try to use the db-1.85-compat mode of db,
#which wont work if you have /usr/lib/libdb1.*
DEPENDS+=	"db/4.8.30 --lib --build-env"
DEPENDS+=	"gawk/4.1.3 --build-env"
DEPENDS+=	"gettext/0.19.7 --lib --build-env"
DEPENDS+=	"libiconv/1.14 --lib --build-env"
DEPENDS+=	"zlib/1.2.5 --lib --build-env"

DESCRIPTION=	"GLib provides many useful data types, macros,"
DESCRIPTION+=	"type conversions, string utilities and a lexical scanner."

CONFIGURE_ARGS+= --with-libiconv=gnu

do-install: do-instal%
	cd $(PROGRAM_PREFIX)/include; \
	$(LN) ../lib/glib/include/glibconfig.h

include ../../../mk/gnu.post.mk
