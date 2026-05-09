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
end

RegisterNetEvent('zvx:callbacks:response', function(request_id, ...)
    local request_callback = pending_requests[request_id]

    if not request_callback then
        return
    end

    request_callback(...)

    pending_requests[request_id] = nil
end)