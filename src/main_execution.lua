private_oui_packer.main_execution = function()
    local file = arg[2]
    if not file then
        private_oui_packer.print_red("argv[1] not provided\n")
        return
    end
    if not dtw.isfile(file) then
        private_oui_packer.print_red("file " .. file .. " not exist\n")
        return
    end
    dofile(file)
end
