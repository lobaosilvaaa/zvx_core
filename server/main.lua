CreateThread(function()
    print('^2==================================================^7')
    print(('^2[%s]^7 Server initialized successfully.'):format(ZVX.Name))
    print(('^3[%s]^7 Version: %s'):format(
        ZVX.Name,
        ZVX.Version
    ))
    
    print(('^5[%s]^7 Environment: SERVER'):format(ZVX.Name))
    print(('^6[%s]^7 Resource: %s'):format(
        ZVX.Name,
        ZVX.Environment.Resource
    ))
    print('^2==================================================^7')
end)