LIBS = libs/*.lua
ASSETS = assets/*

all:
	find  ./src/ -type f -exec zip -9j whale-simulator.love {} \;
	zip -9 whale-simulator.love $(LIBS) $(ASSETS)

clean:
	rm whale-simulator.love