private_oui_packer.main = function()
    local first_arg = arg[2]
    if first_arg == "--drop_types" then
        private_oui_packer.drop_types()
    else
        private_oui_packer.main_execution()
    end
end
