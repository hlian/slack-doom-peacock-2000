all: clean build

build: default variants

clean:
	rm -rf css
	mkdir -p css/variants css/raw/variants

default:
	sass  scss/main.scss css/black.css

variants:
	for sass in scss/themes/build-variants/*--main.scss; do \
		theme=`basename $$sass --main.scss`; \
	sass  $$sass css/variants/$$theme.css; done

install:
	./etc/install.sh
