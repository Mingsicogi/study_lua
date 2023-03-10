---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by minseok.
--- DateTime: 2023/02/26 5:31 PM
---

local redis = require 'redis'
local client = redis.connect('52.78.41.78', 6379)

function add_two_numbers(a, b)
    return a + b
end

function updateRequestCountIfKeyDataExist(...)
    for i,v in ipairs {...} do
        local request_count = client:incr(v)
        if request_count == 1 then
            client:expire(v, 60)
        end
    end
end

local result = add_two_numbers(1, 2)
print(result)

updateRequestCountIfKeyDataExist('key1', 'key2', 'key3', 'key4')

print('Finished!')