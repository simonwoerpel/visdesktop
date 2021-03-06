MAKEFLAGS += -j2

install:
	npm install && npm link @alephdata/vislib

link:
	npm link @alephdata/vislib

clean:
	rm -rf node_modules dist build

dev:
	npm run start-renderer-dev & npm run start-app-dev

dev-browser-only:
	npm run start-renderer-dev-browser-only

build:
	npm run build

release-patch:
	npm version patch
	npm run release

release-minor:
	npm version minor
	npm run release

release-major:
	npm version minor
	npm run release
