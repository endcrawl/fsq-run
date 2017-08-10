PREFIX ?= /usr


default : check

check :
	$(MAKE) -C test

install :
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 0755 $(CURDIR)/bin/fsq-run $(DESTDIR)$(PREFIX)/bin

