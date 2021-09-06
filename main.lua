--[[
    include the external libs: 
        - hump is helper utilities to make more loveble to develop with love
]]--
local Camera = require("lib.hump.camera")
local Gamestate = require("lib.hump.gamestate")
local Timer = require("lib.hump.timer")
PROPS = require ("src.game.config.properties")

--if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
-- require("lldebugger").start()
--end
function love.load(arg)
  if arg and arg[#arg] == "-debug" then require("lldebugger").start() end
  love_load()
end

function love_load()
    -- Include the application properties
   
    -- Include the game menu
    Menu = require ("src.game.stages.menu")
    
    -- Create camera and set the game zoom
    camera = Camera()
    camera:zoomTo(PROPS.GAME.CAMERA.ZOOM)

    -- Create the  game state and switch to menu
    Gamestate.registerEvents()
    Gamestate.switch(Menu)
end

function love.update(dt)

end

-- Press ESC key to quit the game
function love.keypressed(key)
  if key == "escape" then
    love.event.push("quit")
  end
end

--[[ this function is not needed when using hump
function love.draw()
  
end
]] --