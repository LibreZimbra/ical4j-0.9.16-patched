# SPDX-License-Identifier: AGPL-3.0-or-later

include ./build.mk

ANT_TARGET=clean-compile package

all: build-ant

install:
	cp build/ical4j.jar build/ical4j-0.9.16-patched.jar
	$(call install_jetty_lib, build/ical4j-0.9.16-patched.jar)
	$(call install_jar_lib, build/ical4j-0.9.16-patched.jar)

clean: clean-ant
