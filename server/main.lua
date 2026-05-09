CreateThread(function()
    ZVX.Logger.Info('Server initialized successfully.')
    ZVX.Logger.Info(('Version: %s'):format(ZVX.Version))

    if ZVX.Environment.IsServer then
        ZVX.Logger.Debug('Environment detected as SERVER.')
    end

    ZVX.Logger.Debug(('Resource name: %s'):format(
        ZVX.Environment.Resource
    ))

    local generated_uuid = ZVX.Functions.GenerateUUID(12)

    ZVX.Logger.Info(('Generated UUID: %s'):format(
        generated_uuid
    ))

    local test_table = {
        name = 'Zorvax',
        nested = {
            framework = true
        }
    }

    local copied_table = ZVX.Functions.TableCopy(test_table)

    if copied_table.nested.framework then
        ZVX.Logger.Debug('TableCopy utility validated successfully.')
    end
end)