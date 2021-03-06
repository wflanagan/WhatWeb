NAME = whatweb
PREFIX = /usr
BINPATH = $(PREFIX)/bin
LIBPATH = $(PREFIX)/share
MANPATH = $(PREFIX)/share/man

install:
	install -p -D -m 755 $(NAME) $(DESTDIR)$(BINPATH)/$(NAME)
	install -p -D -m 644 $(NAME).1 $(DESTDIR)$(MANPATH)/man1/$(NAME).1
	gzip -f $(DESTDIR)$(MANPATH)/man1/$(NAME).1
	install -d $(DESTDIR)$(LIBPATH)/$(NAME)
	cp -p -r my-plugins plugins lib plugin-development $(DESTDIR)$(LIBPATH)/$(NAME)/

