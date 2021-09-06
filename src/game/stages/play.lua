local Gamestate = require("lib.hump.gamestate")

local Play={}

function Play:init()
end

function Play:enter(previous)
end

function Play:leave()
end

function Play:draw()
    love.graphics.printf("PLAY THE GAME",100,100,200,"center")
end

return Play