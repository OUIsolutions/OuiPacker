private_oui_packer.main = function()
    local first_arg = arg[2]
    if first_arg == "--drop_types" then
        private_oui_packer.drop_types()
        return
    end
    if first_arg == "--folder_mode" then
        private_oui_packer.folder_execution()
        return
    end

    private_oui_packer.main_execution()
end
