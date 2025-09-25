PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man
RM = rm -f

all:
	@echo 'Run "sudo make install" to install bashmenu.'

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	install -Dm755 bashmenu ${DESTDIR}${PREFIX}/bin/bashmenu
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	install -Dm644 bashmenu.1 ${DESTDIR}${MANPREFIX}/man1/bashmenu.1

uninstall:
	${RM} ${DESTDIR}${PREFIX}/bin/bashmenu ${DESTDIR}${MANPREFIX}/man1/bashmenu.1

.PHONY: all install uninstall
