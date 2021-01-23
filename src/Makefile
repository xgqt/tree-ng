# tree-ng is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# tree-ng is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with tree-ng.  If not, see <https://www.gnu.org/licenses/>.

# Copyright (c) 1996 - 2018 by Steve Baker (ice@mama.indstate.edu)
# Copyright (c) 2020-2021, Maciej Barć (xgqt@protonmail.com)
# Licensed under the GNU GPL v3 License


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
	tar zcf tree-$(VERSION).tgz tree $(MAN)
	rm $(MAN)

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
