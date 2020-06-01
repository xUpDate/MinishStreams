while true do
    gui.pixelText(2,2, "Area ID: 0x" .. bizstring.hex(memory.readbyte(0x03000BF4)))

  emu.frameadvance()
end