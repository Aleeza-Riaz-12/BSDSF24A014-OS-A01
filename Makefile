PREFIX ?= /usr/local

.PHONY: all static dynamic clean install

all:
	$(MAKE) -C src all

static:
	$(MAKE) -C src static

dynamic:
	$(MAKE) -C src dynamic

clean:
	$(MAKE) -C src clean

install: all
	install -d $(PREFIX)/bin
	install -d $(PREFIX)/lib
	install -d $(PREFIX)/share/man/man1
	install -d $(PREFIX)/share/man/man3
	install -m 755 bin/client_dynamic $(PREFIX)/bin/client
	install -m 755 lib/libmyutils.so $(PREFIX)/lib/libmyutils.so
	install -m 644 man/man1/client.1 $(PREFIX)/share/man/man1/client.1
	install -m 644 man/man3/*.3 $(PREFIX)/share/man/man3/
	ldconfig
