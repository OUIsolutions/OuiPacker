private_oui_packer.print_color = function(color, text)
    local RESSET = "\x1b[0m"
    io.write(color .. text .. RESSET)
end
private_oui_packer.print_green = function(text)
    private_oui_packer.print_color("\x1b[32m", text)
end

private_oui_packer.print_blue = function(text)
    private_oui_packer.print_color("\x1b[34m", text)
end
private_oui_packer.print_red = function(text)
    private_oui_packer.print_color("\x1b[31m", text)
end
