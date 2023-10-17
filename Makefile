.PHONY: all

all: README.md

README.md: content/articles/article.adoc
	asciidoctor -b docbook content/articles/article.adoc
	pandoc -f docbook -t gfm content/articles/article.xml -o README.md
