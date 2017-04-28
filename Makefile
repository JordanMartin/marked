all:
	@cp lib/marked.js somark.js
	@node_modules/.bin/uglifyjs --comments '/\*[^\0]+?Copyright[^\0]+?\*/' -o somark.min.js somark.js

clean:
	@rm somarked.js
	@rm somarked.min.js

bench:
	@node test --bench

.PHONY: clean all
