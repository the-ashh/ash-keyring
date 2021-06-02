V=20210602

PREFIX = /usr/local

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 ash{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/ash{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
dist:
	git archive --format=tar --prefix=ash-keyring-$(V)/ master | gzip -9 > ash-keyring-$(V).tar.gz
	gpg --default-key BA266106 --detach-sign --use-agent ash-keyring-$(V).tar.gz

upload:
	rsync --chmod 644 --progress ash-keyring-$(V).tar.gz ash-keyring-$(V).tar.gz.sig ash.org:/nginx/var/www/keyring/

.PHONY: install uninstall dist upload

