function is_arg_present(arg_name)
    for i = 1, #arg do
        if arg[i] == arg_name then
            return true
        end
    end
    return false
end

darwin.add_c_file("dependencies/CTextEngine.h")
darwin.add_c_file("dependencies/LuaCEmbed.h")
darwin.add_c_file("dependencies/doTheWorld.h")
darwin.add_c_file("dependencies/lua_c_amalgamator_dependencie_not_included.c")
darwin.add_c_file("dependencies/silverchain_no_dependecie_included.c")

darwin.add_c_file("dependencies/LuaDoTheWorld/src/one.c", true, function(import, path)
    -- to make the luacembe not be imported twice
    if import == "../dependencies/dependency.LuaCEmbed.h" then
        return false
    end
    if import == "../dependencies/dependency.doTheWorld.h" then
        return false
    end
    return true
end)


darwin.add_c_file("dependencies/candangoEngine/src/main.c", true, function(import, path)
    -- to make the luacembe not be imported twice
    if import == "../dependencies/depB.LuaCEmbed.h" then
        return false
    end
    return true
end)
darwin.add_c_file("dependencies/LuaFluidJson/src/main.c", true, function(import, path)
    -- to make the luacembe not be imported twice
    if import == "dependencies/LuaCEmbed.h" then
        return false
    end
    if import == "dependencies/cJSON/cJSON.h" then
        return false
    end
    if import == "dependencies/cJSON/cJSON.c" then
        return false
    end
    return true
end)




local types = ""
local types_files = dtw.list_files_recursively("types", true)
for i = 1, #types_files do
    types = types .. "\n" .. dtw.load_file(types_files[i])
end
darwin.embed_global("PRIVATE_DARWIN_TYPES", types)

darwin.load_lualib_from_c("luaopen_lua_c_amalgamator", "camalgamator")
darwin.load_lualib_from_c("luaopen_lua_silverchain", "silverchain")

darwin.load_lualib_from_c("load_luaDoTheWorld", "dtw")
darwin.load_lualib_from_c("load_lua", "json")

darwin.load_lualib_from_c("candango_engine_start_point", "candango")
local lua_argv_content = dtw.load_file("dependencies/luargv.lua")
darwin.add_lua_code(string.format(
    "argv = function()\n %s\n end \n",
    lua_argv_content
))
darwin.add_lua_code("argv = argv()")

darwin.add_lua_code("private_oui_packer = {}")

local src_files = dtw.list_files_recursively("src", true)
for i = 1, #src_files do
    local current = src_files[i]
    darwin.add_lua_code("-- file " .. current)
    darwin.add_lua_file(current)
end
darwin.add_lua_code("private_oui_packer.main()")
darwin.generate_lua_output({ output_name = "debug.lua" })
darwin.generate_c_executable_output({ output_name = "release/OuiPacker.c", include_lua_cembed = false })

if is_arg_present("build_windows") then
    os.execute("i686-w64-mingw32-gcc release/OuiPacker.c --static -o  release/OuiPacker.exe")
end

if is_arg_present("build_linux") then
    os.execute("gcc release/OuiPacker.c --static -o  release/OuiPacker.out")
end
