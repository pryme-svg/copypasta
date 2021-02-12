PREFIX ?= /usr

all:
	@echo Run \'make install\' to install copypasta.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p copypasta $(DESTDIR)$(PREFIX)/bin/copypasta
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/copypasta

local:
	@cp -p copypasta /home/fildo/bin/copypasta
	@chmod 755 /home/fildo/bin/copypasta

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/copypasta
