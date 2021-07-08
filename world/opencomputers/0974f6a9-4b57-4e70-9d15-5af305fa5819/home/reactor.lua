local component = require("component")

local reacteur = component.br_reactor

local max_energy = reacteur.getEnergyCapacity()

local function niveau()

  local energy = reacteur.getEnergyStored()
  pourcentage = (energy * 100) / max_energy

end

while true do

  niveau()
  
  if pourcentage < 3 and reacteur.getActive() == false then
    reacteur.setActive(true)

  elseif pourcentage >=85 and reacteur.getActive() == true then
    reacteur.setActive(false)

  end
  os.sleep(1)

end