YUICOMPRESSOR = java -jar yuicompressor-2.4.7.jar
YUI_COMPRESSOR_FLAGS = --charset utf-8 --verbose

JS_FILES = $(shell find .  -name '*.js'|grep -v 'min.js')

CSS_FILES = $(shell find .  -name '*.css'|grep -v 'min.css')


CSS_MINIFIED = $(CSS_FILES:.css=.min.css)
JS_MINIFIED = $(JS_FILES:.js=.min.js)

minify: minify-css minify-js

minify-css: $(CSS_FILES) $(CSS_MINIFIED)

minify-js: $(JS_FILES) $(JS_MINIFIED)

%.min.css: %.css
	@echo '==> Minifying $<'
	$(YUICOMPRESSOR) $(YUI_COMPRESSOR_FLAGS) --type css $< -o $@ || rm -f $@
	@echo

%.min.js: %.js
	@echo '==> Minifying $<'
	$(YUICOMPRESSOR) $(YUI_COMPRESSOR_FLAGS) --type js $< -o $@ || rm -f $@
	@echo

clean:
	rm -f $(CSS_MINIFIED)
	rm -f $(JS_MINIFIED)

