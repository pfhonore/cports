include ../../../mk/gnu.pre.mk

DISTNAME=       tensorflow
VERSION=        0.9.0
CATEGORIES=     scripting
HOMEPAGE=       https://www.tensorflow.org/
MASTER_SITES=   https://storage.googleapis.com/tensorflow/linux/cpu/
MAINTAINER=     Pierre-Francois.Honore@cea.fr
GNU_CONFIGURE=  no
NO_BUILD=       yes
DISTFILES =     $(DISTNAME)-$(VERSION)rc0-cp27-none-linux_x86_64.whl

EXTRAVERSION=

DEPENDS += "Anaconda2/4.2.0 --build-env --run-env"

DO_RUN_TESTS=no

DESCRIPTION=    "TensorFlow is an open source software library for numerical computation using data flow graphs."
DESCRIPTION+=	" Nodes in the graph represent mathematical operations, while the graph edges represent the"
DESCRIPTION+=	" multidimensional data arrays (tensors) communicated between them.

do-fetch:
	@

do-extract:
	@

do-configure:
	@

do-install:
	$(MODULE_ADD) $(BUILD_DEPENDS);   \
	cd $(WORKDIR); \
	conda create -n tensorflow python=2.7 -y && \
	source activate tensorflow && \
	conda install -c conda-forge tensorflow -y && \
	source $(PREFIX_Anaconda2)/bin/activate tensorflow && \
	pip install --ignore-installed --upgrade && \
	source $(PREFIX_Anaconda2)/bin/deactivate

include ../../../mk/gnu.post.mk
