ZVX = ZVX or {}
ZVX.Functions = ZVX.Functions or {}

function ZVX.Functions.TableCopy(table_to_copy)
    local copied_table = {}

    for key, value in pairs(table_to_copy) do
        if type(value) == 'table' then
            copied_table[key] = ZVX.Functions.TableCopy(value)
        else
            copied_table[key] = value
        end
    end

    return copied_table
end

function ZVX.Functions.GenerateUUID(length)
    length = length or 8

    local charset = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    local uuid = ''

    for i = 1, length do
        local random_index = math.random(#charset)
        uuid = uuid .. charset:sub(random_index, random_index)
    end

    return uuid
end

function ZVX.Functions.IsValidSource(source)
    return source ~= nil
        and tonumber(source) ~= nil
        and tonumber(source) > 0
end

function ZVX.Functions.IsPlayerLoaded(source)
    if not ZVX.Players then
        return false
    end

    return ZVX.Players[source] ~= nil
end