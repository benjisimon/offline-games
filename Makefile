##
## Makefile for building this project
##

HTMLS = games/card/Ninety_Eight.html \
	games/card/Golf.html \
	games/dice/Bunco.html \
  games/dice/Ship_Captain_Crew.html \
	games/dice/Ducks_in_a_Bucket.html \
	games/card/Horse_Race.html \
	games/card/Rummy.html


TARGETS = $(HTMLS) index.html

MKHTML = scripts/mkhtml.php
MKINDEX = scripts/mkindex.php

INSTALL_DIR = /sdcard/Documents/OfflineGames

all : $(TARGETS)

clean :
	rm -rf $(TARGETS)

install : $(TARGETS)
	cp -R index.html games $(INSTALL_DIR)

index.html : $(HTMLS) $(MKINDEX)
	php -f $(MKINDEX) > $@

games/%.html : srcs/%.md
	mkdir -p $(dir $@)
	php -f $(MKHTML) $< > $@
