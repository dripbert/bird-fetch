PREFIX = /usr

install:
	@cp birdfetch $(PREFIX)/bin/birdfetch
	@chmod +x $(PREFIX)/bin/birdfetch
  
uninstall:
	@rm $(PREFIX)/bin/birdfetch
