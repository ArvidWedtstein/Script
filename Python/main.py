import time
import board

# For Trinket M0, Gemma M0, ItsyBitsy M0 Express, and ItsyBitsy M4 Express
import adafruit_dotstar
led = adafruit_dotstar.DotStar(board.APA102_SCK, board.APA102_MOSI, 1)
# For Feather M0 Express, Metro M0 Express, Metro M4 Express, and Circuit Playground Express

led.brightness = 0.3

while True:
    time.sleep(0.1)
    led[0] = (255, 191, 0)
    time.sleep(0.1)
    led[0] = (255, 210, 15)
    time.sleep(0.1)
    led[0] = (255, 229, 30)
    time.sleep(0.1)
    led[0] = (255, 248, 42)
    time.sleep(0.1)
    led.brightness = 0.5
    led[0] = (243, 255, 53)
    time.sleep(0.1)
    led.brightness = 0.6
    led[0] = (225, 255, 62)
    time.sleep(0.1)
    led.brightness = 0.7
    led[0] = (206, 255, 69)
    time.sleep(0.1)
    led.brightness = 0.8
    led[0] = (186, 255, 73)
    time.sleep(0.1)
    led.brightness = 0.7
    led[0] = (165, 255, 75)
    time.sleep(0.1)
    led.brightness = 0.6
    led[0] = (143, 255, 73)
    time.sleep(0.1)
    led.brightness = 0.5
    led[0] = (119, 255, 69)
    time.sleep(0.1)
    led.brightness = 0.4
    led[0] = (93, 255, 62)
    time.sleep(0.1)
    led.brightness = 0.3
    led[0] = (65, 255, 53)
    time.sleep(0.1)
    led.brightness = 0.2
    led[0] = (42, 255, 49)
    time.sleep(0.1)
    led.brightness = 0.1
    led[0] = (30, 255, 55)
    time.sleep(0.1)
    led.brightness = 0.2
    led[0] = (15, 255, 60)
    time.sleep(0.1)
    led.brightness = 0.3
    led[0] = (0, 255, 64)
    time.sleep(0.1)
    led.brightness = 0.4
    led[0] = (15, 255, 91) 
    time.sleep(0.1)
    led.brightness = 0.5
    led[0] = (30, 255, 116)
    time.sleep(0.1)
    led.brightness = 0.6
    led[0] = (42, 255, 142)
    time.sleep(0.1)
    led.brightness = 0.7
    led[0] = (53, 255, 166)
    time.sleep(0.1)
    led.brightness = 0.8
    led[0] = (62, 255, 189)
    time.sleep(0.1)
    led.brightness = 0.7
    led[0] = (69, 255, 212)
    time.sleep(0.1)
    led.brightness = 0.6
    led[0] = (73, 255, 233)
    time.sleep(0.1)
    led.brightness = 0.5
    led[0] = (75, 255, 255)
    time.sleep(0.1)
    led.brightness = 0.4
    led[0] = (73, 233, 255)
    time.sleep(0.1)
    led.brightness = 0.3
    led[0] = (69, 212, 255)
    time.sleep(0.1)
    led.brightness = 0.2
    led[0] = (62, 189, 255)
    time.sleep(0.1) 
    led.brightness = 0.1
    led[0] = (53, 166, 255)
    time.sleep(0.1)
    led.brightness = 0.2
    led[0] = (42, 142, 255)
    time.sleep(0.1)
    led.brightness = 0.3
    led[0] = (30, 116, 255)
    time.sleep(0.1)
    led.brightness = 0.4
    led[0] = (15, 91, 255)
    time.sleep(0.1)
    led.brightness = 0.5
    led[0] = (0, 64, 255)
    time.sleep(0.1)
    led.brightness = 0.6
    led[0] = (32, 88, 255)
    time.sleep(0.1)
    led.brightness = 0.7
    led[0] = (64, 112, 255)
    time.sleep(0.1)
    led.brightness = 0.8
    led[0] = (96, 135, 255)
    time.sleep(0.1)
    led.brightness = 0.7
    led[0] = (128, 159, 255)
    time.sleep(0.1)
    led.brightness = 0.6
    led[0] = (159, 183, 255)
    time.sleep(0.1)
    led.brightness = 0.5
    led[0] = (191, 207, 255)
    time.sleep(0.1)
    led.brightness = 0.4
    led[0] = (223, 231, 255)
    time.sleep(0.1)
    led.brightness = 0.3
    led[0] = (255, 255, 255)
    time.sleep(0.1)
    led.brightness = 0.2
    led[0] = (255, 247, 223)
    time.sleep(0.1)
    led.brightness = 0.1
    led[0] = (255, 239, 191)
    time.sleep(0.1)
    led.brightness = 0.2
    led.brightness = 0.3
    led[0] = (255, 231, 159)
    time.sleep(0.1)
    led.brightness = 0.5
    led[0] = (255, 223, 128)
    time.sleep(0.1)
    led.brightness = 0.7
    led[0] = (255, 215, 96)
    time.sleep(0.1)
    led[0] = (255, 207, 64)
    time.sleep(0.1)
    led.brightness = 0.9
    led[0] = (255, 199, 32)
    time.sleep(0.1)
    led.brightness = 1.1
    led[0] = (255, 191, 0)
    time.sleep(0.1)
    led.brightness = 0.9
    led[0] = (255, 180, 15)
    time.sleep(0.1)
    led.brightness = 0.7
    led[0] = (255, 168, 30)
    time.sleep(0.1)
    led.brightness = 0.5
    led[0] = (255, 156, 42)
    time.sleep(0.1)
    led.brightness = 0.5
    led[0] = (255, 143, 53)
    time.sleep(0.1)
    led.brightness = 0.4
    led[0] = (255, 128, 62)
    time.sleep(0.1)
    led[0] = (255, 113, 69)
    time.sleep(0.1)
    led[0] = (255, 95, 73)
    time.sleep(0.1)
    led[0] = (255, 75, 75)
    time.sleep(0.1)
    led[0] = (255, 73, 95)
    time.sleep(0.1)
    led[0] = (255, 69, 113)
    time.sleep(0.1)
    led[0] = (255, 62, 128)
    time.sleep(0.1)
    led[0] = (255, 53, 143)
    time.sleep(0.1)
    led[0] = (255, 42, 156)
    time.sleep(0.1)
    led[0] = (255, 30, 168)
    time.sleep(0.1)
    led[0] = (255, 15, 180)
    time.sleep(0.1)
    led[0] = (255, 0, 191)
    time.sleep(0.1)
    led[0] = (255, 15, 210)
    time.sleep(0.1)
    led[0] = (255, 32, 199)
    time.sleep(0.1)
    led[0] = (255, 47, 188)
    time.sleep(0.1)
    led[0] = (255, 61, 176)
    time.sleep(0.1)
    led[0] = (255, 73, 163)
    time.sleep(0.1)
    led[0] = (255, 83, 150)
    time.sleep(0.1)
    led[0] = (255, 91, 135)
    time.sleep(0.1)
    led[0] = (255, 96, 117)
    time.sleep(0.1)
    led[0] = (255, 97, 97)
    time.sleep(0.1)
    led[0] = (255, 117, 96)
    time.sleep(0.1)
    led[0] = (255, 135, 91)
    time.sleep(0.1)
    led[0] = (255, 150, 83)
    time.sleep(0.1)
    led[0] = (255, 163, 73)
    time.sleep(0.1)
    led[0] = (255, 176, 61)
    time.sleep(0.1)
    led[0] = (255, 188, 47)
    time.sleep(0.1)
    led[0] = (255, 199, 32)
    time.sleep(0.1)
    led[0] = (255, 210, 15)
    led[0] = (255, 255, 255)
    led[0] = (255, 0, 0)	
