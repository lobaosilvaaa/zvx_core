CreateThread(function()
    ZVX.Logger.Info('Server initialized successfully.')
    ZVX.Logger.Info(('Version: %s'):format(ZVX.Version))

    if ZVX.Environment.IsServer then
        ZVX.Logger.Debug('Environment detected as SERVER.')
    end

    ZVX.Logger.Debug(('Resource name: %s'):format(
        ZVX.Environment.Resource
    ))
end)