--[[
    Property module containing all the configuration and utilities to help handling
    some basic features
]]--
return {
    GAME = {
        CAMERA = {
            ZOOM = 2
         }
     },
     ASSETS = {
         FONTS = {
             DROIDLOVER_10 = love.graphics.newFont("assets/fonts/droidlover.ttf",10),
             SLKSRC = love.graphics.newFont("assets/fonts/slkscr.ttf",10),
             SLKSCRB_16 = love.graphics.newFont("assets/fonts/slkscrb.ttf", 16),
             SLKSCRB_24 = love.graphics.newFont("assets/fonts/slkscrb.ttf", 24),
             SLKSCRB_44 = love.graphics.newFont("assets/fonts/slkscrb.ttf", 44),
             SLKSCRB_32 = love.graphics.newFont("assets/fonts/slkscrb.ttf", 32),
             SLKSCRB_64  = love.graphics.newFont("assets/fonts/slkscrb.ttf", 64)
         }
     }
}

--[[
function PROPS:dumpTable(table, indent) 
    indent = indent or 0
 
    local toprint = string.rep(" ", indent) .. "{\r\n"
    indent = indent + 2 
    
    for k, v in pairs(tbl) do
        toprint = toprint .. string.rep(" ", indent)
        if (type(k) == "number") then
            toprint = toprint .. "[" .. k .. "] = "
        elseif (type(k) == "string") then
            toprint = toprint  .. k ..  "= "   
        end
        
        if (type(v) == "number") then
            toprint = toprint .. v .. ",\r\n"
        elseif (type(v) == "string") then
            toprint = toprint .. "\"" .. v .. "\",\r\n"
        elseif (type(v) == "table") then
            toprint = toprint .. dumpTable(v, indent + 2) .. ",\r\n"
        else
            toprint = toprint .. "\"" .. tostring(v) .. "\",\r\n"
        end
  end
    toprint = toprint .. string.rep(" ", indent-2) .. "}"
  return toprint
end
]]--
--return PROPS

