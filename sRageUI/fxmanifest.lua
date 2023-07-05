fx_version 'cerulean'
game 'gta5'

author 'NotRealSenna'
description 'sRageUI | RageUI V2 | 0.00 ms inactive'
version '1.0.0'

client_scripts {
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",
    '@es_extended/locale.lua',
}

shared_scripts {
    "shared/sRageUI_Config.lua",
}

client_scripts {
    "client/cl_exemplemenu.lua",
}

server_scripts {
    "",
}

shared_scripts '@es_extended/imports.lua'
