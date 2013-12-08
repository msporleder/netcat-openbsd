PREFIX ?= usr/local
PKGMANDIR ?= man
LDFLAGS += -lresolv

all:
	${CC} -o nc ${LDFLAGS} netcat.c atomicio.c socks.c strtonum.c readpassphrase.c

install:
	install -d ${DESTDIR}/${PREFIX}/bin/
	install nc ${DESTDIR}/${PREFIX}/bin/nc
	install -d ${DESTDIR}/${PREFIX}/${PKGMANDIR}/${PKGMANDIR}1/
	install -m 0644 nc.1 ${DESTDIR}/${PREFIX}/${PKGMANDIR}/${PKGMANDIR}1/nc.1
