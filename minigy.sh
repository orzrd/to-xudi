#!/bin/bash
for file in $(find . -name '*.js'); do java -jar yuicompressor-2.4.7.jar --type js $file -o $file.min.js; done
for file in $(find . -name '*.css'); do java -jar yuicompressor-2.4.7.jar --type css $file -o $file.min.css; done
