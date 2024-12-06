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
    local all_paths = dtw.list_files_recursively(folder, true)
    for i = 1, #all_paths do
        dofile(all_paths[i])
    end

    if not main then
        private_oui_packer.print_red("main function not provided\n")
        return
    end
    main()
end
