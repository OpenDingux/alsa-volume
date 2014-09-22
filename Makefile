CFLAGS+=-O2 -Wall -Wextra

PREFIX?=/usr
INSTALL?=install

.PHONY: all install clean

all: alsa-getvolume alsa-setvolume

alsa-getvolume: getvolume.c
alsa-setvolume: setvolume.c

alsa-getvolume alsa-setvolume:
	$(CC) $(CFLAGS) -o $@ -lasound $^

install: alsa-getvolume alsa-setvolume
	$(INSTALL) -m 755 -d $(DESTDIR)$(PREFIX)/bin/
	$(INSTALL) -m 755 $^ $(DESTDIR)$(PREFIX)/bin/

clean:
	rm -f alsa-getvolume alsa-setvolume
