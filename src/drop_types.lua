private_oui_packer.drop_types = function()
    local file = arg[3]
    if not file then
        file = "OuiPacker_types.lua"
    end
    dtw.write_file(file, PRIVATE_DARWIN_TYPES)
end
