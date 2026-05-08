ZVX.Logger = ZVX.Logger or {}

ZVX.Name = 'Zorvax Core'
ZVX.Author = 'Zorvax Labs'
ZVX.Version = '0.0.1-alpha'
ZVX.Debug = true

ZVX.Modules = ZVX.Modules or {}
ZVX.Functions = ZVX.Functions or {}
ZVX.Players = ZVX.Players or {}
ZVX.Callbacks = ZVX.Callbacks or {}
ZVX.Events = ZVX.Events or {}
ZVX.Database = ZVX.Database or {}
ZVX.Logger = ZVX.Logger or {}
ZVX.Cache = ZVX.Cache or {}

ZVX.Environment = {
    Resource = GetCurrentResourceName(),
    Game = GetGameName(),
    IsServer = IsDuplicityVersion(),
    IsClient = not IsDuplicityVersion()
}