
rm -rf dependencies
mkdir dependencies
cd dependencies
rm -rf LuaDoTheWorld
rm -rf candangoEngine
git clone -b v0.52 https://github.com/OUIsolutions/LuaFluidJson.git
git clone -b v0.72 https://github.com/OUIsolutions/LuaDoTheWorld.git
git clone -b V0.003 https://github.com/SamuelHenriqueDeMoraisVitrio/candangoEngine.git

curl -L https://github.com/OUIsolutions/CTextEngine/releases/download/v2.002/CTextEngine.h -o CTextEngine.h
curl -L https://github.com/OUIsolutions/LuaCEmbed/releases/download/v0.780/LuaCEmbed.h -o LuaCEmbed.h
curl -L https://github.com/OUIsolutions/DoTheWorld/releases/download/v7.006/doTheWorld.h -o doTheWorld.h
curl -L  https://github.com/OUIsolutions/LuaArgv/releases/download/0.02/luargv.lua -o luargv.lua
curl -L https://github.com/OUIsolutions/LuaSilverChain/releases/download/0.002/silverchain_no_dependecie_included.c -o silverchain_no_dependecie_included.c
curl -L https://github.com/OUIsolutions/LuaCAmalgamator/releases/download/0.002/lua_c_amalgamator_dependencie_not_included.c -o lua_c_amalgamator_dependencie_not_included.c
curl -L https://github.com/OUIsolutions/Darwin/releases/download/0.015/darwin.out -o darwin.out
sudo chmod +x darwin.out
cp darwin.out ..
