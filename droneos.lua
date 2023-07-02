local modem = component.proxy(component.list("modem")())
modem.open(1234)

local droneAddress = component.list("drone")()
local drone = component.proxy(droneAddress)

while true do
  local _, _, sender, _, _, message = computer.pullSignal("modem_message")
  if message then
    if message == "forward" then
      drone.move(1, 0, 0)
    elseif message == "backward" then
      drone.move(-1, 0, 0)
    elseif message == "up" then
      drone.move(0, 1, 0)
    elseif message == "down" then
      drone.move(0, -1, 0)
    elseif message == "left" then
      drone.move(0, 0, -1)
    elseif message == "right" then
      drone.move(0, 0, 1)
    end
  end
end
