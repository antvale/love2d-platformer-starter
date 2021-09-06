--[[
 
 Be careful that the conf.lua file is executed before the love modules are loaded,
 so you can't use any love.* package here
]]--

function love.conf(t)
    t.window.title = "Game Starter"
    t.window.width = 640
    t.window.height = 480
    t.window.icon = "assets/images/icon.png"

    t.modules.joystick = false
    t.modules.math = false
end