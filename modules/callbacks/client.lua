ZVX = ZVX or {}
ZVX.Callbacks = ZVX.Callbacks or {}

local pending_requests = {}
local current_request_id = 0

function ZVX.Callbacks.Trigger(name, callback, ...)
    current_request_id += 1

    pending_requests[current_request_id] = callback

    TriggerServerEvent(
        'zvx:callbacks:trigger',
        name,
        current_request_id,
        ...
    )

    ZVX.Logger.Debug((
        'Triggered callback request: %s'
    ):format(name))
end

RegisterNetEvent('zvx:callbacks:response', function(request_id, ...)
    local request_callback = pending_requests[request_id]

    if not request_callback then
        ZVX.Logger.Warn((
            'Received invalid callback response: %s'
        ):format(request_id))

        return
    end

    request_callback(...)

    pending_requests[request_id] = nil

    ZVX.Logger.Debug((
        'Completed callback request: %s'
    ):format(request_id))
end)