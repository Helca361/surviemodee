-- Premiers essai LUA --
-- Boucles + Variables + Fonctions --
-- 06.06.2021 --

local component = require("component")
local sides = require("sides")

local rs = component.redstone


local function sortie_east(s)
  rs.setOutput(sides.east,s)
end


while true do

  local in_west = rs.getInput(sides.west)

  if in_west == 15 then

     sortie_east(7)

  elseif in_west == 14 then
  
     sortie_east(7)

  else
   
     sortie_east(0)

  end

  os.sleep(0.5)

end