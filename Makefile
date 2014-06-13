LIBS = libs/*.lua
ASSETS = assets/textures/*
FONTS = assets/fonts/*.ttf

all:
	mkdir -p build
	find  src/ -type f -exec zip -9j build/whale-simulator.love {} \;
	zip -9 build/whale-simulator.love $(LIBS) $(ASSETS) $(FONTS)

clean:
	rm -r build

install:
	cp misc/whale-simulator /usr/local/bin/
	cp misc/whale-simulator.desktop /usr/share/applications/

	mkdir /usr/share/Whale-Simulator
	cp -pf build/whale-simulator.love /usr/share/Whale-Simulator/whale-simulator.love

remove:
	rm -r /usr/local/bin/whale-simulator
	rm -r /usr/share/Whale-Simulator
	rm -r /usr/share/applications/whale-simulator.desktop