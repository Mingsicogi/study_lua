-- Tutorial for EmmyDoc
-- https://emmylua.github.io
-- https://github.com/EmmyLua

--------------------------------------------------------------------------------
-- Tutorial for annotation "@class" and "@field"

print('Hello~! Lua World!')

local redis = require 'redis'
local client = redis.connect('127.0.0.1', 6379)


client:set('usr:nrk', 10)
client:set('usr:nobody', 5)
local value = client:get('usr:nrk')      -- 10

print(value)