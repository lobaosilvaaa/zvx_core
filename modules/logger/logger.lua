ZVX = ZVX or {}
ZVX.Logger = ZVX.Logger or {}

local RESOURCE_NAME = GetCurrentResourceName()

local function format_message(level, message)
    return ('^5[%s]^7 [%s] %s'):format(
        RESOURCE_NAME,
        level,
        message
    )
end

function ZVX.Logger.Info(message)
    print(format_message('INFO', message))
end

function ZVX.Logger.Warn(message)
    print(format_message('WARN', '^3' .. message .. '^7'))
end

function ZVX.Logger.Error(message)
    print(format_message('ERROR', '^1' .. message .. '^7'))
end

function ZVX.Logger.Debug(message)
    if not ZVX.Debug then
        return
    end

    print(format_message('DEBUG', '^2' .. message .. '^7'))
end