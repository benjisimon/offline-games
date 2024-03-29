##
## Makefile for building this project
##

HTMLS = games/card/Ninety_Eight.html \
	games/card/Golf.html \
	games/dice/Bunco.html \
	games/dice/Ship_Captain_Crew.html \
	games/dice/Ducks_in_a_Bucket.html \
	games/card/Horse_Race.html \
	games/card/Rummy.html \
	games/card/Casino.html \
	games/dice/Farkle.html \
	games/card/Coup.html \
	games/card/Cribbage.html \
	games/card/Slapjack.html \
	games/card/The_Mind.html \
	games/card/Clear_The_Dungeon.html \
	games/card/Snip_Snap_Snorem.html \
	games/card/California_Speed.html \
	games/dice/Street_Craps.html \
	games/dice/Beetle.html \
	games/dice/Martinetti.html \
	games/dice/Everest.html \
	games/dice/Threes_Away.html \
	games/dice/Knucklebones.html \
	games/dice/Straight_Golf.html \
	games/card/Spit.html \
	games/card/Crime_Wars.html \
        games/card/Army_Ants.html \
	games/card/Mate.html \
	games/card/Spoons.html \
	games/card/Hearts.html \
	games/dice/Poker_Dice.html \
	games/dice/Liars_Dice.html







TARGETS = $(HTMLS) index.html

MKHTML = scripts/mkhtml.php
MKINDEX = scripts/mkindex.php

INSTALL_DIR = /sdcard/Documents/OfflineGames
SCRIPTS_LIB = scripts/lib
COMPOSER_PHP = $(SCRIPTS_LIB)/vendor/autoload.php

all : $(TARGETS)

clean :
	rm -rf $(TARGETS)

install : $(TARGETS)
	cp -R index.html games $(INSTALL_DIR)

index.html : $(HTMLS) $(MKINDEX) $(COMPOSER_PHP)
	php -f $(MKINDEX) > $@

games/%.html : srcs/%.md $(MKHTML) $(COMPOSER_PHP)
	mkdir -p $(dir $@)
	php -f $(MKHTML) $< > $@

$(COMPOSER_PHP) : $(SCRIPTS_LIB)/composer.json $(SCRIPTS_LIB)/composer.lock
	(cd $(SCRIPTS_LIB) ; composer install)
