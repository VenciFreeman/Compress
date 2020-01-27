import cv2
im=cv2.imread("./pic/test1.jpg")
rows1,cols1,ch = im.shape

f=open("./dat/test1_original.dat","w")
f.write(str(rows1)+" "+str(cols1)+"\n")

for i in range(rows1):
	for j in range(cols1):
		f.write(str(im[i][j][0])+" "+str(im[i][j][1])+" "+str(im[i][j][2]))
		f.write("\n")
f.write("\n")
f.close()
