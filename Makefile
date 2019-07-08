all: clean build

build: default

clean:
	rm -rf css
	mkdir -p css/variants css/raw/variants

default:
	sass=scss/themes/build-variants/solarized-dark--main.scss; \
	theme=`basename $$sass --main.scss`; \
	sass $$sass css/variants/$$theme.css

install:
	./etc/install.sh
