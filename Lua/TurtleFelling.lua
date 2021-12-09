while turtle.detect() do
	turtle.dig()
	print("Felling...")
	turtle.up()
	print("Going up...")
end
while not turtle.detect() and not turtle.detectDown() do
	turtle.down()
	print("Going down...")
end
print("Felling Complete")
os.sleep(1)
print("Place saplings in slot 16")
os.sleep(1)
turtle.select(sapling)
turtle.place()