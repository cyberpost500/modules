
# All conversion is done in place because this Makefile generates a web site to
# be hosted on github.io.
#
SHELL=/bin/bash

PDF_OPTS:=-V geometry:margin=0.5in       # default is too large, make margins 0.5inches
PDF_OPTS+=-V mainfont="DejaVu Sans"      # using a sans font because this is digital
PDF_OPTS+=-V sansfont="DejaVu Sans"      # turns out, DejaVu is fairly complete, unicode-wise
PDF_OPTS+=-V monofont="DejaVu Sans Mono"
PDF_OPTS+=--latex-engine=xelatex         # to get unicode support in the output, use xelatex
PDF_OPTS+=--highlight-style=tango        # this gives a light background and syntax highlighting
PDF_OPTS+=--toc                          # include table of contents
PDF_OPTS+=-N                             # number the sections, doesn't look
                                         # as pretty, but it's easier to
                                         # refer to a section when it has a
                                         # number.

HTML_OPTS:=--highlight-style=tango
HTML_OPTS+=-s                            #stand-alone
HTML_OPTS+=--css /modules/styles.css
HTML_OPTS+=-N
HTML_OPTS+=--toc

# Anyone adding more content, just copy and paste and update the paths below.
# NOTE: we defined custom entries for the html generation because the gh-pages
# doesn't understand all the markdown we use in our documents.  If you see a
# page render with a % Title at the top, good chance someone forgot to add an
# entry here for that page.
EVERYTHING:=index.html live-boot/live-boot.html live-boot/live-boot.pdf \
	text-analytics/lesson-01/lesson-plan.html text-analytics/lesson-01/lesson-plan.pdf \
	text-analytics/lesson-02/lesson-plan.html text-analytics/lesson-02/lesson-plan.pdf \
	git/git.pdf git/git.html \
	python/python.pdf python/python.html \
	python-games/python-games.pdf python-games/python-games.html \
	python-games/python-games-2.pdf python-games/python-games-2.html \
	python-games/python-games-3.pdf python-games/python-games-3.html \
	python-games/python-games-4.pdf python-games/python-games-4.html \
	java/java.pdf java/java.html \
	java/java-2.pdf java/java-2.html \
	java/libgdx1.pdf java/libgdx1.html \
	network/manual.pdf network/manual.html \
	minetest/mods-1.pdf minetest/mods-1.html \
	minetest/mods-2.pdf minetest/mods-2.html \
	minetest/mods-3.pdf minetest/mods-3.html


all: $(EVERYTHING)

%.pdf: %.mkd
	pandoc $(PDF_OPTS) $< -o $@

%.pdf: %.md
	pandoc $(PDF_OPTS) $< -o $@

%.html: %.mkd
	pandoc $(HTML_OPTS) $< -o $@

%.html: %.md
	pandoc $(HTML_OPTS) $< -o $@

index.html: README.md
	@pandoc $(HTML_OPTS) README.md -o index.html
