FT = Function\ Toggler

build: compile
	platypus -P src/$(FT).platypus $(FT)

compile:
	osacompile -o src/$(FT).scpt src/$(FT).applescript

install: uninstall
	unzip -q release
	cp -r $(FT).app /Applications/
	cp -r $(FT).workflow ~/Library/Services/
	rm -rf $(FT).app $(FT).workflow

uninstall:
	rm -rf /Applications/$(FT).app ~/Library/Services/$(FT).workflow ~/Library/Caches/com.dafuqtor.FunctionToggler
