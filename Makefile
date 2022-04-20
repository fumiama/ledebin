
all: src/padjffs2/padjffs2 src/opkg/src/opkg-cl src/hexof/hexof

src/padjffs2/padjffs2:
	make -C src/padjffs2
src/opkg/src/opkg-cl:
	cd src/opkg; ./autogen.sh --disable-curl --disable-gpg --with-opkgetcdir=/etc --with-opkglockfile=/tmp/opkg.lock
	make -C src/opkg
src/hexof/hexof:
	make -C src/hexof

clean:
	make clean -C src/padjffs2
	make clean -C src/opkg
	make clean -C src/hexof

install: all
	install -m755 src/padjffs2/padjffs2 /usr/local/bin/
	install -m755 src/opkg/src/opkg-cl /usr/local/bin/
	install -m755 src/opkg.sh /usr/local/bin/opkg
	install -m755 src/hexof/hexof /usr/local/bin/
	install -m755 openwrt-repack.sh /usr/local/bin/
