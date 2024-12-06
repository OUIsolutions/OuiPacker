-- eliminantes unwanted prints
--darwin.add_c_code("\n#undef printf\n")
--darwin.add_c_code("#define printf(...) \n")

darwin.add_c_file("LuaDoTheWorld/src/one.c", true, function(import, path)
    -- to make the luacembe not be imported twice
    if import == "../dependencies/dependency.LuaCEmbed.h" then
        return false
    end
    return true
end)

darwin.add_c_file("candangoEngine/src/main.c", true, function(import, path)
    -- to make the luacembe not be imported twice
    if import == "../dependencies/depB.LuaCEmbed.h" then
        return false
    end
    return true
end)

--darwin.add_c_code("\n#undef printf\n")


local types = ""
local types_files = dtw.list_files_recursively("types", true)
for i = 1, #types_files do
    types = types .. "\n" .. dtw.load_file(types_files[i])
end
darwin.embed_global("PRIVATE_DARWIN_TYPES", types)


darwin.load_lualib_from_c("load_luaDoTheWorld", "dtw")
darwin.load_lualib_from_c("candango_engine_start_point", "candango")
darwin.add_lua_code("private_oui_packer = {}")

local src_files = dtw.list_files_recursively("src", true)
for i = 1, #src_files do
    local current = src_files[i]
    darwin.add_lua_code("-- file " .. current)
    darwin.add_lua_file(current)
end
darwin.add_lua_code("private_oui_packer.main()")
darwin.generate_lua_output({ output_name = "debug.lua" })
darwin.generate_c_executable_output({ output_name = "OuiPacker.c" })
os.execute("gcc OuiPacker.c -o  OuiPacker.o")
