fx_version 'cerulean'
game 'gta5'

lua54 'yes'

name 'zvx_core'
author 'Zorvax Labs'
description 'Modern modular framework for FiveM.'
version '0.0.1-alpha'

shared_scripts {
    'shared/version.lua',
    'shared/constants.lua',
    'shared/functions.lua',

    'modules/logger/logger.lua',

    'shared/main.lua',

    'config/config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

dependencies {
    '/server:7290'
}