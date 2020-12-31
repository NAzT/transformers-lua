-- local lu = require("luaunit")
local Model_PRO = require "Model-PRO"

for i,v in pairs(Model_PRO) do
    print(i, '->', v.as)
end