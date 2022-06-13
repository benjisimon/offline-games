##
## Makefile for building this project
##

HTMLS = games/card/Ninety_Eight.html
MKHTML = scripts/mkhtml.php


all : $(HTMLS)

clean :
	rm -rf games

games/%.html : srcs/%.md
	mkdir -p $(dir $@)
	php -f $(MKHTML) $< > $@
