FT = Function\ Toggler

install: uninstall
	cp -r $(FT).app /Applications/
	cp -r $(FT).workflow ~/Library/Services/

uninstall:
	rm -rf /Applications/$(FT).app
	rm -rf ~/Library/Services/$(FT).workflow
	rm -rf ~/Library/Caches/com.dafuqtor.FunctionToggler