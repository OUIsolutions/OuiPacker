
rm -rf dependencies
mkdir dependencies
cd dependencies
rm -rf LuaDoTheWorld
rm -rf candangoEngine
git clone -b v0.52 https://github.com/OUIsolutions/LuaFluidJson.git
git clone -b v0.72 https://github.com/OUIsolutions/LuaDoTheWorld.git
git clone -b V0.003 https://github.com/SamuelHenriqueDeMoraisVitrio/candangoEngine.git

curl -L https://github.com/OUIsolutions/LuaCAmalgamator/releases/download/0.001/lua_c_amalgamator_darwin_import.c  -o lua_c_amalgamator_darwin_import.c
curl -L https://github.com/OUIsolutions/Darwin/releases/download/0.014/darwin.o -o darwin.out
