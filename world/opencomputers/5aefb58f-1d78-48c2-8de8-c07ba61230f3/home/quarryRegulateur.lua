--Made by fabirot0--
--V 1.0--
--05.06.2021--


component = require("component")
sides = require("sides")


rs = component.redstone

while true do
  
  if rs.getInput(sides.south) > 0 then
  
    rs.setOutput(sides.west,15)
    os.sleep(20)
    
  else
  
    rs.setOutput(sides.west,0)
    
  end
  
  os.sleep(0.1)
  
end