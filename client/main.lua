CreateThread(function()
    Wait(3000)

    ZVX.Callbacks.Trigger('zvx:test:ping', function(response)
        print(('[CLIENT] Callback response: %s'):format(
            response
        ))
    end)
end)