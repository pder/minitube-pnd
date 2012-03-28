PND_MAKE=$(PNDSDK)/../sdk_utils/pnd_make.sh
STRIP=$(PNDSDK)/bin/arm-none-linux-gnueabi-strip

pnd:
	rm -rf tmp
	mkdir -p tmp/bin
	mkdir -p tmp/lib
	mkdir -p tmp/plugins/phonon_backend
	cp minitube/build/target/minitube tmp/bin
	cp ../mplayer2-build/mplayer/mplayer tmp/bin
	cp ../mplayer2-build/build_libs/lib/libdvdnavmini.so.4 tmp/lib
	cp ../mplayer2-build/build_libs/lib/libdvdnav.so.4 tmp/lib
	cp ../mplayer2-build/build_libs/lib/libdvdread.so.4 tmp/lib
	cp build_phonon-mplayer/mplayer/phonon_mplayer.so tmp/plugins/phonon_backend
	cp pandora/* tmp
	$(STRIP) tmp/bin/*
	$(STRIP) tmp/lib/*
	$(STRIP) tmp/plugins/phonon_backend/*
	$(PND_MAKE) -p minitube_$(VER).pnd -d tmp -x tmp/PXML.xml -i pandora/icon.png -c
