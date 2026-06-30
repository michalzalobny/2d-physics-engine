# Set the paths to the installed SDL2 libraries
SDL2_INCLUDE_PATH = /opt/homebrew/opt/sdl2-compat/include
SDL2_INCLUDE_PATH_NESTED = /opt/homebrew/opt/sdl2-compat/include/SDL2
SDL2_LIB_PATH = /opt/homebrew/opt/sdl2-compat/lib

SDL2_GFX_INCLUDE_PATH = /opt/homebrew/opt/sdl2_gfx/include
SDL2_GFX_INCLUDE_PATH_NESTED = /opt/homebrew/opt/sdl2_gfx/include/SDL2
SDL2_GFX_LIB_PATH = /opt/homebrew/opt/sdl2_gfx/lib

# Compiler flags to specify where to find header files
CFLAGS = -std=c++17 -Wall -I$(SDL2_INCLUDE_PATH) -I$(SDL2_INCLUDE_PATH_NESTED) -I$(SDL2_GFX_INCLUDE_PATH) -I$(SDL2_GFX_INCLUDE_PATH_NESTED)

# Linker flags to specify where to find the libraries and which libraries to link against
LDFLAGS = -L$(SDL2_LIB_PATH) -L$(SDL2_GFX_LIB_PATH) -lSDL2 -lSDL2_gfx -lm

build:
	g++ $(CFLAGS) ./src/*.cpp ./src/Physics/*.cpp $(LDFLAGS) -o app

run:
	./app

clean:
	rm app
