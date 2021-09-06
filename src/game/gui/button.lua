--[[
    TODO: replace this simple button with a UI framework
]]--
local Class = require("lib.hump.class")
local UIEntity = require("src.game.entity.uientity")

local Button = Class{__includes=UIEntity}

function Button:init(x, y, width, height, text, font)
    UIEntity(x,y,width,height)
    self.x = x
    self.y = y

    self.width = width
    self.height = height

    self.text = text
    self.font = font
end

function Button:draw()
    local color = { love.graphics.getColor() }
    local lw = love.graphics.getLineWidth()

    -- border size
    love.graphics.setLineWidth(1)

    --love.graphics.setColor(160, 160, 160)
    love.graphics.setColor(139, 0, 0)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)

    --love.graphics.setColor(64, 64, 64)
    --love.graphics.rectangle("line", self.x + 1, self.y + 1, self.width - 2, self.height - 2)

    -- love.graphics.setColor(0, 0, 0)
    love.graphics.setColor(64, 64, 64)
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)

    love.graphics.setColor(0, 0, 0)
    love.graphics.setFont(self.font)
    love.graphics.printf(self.text, self.x + 5, self.y + 5, self.width - 10, "center")
    
    love.graphics.setColor(color)
    love.graphics.setLineWidth(lw)
end

function Button:mousereleased(x, y, button)
    -- starting from love 0.10.0 in the button parm will arrive an integer 1 
    if button == 1 and
       self.x <= x and x <= self.x + self.width and
       self.y <= y and y <= self.y + self.height then
        if self.callback then self.callback() end
    end
end

return Button






