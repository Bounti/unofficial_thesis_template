# -*- mode: Makefile -*-

.PHONY: clean
IMAGES=

thesis.pdf:thesis.tex ./chapters/*.tex *.bib *.tex
	rubber -d thesis.tex

clean:
	rubber --clean -d thesis.tex

zip:  all clean
	zip -r  $(PACKAGE).zip * -x '*~' -x '*.tgz' -x '*.zip' -x CVS -x 'CVS/*'
