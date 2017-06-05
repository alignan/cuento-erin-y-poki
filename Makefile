BUILD = build
BOOKNAME = erin-poky
TITLE = titulo.txt
METADATA = metadata.yaml
CHAPTERS =  ch/00.md ch/01.md ch/02.md ch/03.md ch/04.md ch/05.md ch/06.md \
            ch/07.md ch/08.md ch/09.md ch/10.md
TOC = --toc --toc-depth=2
COVER_IMAGE = img/cover.jpg
LATEX_CLASS = book
CSS_STYLE = stylesheet.css

all: book

book: epub html pdf

clean:
	rm -r $(BUILD)

epub: $(BUILD)/epub/$(BOOKNAME).epub
html: $(BUILD)/html/$(BOOKNAME).html
pdf:  $(BUILD)/pdf/$(BOOKNAME).pdf 

$(BUILD)/epub/$(BOOKNAME).epub: $(TITLE) $(CHAPTERS)
	mkdir -p $(BUILD)/epub
	pandoc $(TOC) -S --epub-metadata=$(METADATA) --epub-cover-image=$(COVER_IMAGE) -o $@ $^

$(BUILD)/html/$(BOOKNAME).html: $(CHAPTERS)
	mkdir -p $(BUILD)/html
	pandoc $(TOC) --standalone --to=html5 -o $@ $^

$(BUILD)/pdf/$(BOOKNAME).pdf: $(TITLE) $(CHAPTERS)
	mkdir -p $(BUILD)/pdf
	pandoc $(TOC) --latex-engine=xelatex -V documentclass=$(LATEX_CLASS) -o $@ $^

.PHONY: all book clean epub html pdf
