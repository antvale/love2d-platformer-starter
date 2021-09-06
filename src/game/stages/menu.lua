--[[
    This module implements the menu of the game that's the first stage of the game.
    The module comes with a simple dummy menu that you can customize as you expect

    Remember to pass this module to first game state switch
]]--
local Gamestate = require("lib.hump.gamestate")
local MenuButton = require ("src.game.gui.menubutton")
local suit = require 'lib.suit'

local windowsWidth = love.graphics:getWidth()
local windowsHeight = love.graphics:getHeight()

local Menu = {}

function Menu:init()
    local titleWidth,titleHeight

    self.title = {}
    self.body = {}

    self.title.text = "GAME STARTER!"

    titleWidth = PROPS.ASSETS.FONTS.SLKSCRB_44:getWidth(self.title.text)
    titleHeight = PROPS.ASSETS.FONTS.SLKSCRB_44:getHeight(self.title.text)

    self.title.x = windowsWidth / 2 - titleWidth / 2
    self.title.y = titleHeight/2

    self.body.text = [[
Made by:
Antonio Valentino
        
Created with:
LOVE (http://love2d.org)
        
Edit with:
Visual Studio Code 1.59.1
        
Hosted by:
https://github.com/antvale
        ]]
    self.body.x = 0
    self.body.y = self.title.y*2 +
                  titleHeight
    self.body.limit = windowsWidth
    self.body.align = "center"

end

function Menu:enter(previous)

     -- Create the list of the buttons for the menu
     --[[ Replaced by SUIT framework
     self.buttons = {
        MenuButton(100,windowsHeight-50,"Play"),
        MenuButton(windowsWidth-200,windowsHeight-50,"Exit")
    }
    ]]--

    -- set the callbacks functions to handle the button events
    --[[ Replaced by SUIT framework
    self.buttons[1].callback = function ()
        print ("Button 1 switch game: ")
    end

    self.buttons[2].callback = function ()
        print ("Button 2 switch game: ")
        love.event.quit()
    end
    --]]
end

-- required by SUIT Framework
function Menu:update(dt)
    -- create two buttons: start to play and exit to game
    if suit.Button("Play", 100, windowsHeight-50, 100,30).hit then
		print("goto next level!")
	elseif suit.Button("Exit", windowsWidth-200,windowsHeight-50, 100,30).hit then
        love.event.quit()
    end
end

function Menu:leave()
end

function Menu:draw()
    love.graphics.setFont(PROPS.ASSETS.FONTS.SLKSCRB_44)
    love.graphics.print(self.title.text,self.title.x, self.title.y)

    love.graphics.setFont(PROPS.ASSETS.FONTS.SLKSCRB_24)
    love.graphics.printf(self.body.text, self.body.x,self.body.y,
                         self.body.limit , self.body.align)

    suit.draw()
    --[[ Replace by SUIT framework
    for i,button in ipairs(self.buttons) do
        button:draw()
    end
    ]]--
end
--[[ Replace by SUIT framework
function Menu:mousereleased(x, y, button)
    for i,b in ipairs(self.buttons) do
        b:mousereleased(x, y, button)
    end
end
]]--

return Menu
