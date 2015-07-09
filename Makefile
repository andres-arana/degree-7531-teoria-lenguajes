.PHONY: clean

watch/%:
	while true; do sleep 3; make build/doc/$(@F).pdf; done

clean:
	rm -rf build

build:
	mkdir $@

build/doc: | build
	mkdir $@

build/doc/%.pdf: docs/%.tex | build/doc
	pdflatex --output-directory build/doc docs/$(<F)
	pdflatex --output-directory build/doc docs/$(<F)
	pdflatex --output-directory build/doc docs/$(<F)
