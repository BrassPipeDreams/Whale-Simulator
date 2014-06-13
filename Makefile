LIBS = libs/*.lua
ASSETS = assets/textures/*
FONTS = assets/fonts/*.ttf

all:
	find  src/ -type f -exec zip -9j whale-simulator.love {} \;
	zip -9 whale-simulator.love $(LIBS) $(ASSETS) $(FONTS)

clean:
	rm whale-simulator.love