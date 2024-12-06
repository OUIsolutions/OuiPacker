rm -rf LuaDoTheWorld
rm -rf candangoEngine
rm -rf types
mkdir types
git clone -b v0.71 https://github.com/OUIsolutions/LuaDoTheWorld.git
git clone -b V0.003 https://github.com/SamuelHenriqueDeMoraisVitrio/candangoEngine.git

curl -L https://github.com/OUIsolutions/LuaCAmalgamator/releases/download/0.001/lua_c_amalgamator_dependencie_not_included.c -o lua_c_amalgamator_dependencie_not_included.c
curl -L https://github.com/OUIsolutions/Darwin/releases/download/0.013/darwin013.c -o darwin.c
gcc darwin.c -o darwin.o
