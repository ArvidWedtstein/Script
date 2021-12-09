mon = peripheral.wrap("left") -- replace "left" with the side your monitor is on
mon.setTextScale(5) -- change 5 to any any number between 0.5 and 5 to change the size of the text
while true do
     mon.clear()
     mon.setCursorPos(1,1)
     local nTime = os.time()
     mon.write(textutils.formatTime(nTime,false))
     sleep(1)
end