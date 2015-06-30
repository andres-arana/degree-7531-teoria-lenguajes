.PHONY: doc doc-preview doc-spell clean

watch: doc
	while true; do sleep 3; make doc; done

doc: build/doc/report.pdf

doc-spell: docs/report.tex
	aspell -t check docs/report.tex -d es

clean:
	rm -rf build
	rm -f app.log
	rm -f people.db

build:
	mkdir $@

build/doc: | build
	mkdir $@

build/doc/report.pdf: docs/report.tex | build/doc
	pdflatex --output-directory build/doc docs/report.tex
	pdflatex --output-directory build/doc docs/report.tex
	pdflatex --output-directory build/doc docs/report.tex
