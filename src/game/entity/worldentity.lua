--[[
    Base class inherited by all the other game entities
]]--

local Class = require("lib.hump.class")

WorldEntity = Class{}

function WorldEntity:init(world, x, y, w, h)
    self.world = world
    self.x = x
    self.y = y
    self.w = w
    self.h = h
  end
  
  function WorldEntity:getRect()
    return self.x, self.y, self.w, self.h
  end
  
  function WorldEntity:draw()
    -- Do nothing by default, but we still have to have something to call
  end
  
  function WorldEntity:update(dt)
    -- Do nothing by default, but we still have to have something to call
  end
  
  return WorldEntity