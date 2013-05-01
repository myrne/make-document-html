build:
	mkdir -p lib
	rm -rf lib/*
	node_modules/.bin/coffee --compile -m --output lib/ src/

watch:
	node_modules/.bin/coffee --watch --compile --output lib/ src/
	
test:
	node_modules/.bin/mocha

jumpstart:
	curl -u 'meryn' https://api.github.com/user/repos -d '{"name":"make-document-html", "description":"Makes final document html from named parameters.","private":false}'
	mkdir -p src
	touch src/make-document-html.coffee
	mkdir -p test
	touch test/make-document-html.coffee
	npm install
	git init
	git remote add origin git@github.com:meryn/make-document-html
	git add .
	git commit -m "jumpstart commit."
	git push -u origin master

.PHONY: test