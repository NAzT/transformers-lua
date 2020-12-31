local transformer = {
    ['d_temperature'] = {
        as = 'temperature',
        filter = function (x) return x <= 100 and x > 0 end
    },
    d_humidity = {
        as = 'humidity'
    },
}

return transformer