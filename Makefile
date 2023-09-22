.PHONY: all

all: README.md

README.md: article.adoc
	asciidoctor -b docbook article.adoc
	pandoc -f docbook -t gfm article.xml -o README.md
