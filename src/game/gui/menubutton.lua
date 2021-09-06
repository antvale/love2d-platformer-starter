local Class = require("lib.hump.class")
local Button = require ("src.game.gui.button")

local MenuButton = Class {__includes = Button}

function MenuButton:init(x, y,text)

    Button.init(self,x,y,
                UI_PROPS.MENU_BUTTON.WIDTH,
                UI_PROPS.MENU_BUTTON.HEIGHT,
                text,
                UI_PROPS.MENU_BUTTON.FONT)
end

return MenuButton