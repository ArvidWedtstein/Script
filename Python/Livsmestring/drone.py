from djitellopy import Tello
import cv2
import matplotlib.pyplot as plt
import numpy as np



def land_drone():
    # tello.streamoff()
    tello.land()
    # if tello.is_flying():
    #     land_drone()
    return

def drone_camera(): 
    tello.streamon()
    frame_read_camera = tello.get_frame_read()
    return frame_read_camera


def take_img(frame):
    cv2.imwrite("img.png", frame.frame)
    return



tello = Tello()
tello.connect(False)
print('connected')

tello.streamon()
frame_read = tello.get_frame_read()

tello.takeoff()

tello.move_forward(10)
# tello.flip_forward()

cv2.imwrite("img.png", frame_read.frame)

tello.streamoff()
# take_img(frame_read)
#( tello.rotate_clockwise(90)


# print("Battery: " + str(tello.query_battery()) + "%")

# print(tello.query_temperature())



dronedata = (2, 0, 3)
menStd = (0, 0, 0)

ind = np.arange(len(dronedata))    # the x locations for the groups
fig, ax = plt.subplots()

p1 = ax.bar(ind, dronedata, 0.35, yerr=menStd, label='Battery', color="red")

ax.axhline(0, color='grey', linewidth=0.8)
ax.set_ylabel('Scores')
ax.set_title('Drone Stats')
ax.set_xticks(ind, labels=['Battery', 'Flighttime', 'Temp'])
ax.legend()

# Label with label_type 'center' instead of the default 'edge'
ax.bar_label(p1, label_type='center')

# plt.show()



land_drone()

