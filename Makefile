PREFIX = /usr/local
RM = rm -f

all:
	@echo "Run \"sudo make install\" to install bashmenu."

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	install -Dm755 bashmenu ${DESTDIR}${PREFIX}/bin/bashmenu

uninstall:
	${RM} ${DESTDIR}${PREFIX}/bin/bashmenu

.PHONY: all install uninstall
