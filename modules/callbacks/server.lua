print('^2[zvx_core]^7 Loading callback server module...')

if not ZVX then
    return
end

ZVX.Callbacks = ZVX.Callbacks or {}

local registered_callbacks = {}

function ZVX.Callbacks.Register(name, callback)
    if registered_callbacks[name] then
        ZVX.Logger.Warn((
            'Callback "%s" already exists.'
        ):format(name))

        return
    end

    registered_callbacks[name] = callback

    ZVX.Logger.Debug((
        'Registered callback: %s'
    ):format(name))
end

RegisterNetEvent('zvx:callbacks:trigger', function(
    callback_name,
    request_id,
    ...
)
    local source = source

    local callback = registered_callbacks[callback_name]

    if not callback then
        ZVX.Logger.Error((
            'Callback "%s" does not exist.'
        ):format(callback_name))

        return
    end

    local function response(...)
        TriggerClientEvent(
            'zvx:callbacks:response',
            source,
            request_id,
            ...
        )
    end

    callback(source, response, ...)
end)