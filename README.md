# OuiPacker
a Lua Runtime with all dependencies required to build OUI products

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
``
## Type Anotations
you can generate a type anotation file by typing
```shell
./OuiPacker.o --drop_types types.lua
```
## Building libs
OUI Packer Have The Follow libs native

|  Object Name  | Lib Name |
|--------------|---------|
|camalgamator | [LuaCAmalgamator](https://github.com/OUIsolutions/LuaCAmalgamator]) |
|dtw| [LuaDoTheWorld](https://github.com/OUIsolutions/LuaDoTheWorld)|
|candango|[candangoEngine](https://github.com/SamuelHenriqueDeMoraisVitrio/candangoEngine]) |
