default: main

main: main.native

test: test.native

%.native: 
	ocamlbuild -use-ocamlfind $@
	mv $@ $*

clean:
	ocamlbuild -clean

.PHONY: test default clean
