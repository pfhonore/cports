include ../../../mk/gnu.pre.mk

DISTNAME=	ncurses
VERSION=	5.7
CATEGORIES=	lib
HOMEPAGE=	http://www.gnu.org/software/ncurses/
MASTER_SITES=	$(MASTER_SITE_GNU:=$(DISTNAME)/)
MAINTAINER=	jtang@tchpc.tcd.ie
GNU_CONFIGURE=	yes

#Framtida projekt.
#CONFIGURE_ARGS+=	--with-gpm

CONFIGURE_ARGS=	--enable-symlinks --with-shared --enable-termcap
CONFIGURE_ARGS+=--with-manpage-format=normal

LINK_PATHS+=	$(PROGRAM_PREFIX)/lib

DESCRIPTION=	"The ncurses library routines give the user a terminal-"
DESCRIPTION+=	"independent method of updating character screens with"
DESCRIPTION+=	"reasonable optimization. This implementation is 'new curses'"
DESCRIPTION+=	"(ncurses) and is the approved replacement for 4.4BSD classic"
DESCRIPTION+=	"curses, which has been discontinued."

do-install:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WRKSRC); \
	$(MAKE) install ; \
	ln -sf $(PROGRAM_PREFIX)/include/ncurses/*.h $(PROGRAM_PREFIX)/include/ ; \
	ln -sf $(PROGRAM_PREFIX)/lib/libncurses.so $(PROGRAM_PREFIX)/lib/libcurses.so

include ../../../mk/gnu.post.mk
