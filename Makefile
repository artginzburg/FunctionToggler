FT = Function\ Toggler

build: compile
	platypus -P src/$(FT).platypus $(FT)

compile:
	osacompile -o src/$(FT).scpt src/$(FT).applescript

release: build
	mv $(FT).app dist
	zip -r dist dist

install: uninstall
	cp -r $(FT).app /Applications/
	cp -r $(FT).workflow ~/Library/Services/
	rm -rf $(FT).app $(FT).workflow

uninstall:
	rm -rf /Applications/$(FT).app ~/Library/Services/$(FT).workflow ~/Library/Caches/org.artginzburg.FunctionToggler
