turtle.up()
function mine()
for x=1,20 do
	turtle.dig()
	turtle.forward()
	turtle.digUp()
	turtle.digDown()
end
turtle.turnRight()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.turnRight()
for y=1,19 do
	turtle.dig()
	turtle.forward()
	turtle.digUp()
	turtle.digDown()
end
turtle.turnLeft()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.turnLeft()
end
for h=1,10 do
 mine()
end