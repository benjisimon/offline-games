##
## Makefile for building this project
##

HTMLS = games/card/Ninety_Eight.html \
	games/card/Golf.html \
	games/dice/Bunco.html \
  games/dice/Ship_Captain_Crew.html \
	games/dice/Ducks_in_a_Bucket.html


MKHTML = scripts/mkhtml.php


all : $(HTMLS)

clean :
	rm -rf games

games/%.html : srcs/%.md
	mkdir -p $(dir $@)
	php -f $(MKHTML) $< > $@
