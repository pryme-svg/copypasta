PREFIX ?= /usr

all:
	@echo Run \'make install\' to install copypasta.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p copypasta $(DESTDIR)$(PREFIX)/bin/copypasta
	@mkdir -p $(DESTDIR)$(PREFIX)/local/share/copypasta
	@cp -p pastas.csv $(DESTDIR)$(PREFIX)/local/share/copypasta
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/copypasta

local:
	@cp -p copypasta ~/bin/copypasta
	@mkdir -p ~/.local/share/copypasta
	@cp -p pastas.csv ~/.local/share/copypasta
	@chmod 755 ~/bin/copypasta

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/copypasta
	@rm -rf $(DESTDIR)$(PREFIX)/local/share/copypasta
