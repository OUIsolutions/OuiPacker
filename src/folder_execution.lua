private_oui_packer.folder_execution = function()
    local folder = arg[3]

    if not folder then
        private_oui_packer.print_red("folder not present at argv[2]\n")
        return
    end

    if not dtw.isdir(folder) then
        private_oui_packer.print_red(folder .. "its not a folder\n")
        return
    end
    local all_itens = {}
    local all_paths = dtw.list_files_recursively(folder, true)
    for i = 1, #all_paths do
        local current_content = dtw.load_file(all_paths[i])
        all_itens[#all_itens + 1] = current_content
    end
    all_itens[#all_itens + 1] = "main()"
    content = table.concat(all_itens, "\n")
    dostring(content)
end
