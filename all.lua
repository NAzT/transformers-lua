local inspect = require('inspect')
local Model_PRO = require "transformers/Model-PRO"

print(inspect(Model_PRO))

print(Model_PRO['d_humidity'].as)
print(Model_PRO['d_temperature'].as)