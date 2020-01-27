from PIL import Image
import re
import cv2

x = 392
y = 392
image = Image.new("RGB",(x,y))
f = open('./dat/test1_compressed.dat')

for i in range(0,x):
    for j in range(0,y):
        l = f.readline()
        r = l.split(" ")
        image.putpixel((j,i),(int(r[0]),int(r[1]),int(r[2])))
image.save('./pic/test1_temp.jpg')

#########################################################################

im=cv2.imread("./pic/test1_temp.jpg")
rows1,cols1,ch = im.shape

f=open("./dat/test1_temp.dat","w")
f.write(str(rows1)+" "+str(cols1)+"\n")

for i in range(rows1):
	for j in range(cols1):
		f.write(str(im[i][j][0])+" "+str(im[i][j][1])+" "+str(im[i][j][2]))
		f.write("\n")
f.write("\n")
f.close()

#########################################################################

x = 392
y = 392
image = Image.new("RGB",(x,y))
f = open('./dat/test1_temp.dat')
f.readline()

for i in range(0,x):
    for j in range(0,y):
        l = f.readline()
        r = l.split(" ")
        image.putpixel((j,i),(int(r[0]),int(r[1]),int(r[2])))
image.save('./pic/test1_result.jpg')
