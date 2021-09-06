--[[
    Base class inherited by all the other ui entities
]]--

local Class = require("lib.hump.class")

UI_PROPS = require ("src.game.config.ui_properties")

local UIEntity = Class{}

function UIEntity:init(x, y, width, height)
    self.x = x
    self.y = y
    self.w = width
    self.h = height
  end
  
  function UIEntity:getRect()
    return self.x, self.y, self.w, self.h
  end

  
  function UIEntity:draw()
    -- Do nothing by default, but we still have to have something to call
  end
  
  function UIEntity:update(dt)
    -- Do nothing by default, but we still have to have something to call
  end
  
  return UIEntity