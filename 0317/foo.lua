-----------------20161109
package.path = appPath
local socket = require "clientsocket"
local sproto = require "sprotoCore"
local m = require "lpeg"
require "bar"

--isCanBeUsed=1   --全局，1表示lua可用，0表示屏蔽

test = function (args)
    print(type(socket))
    local any = m.P(1)
    print("any=",any)
    local fd = (socket.connect("192.168.1.100", 8888))
    print("lua called!!!!!",package.path)
bar();
    return result
end





