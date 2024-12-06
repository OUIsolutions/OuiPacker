rm -rf LuaDoTheWorld
rm -rf candangoEngine
rm -rf types
mkdir types
git clone -b v0.71 https://github.com/OUIsolutions/LuaDoTheWorld.git
git clone -b V0.003 https://github.com/SamuelHenriqueDeMoraisVitrio/candangoEngine.git


curl -L https://raw.githubusercontent.com/OUIsolutions/Darwin/refs/heads/main/types/darwin.lua
curl -L https://github.com/OUIsolutions/Darwin/releases/download/0.013/darwin013.c -o darwin.c
gcc darwin.c -o darwin.o
