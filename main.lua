dofile("areas.lua")
background = gui.createcanvas(1920, 1080)

area_static = memory.readbyte(0x03000BF4)

for i=1,#area_table do
  if memory.readbyte(0x03000BF4) == area_table[i] then
    background.Clear(0x000000FF)
    background.DrawImage("backgrounds/" .. area_static .. ".png", 0, 0)
    background.Refresh()
  end
end

while true do

area_current = memory.readbyte(0x03000BF4)

if area_static ~= area_current then
  for i=1,#area_table do
    if memory.readbyte(0x03000BF4) == area_table[i] then
      background.Clear(0x000000FF)
      background.DrawImage("backgrounds/" .. area_current .. ".png", 0, 0)
      background.Refresh()
    end
  end
    area_static = area_current
end


  emu.frameadvance()
end