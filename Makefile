PREFIX = /usr

install:
  @cp $(PREFIX)/bin/birdfetch
  @chmod +x $(PREFIX)/bin/birdfetch
  
uninstall:
  @rm $(PREFIX)/bin/birdfetch
