include ../../../mk/gnu.pre.mk

DISTNAME=	libpng
VERSION=	1.5.10
CATEGORIES=	graphics lib
HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html
MASTER_SITES=   http://heanet.dl.sourceforge.net/libpng
MAINTAINER=	darach@tchpc.tcd.ie
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes

# Should work for all platforms with gcc and shared libs with sonames

DEPENDS+=	"zlib/1.2.6 --lib"

DESCRIPTION=	"libpng is the official PNG reference library. It supports"
DESCRIPTION+=	"almost all PNG features, is extensible, and has been"
DESCRIPTION+=	"extensively tested for over five years."

include ../../../mk/gnu.post.mk
