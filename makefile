name = simplegame

all: repack run

repack:
	rm -f bin/$(name).love
	zip -9qr bin/$(name).love assets lib src *.lua

run:
	love bin/$(name).love