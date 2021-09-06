--[[
    This module implements the menu of the game that's the first stage of the game.
    The module comes with a simple dummy menu that you can customize as you expect

    Remember to pass this module to first game state switch
]]--
local Gamestate = require("lib.hump.gamestate")
local suit = require 'lib.suit'
local Play = require "src.game.stages.play"

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
end

-- required by SUIT Framework
function Menu:update(dt)
    -- check whether the current game state is Menu (verify if actual required!!!)
    if (Gamestate:current()==Menu) then
        -- create two buttons: start to play and exit to game
        if suit.Button("Play", 100, windowsHeight-50, 100,30).hit then
            Gamestate.switch(Play)
        elseif suit.Button("Exit", windowsWidth-200,windowsHeight-50, 100,30).hit then
            love.event.quit()
        end
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
end

return Menu
