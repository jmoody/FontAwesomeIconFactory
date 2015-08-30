all:
	$(MAKE) clean
	$(MAKE) xct

clean:
	rm -rf build

xct:
	bin/make/xctest.sh

