state = 0b1001
for i in range(20):
    print(state & 1, end = '')
    newbit = (state ^ (state >> 1)) & 1
    state = (state >> 1) | (newbit << 3)
