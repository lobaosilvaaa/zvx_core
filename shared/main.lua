ZVX = ZVX or {}

ZVX.Name = 'Zorvax Core'
ZVX.Author = 'Zorvax Labs'
ZVX.Version = '0.0.1-alpha'
ZVX.Debug = true

ZVX.Modules = {}
ZVX.Functions = {}
ZVX.Players = {}
ZVX.Callbacks = {}
ZVX.Events = {}
ZVX.Database = {}
ZVX.Logger = {}
ZVX.Cache = {}

ZVX.Environment = {
    Resource = GetCurrentResourceName(),
    Game = GetGameName(),
    IsServer = IsDuplicityVersion(),
    IsClient = not IsDuplicityVersion()
}