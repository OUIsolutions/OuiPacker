
rm -rf dependencies
mkdir dependencies
cd dependencies
rm -rf LuaDoTheWorld
rm -rf candangoEngine
git clone -b v0.52 https://github.com/OUIsolutions/LuaFluidJson.git
git clone -b v0.72 https://github.com/OUIsolutions/LuaDoTheWorld.git
git clone -b V0.003 https://github.com/SamuelHenriqueDeMoraisVitrio/candangoEngine.git
curl -L  https://github.com/OUIsolutions/LuaArgv/releases/download/0.02/luargv.lua -o luargv.lua
curl -L https://github.com/OUIsolutions/LuaSilverChain/releases/download/0.001/silverchain_no_dependecie_included.c -o silverchain_no_dependecie_included.c
curl -L https://github.com/OUIsolutions/LuaCAmalgamator/releases/download/0.002/lua_c_amalgamator_darwin_import.c  -o lua_c_amalgamator_darwin_import.c
curl -L https://github.com/OUIsolutions/Darwin/releases/download/0.015/darwin.out -o darwin.out
sudo chmod +x darwin.out
cp darwin.out ..
