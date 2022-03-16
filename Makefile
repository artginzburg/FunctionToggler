FT = Function\ Toggler
FTid = FunctionToggler

bundle:
	brew bundle

build: compile
	platypus -P src/$(FT).platypus dist/$(FT)

compile:
	osacompile -o dist/$(FT).scpt src/$(FT).applescript

release:
	cd dist && zip -rX $(FTid) $(FT).app $(FT).workflow
	shasum -a256 dist/$(FTid).zip | awk '{printf $$1}' | pbcopy

install: uninstall
	cd dist && \
	cp -r $(FT).app /Applications/ && \
	cp -r $(FT).workflow ~/Library/Services/ && \
	rm -rf $(FT).app

uninstall:
	rm -rf /Applications/$(FT).app ~/Library/Services/$(FT).workflow ~/Library/Caches/org.artginzburg.$(FTid)

cleanup:
	cd dist; rm $(FT).scpt; rm $(FTid).zip; rm -rf $(FT).app
