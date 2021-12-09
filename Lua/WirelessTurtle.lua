rednet.open("back", 50)
while true do
term.clear()
term.setCursorPos(1,1)
write(Command: ")
input = read()
rednet.broadcast(input)
end



rednet.open("left", 50)  -- Left is the side of the modem and 50 is the channel were using
while true do
id, msg = rednet.receive()
print(msg)                                                                -- This will print the message you have send from the pocket computer onto the turtle screen
if msg == "Tunnel" then                                            -- If you send the message "Tunnel" the turtle will do this(You want to write your Tunnel code into here)
for i=20 do
   turtle.dig()
   turtle.digUp()
   turtle.forward()
elseif msg == "torch" then
   turtle.select(1)
   turtle.place()
end
end