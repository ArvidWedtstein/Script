print("Put Marble Bricks in slot 1")
print("Put Basalt Bricks in slot 2")
print("Put spruce log in slot 3")
print("Put spruce planks in slot 4")
turtle.select(1)
turtle.up()

function wall()
turtle.dig()
turtle.forward()
turtle.select(3)
turtle.digUp()
turtle.digDown()
turtle.placeUp()
turtle.placeDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.select(1)
turtle.placeUp()
turtle.placeDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.placeUp()
turtle.placeDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.placeUp()
turtle.placeDown()
turtle.dig()
turtle.forward()
turtle.select(3)
turtle.digUp()
turtle.digDown()
turtle.placeUp()
turtle.placeDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.select(1)
turtle.placeUp()
turtle.placeDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.placeUp()
turtle.placeDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.placeUp()
turtle.placeDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.select(3)
turtle.placeUp()
turtle.placeDown()
turtle.back()
turtle.place()
turtle.back()
turtle.select(1)
turtle.place()
turtle.back()
turtle.place()
turtle.back()
turtle.place()
turtle.back()
turtle.select(3)
turtle.back()
turtle.select(1)
turtle.place()
turtle.back()
turtle.place()
turtle.back()
turtle.place()
turtle.back()
turtle.select(3)
turtle.place()
end

function rom()
turtle.turnRight()
turtle.forward()
turtle.turnLeft()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.dig()
turtle.forward()
turtle.digUp()
turtle.digDown()
turtle.down()
turtle.select(4)
turtle.digDown()
turtle.placeDown()
turtle.back()
turtle.digDown()
turtle.placeDown()
turtle.back()
turtle.digDown()
turtle.placeDown()
turtle.back()
turtle.digDown()
turtle.placeDown()
turtle.back()
turtle.digDown()
turtle.placeDown()
turtle.back()
turtle.digDown()
turtle.placeDown()
turtle.back()
turtle.digDown()
turtle.placeDown()
turtle.back()
turtle.digDown()
turtle.placeDown()
turtle.back()
turtle.digDown()
turtle.placeDown()
turtle.back()
end

wall()
print("Wall Completed")
rom()
rom()
rom()
rom()
rom()
turtle.turnRight()
turtle.forward()
turtle.turnLeft()
wall()
print("Wall Completed")


