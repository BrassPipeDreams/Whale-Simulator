LIBS = libs/*.lua
ASSETS = assets/textures/*
FONTS = assets/fonts/*.ttf

all:
	find  src/ -type f -exec zip -9j whale-simulator.love {} \;
	zip -9 whale-simulator.love $(LIBS) $(ASSETS) $(FONTS)

clean:
	rm whale-simulator.love

install:
	echo '#!/bin/bash' >> /usr/local/bin/whale-simulator
	echo 'love /usr/share/Whale-Simulator/whale-simulator.love' >> /usr/local/bin/whale-simulator
	chmod +x /usr/local/bin/whale-simulator

	mkdir /usr/share/Whale-Simulator
	cp -pf ./whale-simulator.love /usr/share/Whale-Simulator/whale-simulator.love

remove:
	rm -r /usr/local/bin/whale-simulator
	rm -r /usr/share/Whale-Simulator