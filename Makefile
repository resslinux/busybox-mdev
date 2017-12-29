SYSCONFDIR ?= /etc
LIBDIR ?= /lib
MDEV ?= $(LIBDIR)/mdev
INITD ?= $(SYSCONFDIR)/init.d

all:

install:
	install -d $(DESTDIR)$(MDEV)
	install -m 0644 mdev/* $(DESTDIR)$(MDEV)
	
	install -d $(DESTDIR)$(INITD)
	install -m 0755 init.d/* $(DESTDIR)$(INITD)
	
	install -m 0644 mdev.conf $(SYSCONFDIR)

.PHONY: install
