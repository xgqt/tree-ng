PREFIX    = /usr

CC        = gcc

VERSION   = 1.8.0
TREE_DEST = tree
BINDIR    = ${PREFIX}/bin
MAN       = tree.1
MANDIR    = ${PREFIX}/man/man1
OBJS      = tree.o unix.o html.o xml.o json.o hash.o color.o file.o

CFLAGS    = -ggdb -pedantic -Wall -DLINUX -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64
LDFLAGS   = -s


all:	tree

tree:	$(OBJS)
	$(CC) $(LDFLAGS) -o $(TREE_DEST) $(OBJS)

$(OBJS): %.o:	%.c tree.h
	$(CC) $(CFLAGS) -c -o $@ $<

tar:	all
	cp doc/$(MAN) $(MAN)
	tar zcf tree-$(VERSION).tgz --remove-files tree $(MAN)

distclean:
	if [ -f tree-$(VERSION).tgz ]; then rm tree-$(VERSION).tgz; fi

clean:	distclean
	if [ -x $(TREE_DEST) ]; then rm $(TREE_DEST); fi
	if [ -f tree.o ]; then rm *.o; fi

install: tree
	install -d $(BINDIR)
	install -d $(MANDIR)
	if [ -e $(TREE_DEST) ]; then \
		install $(TREE_DEST) $(BINDIR)/$(TREE_DEST); \
	fi
	install doc/$(MAN) $(MANDIR)/$(MAN)

dist:	distclean tar clean
