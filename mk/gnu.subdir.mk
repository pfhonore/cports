# $Id: gnu.subdir.mk,v 1.17 2002/01/24 15:59:12 abo Exp $

# MPKGDIR=.. might be sufficient though.
MPKGDIR=	$(shell pwd | sed -e "s,/packages.*,,")
SUBDIR=		$(shell pwd | sed s,$(MPKGDIR)/,,)
include $(MPKGDIR)/mk/gnu.def.mk

FOUND_SUBDIRS=	$(shell ls -1 */Makefile | sed s,/Makefile,,)
ifdef CURRENT
LATEST?=	$(CURRENT)
ifndef SUBDIRS
SUBDIRS=	$(FOUND_SUBDIRS)
endif
else
ifdef SUBDIRS
LATEST?=	$(shell for subdir in $(SUBDIRS); do \
		            latest=$$subdir; \
		        done; \
		        echo $$latest)
else
SUBDIRS=	$(FOUND_SUBDIRS)
LATEST?=	$(shell $(call LATEST_VERSION,$(SUBDIRS)))
endif
endif

INSTALL_SUBDIRS?=	$(LATEST)

all: help

help:
	$(QUIET) $(ECHO_MSG) "Available targets are:"
	$(QUIET) $(ECHO_MSG) " > make fetch"
	$(QUIET) $(ECHO_MSG) "     Fetch all distribution files for the" \
	            "latest versions of all programs."
	$(QUIET) $(ECHO_MSG) " > make install"
	$(QUIET) $(ECHO_MSG) "     Install the latest version of all" \
	                     "programs in this directory."
	$(QUIET) $(ECHO_MSG) " > make clean"
	$(QUIET) $(ECHO_MSG) "     Clean up, remove all build trees."

clean:
		$(QUIET) SUBDIRS='$(SUBDIRS)'; \
		 for i in $$SUBDIRS; \
		do (cd $$i && $(MAKE) $(MFLAGS) $@) || exit 1; done

fetch: current
		$(QUIET) SUBDIRS='$(INSTALL_SUBDIRS)'; \
		 for i in $$SUBDIRS; \
		do (cd $$i && $(MAKE) $(MFLAGS) $@) || exit 1; done

distclean: current
		$(QUIET) SUBDIRS='$(SUBDIRS)'; \
		for i in $$SUBDIRS; \
		do (cd $$i && $(MAKE) $(MFLAGS) $@) || exit 1; done

install: current
		$(QUIET) SUBDIRS='$(INSTALL_SUBDIRS)'; \
		for i in $$SUBDIRS; do \
		(cd $$i && \
		 echo "++++++++++++++++ Installing $$i" && \
		 $(MAKE) $(MFLAGS) $@ || \
		 echo "--------------------- FAILED:" `pwd` \
		) || exit 1; done

current:
ifdef CURRENT
	cd $(CURRENT) && $(MAKE) $(MAKE_FLAGS) CURRENT=yes current
endif
	@:

information:
ifneq	(,$(SUBDIRS))
	$(QUIET) foo=`echo $(SUBDIR) | sed s,programs/,, | sed s,programs$$,.,`; \
	$(MKDIR) $(PREFIX)/information/$$foo; \
	(echo SUBDIRS=$(SUBDIRS); \
	echo INSTALL_SUBDIRS=$(INSTALL_SUBDIRS); \
	echo LATEST=$(LATEST); \
	) > $(PREFIX)/information/$$foo/information.mk
	$(QUIET) SUBDIRS='$(SUBDIRS)'; \
	for i in $$SUBDIRS; do \
	(cd $$i && \
	 echo "++++++++++++++++ Make information in $$i" && \
	 $(MAKE) $(MFLAGS) $@ || \
	 echo "--------------------- FAILED:" `pwd` \
	) || exit 1; done
endif
	@:

html:
ifneq	(,$(SUBDIRS))
	$(QUIET) foo=`echo $(SUBDIR) | sed s,programs/,, | sed s,programs$$,.,`; \
	$(MKDIR) $(PREFIX)/html/$$foo; \
	(echo SUBDIRS=$(SUBDIRS); \
	echo INSTALL_SUBDIRS=$(INSTALL_SUBDIRS); \
	echo LATEST=$(LATEST); \
	) > $(PREFIX)/html/$$foo/html.mk
	$(QUIET) SUBDIRS='$(SUBDIRS)'; \
	for i in $$SUBDIRS; do \
	(cd $$i && \
	 echo "++++++++++++++++ Make html in $$i" && \
	 $(MAKE) $(MFLAGS) $@ || \
	 echo "--------------------- FAILED:" `pwd` \
	) || exit 1; done
endif
	@:

show-latest:
	@echo latest: $(LATEST)

.PHONY: all clean distclean install uninstall information

