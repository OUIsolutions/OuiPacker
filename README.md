# OuiPacker
a Lua Runtime with all dependencies required to build OUI products

## Releases
| item          | plataform |
|-------        |-----------|
| [Amalgamation](https://github.com/OUIsolutions/OuiPacker/releases/download/0.003/OuiPacker.c)| Source  |
| [OuiPacker.out](https://github.com/OUIsolutions/OuiPacker/releases/download/0.003/OuiPacker.out)|Linux binary|
| [OuiPacker.exe](https://github.com/OUIsolutions/OuiPacker/releases/download/0.003/OuiPacker.exe)|Windows binary |



## Compile
for compile the project you can just call
```shell
curl -L https://github.com/OUIsolutions/OuiPacker/releases/download/0.003/OuiPacker.c -o OuiPacker.c && gcc  OuiPacker.c -o  OuiPacker.o
```
## Building From Scratch
for building from scratch you must have gcc installed on your machine
then clone the repo and type
```
sh install_dependencies.sh && ./darwin.o build darwinconf.lua build_linux  build_windows
```
## Building from docker
for building from docker, you must have docker installed in your machine
then  just type
```
sh install_dependencies.sh
 sh create_all_docker_images.sh
 sh build_all_from_docker.sh
```
than you can run the image
```shell
 docker run  --volume $(pwd)/src:/src/:z --volume $(pwd)/release:/release/:z   -it  darwin

 ```
and inside the machine , you can run
```shell
 darwin build
```

## Runing a input.lua file
for runing a input.lua file you can just type
```shell
./OuiPacker.o teste.lua
```

## Runing Full Folder Mode
you can run in full folder mode by passing the **--folder_mode** flag
NOTE THAT YOUR CODE MUST HAVE A **main** function, otherwise will raise
a error
```shell
./OuiPacker.o --folder_mode  src
```
## Type Anotations
you can generate a type anotation file by typing
```shell
./OuiPacker.o --drop_types types.lua
```

## Building libs
OUI Packer Have The Follow libs native

|  Object Name  | Lib Name |
|--------------|---------|
|camalgamator | [LuaCAmalgamator](https://github.com/OUIsolutions/LuaCAmalgamator) |
|dtw| [LuaDoTheWorld](https://github.com/OUIsolutions/LuaDoTheWorld)|
|candango|[candangoEngine](https://github.com/SamuelHenriqueDeMoraisVitrio/candangoEngine) |
|json|[LuaFluidJson](https://github.com/OUIsolutions/LuaFluidJson) |
|argv|[LuaFluidJson](https://github.com/OUIsolutions/LuaArgv) |
|silverchain|[LuaFluidJson](https://github.com/OUIsolutions/LuaSilverChain) |
