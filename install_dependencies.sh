
rm -rf dependencies
mkdir dependencies
cd dependencies
rm -rf LuaDoTheWorld
rm -rf candangoEngine

git clone -b v0.71 https://github.com/OUIsolutions/LuaDoTheWorld.git
git clone -b V0.003 https://github.com/SamuelHenriqueDeMoraisVitrio/candangoEngine.git

curl -L https://github.com/OUIsolutions/LuaCAmalgamator/releases/download/0.001/lua_c_amalgamator_darwin_import.c  -o lua_c_amalgamator_darwin_import.c
curl -L https://github.com/OUIsolutions/Darwin/releases/download/0.013/darwin013.c -o darwin.c
gcc darwin.c -o ../darwin.o
