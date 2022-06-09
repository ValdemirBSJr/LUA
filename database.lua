#!/usr/bin/env lua

-- https://terminalroot.com.br/2022/01/como-conectar-ao-sqlite-com-lua.html
-- https://terminalroot.com.br/lua/

local driver = require('luasql.sqlite3')
local env = driver.sqlite3()
local db = env:connect('./litelua.db')

local results = db:execute [[

	SELECT * FROM example;
]]

local id,mail,url,lang,name = results:fetch()

while id do
	print(id .. ' | ' .. mail .. ' | ' .. url .. ' | ' .. lang .. ' | ' .. name)
	id,mail,url,lang,name = results:fetch()
end

results:close()

db:close()
env:close()
