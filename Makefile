# Set the paths to the installed SDL2 libraries
SDL2_INCLUDE_PATH = /opt/homebrew/Cellar/sdl2/2.30.2/include
SDL2_LIB_PATH = /opt/homebrew/Cellar/sdl2/2.30.2/lib

SDL2_GFX_INCLUDE_PATH = /opt/homebrew/Cellar/sdl2_gfx/1.0.4/include
SDL2_GFX_LIB_PATH = /opt/homebrew/Cellar/sdl2_gfx/1.0.4/lib

SDL2_IMAGE_INCLUDE_PATH = /opt/homebrew/Cellar/sdl2_image/2.8.2_1/include
SDL2_IMAGE_LIB_PATH = /opt/homebrew/Cellar/sdl2_image/2.8.2_1/lib

# Compiler flags to specify where to find header files
CFLAGS = -std=c++17 -Wall -I$(SDL2_INCLUDE_PATH) -I$(SDL2_GFX_INCLUDE_PATH) -I$(SDL2_IMAGE_INCLUDE_PATH)

# Linker flags to specify where to find the libraries and which libraries to link against
LDFLAGS = -L$(SDL2_LIB_PATH) -L$(SDL2_GFX_LIB_PATH) -L$(SDL2_IMAGE_LIB_PATH) -lSDL2 -lSDL2_gfx -lSDL2_image -lm

build:
	g++ $(CFLAGS) ./src/*.cpp ./src/Physics/*.cpp $(LDFLAGS) -o app

run:
	./app

clean:
	rm app
