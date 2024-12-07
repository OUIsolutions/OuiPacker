# OuiPacker
a Lua Runtime with all dependencies required to build OUI products

## Build
for building the project you can just call
```shell
curl -L https://github.com/OUIsolutions/OuiPacker/releases/download/0.002/OuiPacker.c -o OuiPacker.c && gcc  OuiPacker.c -o  OuiPacker.o
```
## Building From Scratch
for building from scratch you must have gcc installed on your machine
then clone the repo and type
```
sh install_dependencies.sh && ./darwin.o build
```
## Building from docker
for building from docker, you must have docker installed in your machine
then  just type 
```
docker build -t darwin .
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
