SHELL := /bin/bash

export PATH := ./node_modules/.bin:$(PATH)

docs:
	doxdox lib/ --layout Markdown --output DOCUMENTATION.md

doccoverage:
	inchjs suggest lib/

test:
	inchjs suggest lib/ --only-undocumented

.PHONY: docs
