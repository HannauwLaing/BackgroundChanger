

usage:
	@echo "usage: make <all,setup,run,clean>"

all: setup run
	@echo "[BackgroundChanger] Finished"
run:
	./changebackgroundLoop.sh

setup: _make_bin
	./DownloadAllImages.sh

_make_bin:
	mikdir -p bin/

clean:
	rm -rf bin/
