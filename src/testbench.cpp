#include "header.hpp"
#include <windows.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <stdlib.h>

int main() {
	int i, j, k, ret;
	signed short int array[128][128][3];
	int *arrayptr = (int *) array;

	for (i = 0; i < 128; i++) {
		for (j = 0; j < 128; j++) {
			for (k = 0; k < 3; k++)
				array[i][j][k] = (i + j + k) % 256;
		}
	}

    init_platform();
    int x1, y1, z1;
    int x2, y2, z2;
    int x3, y3, z3;
    int x4, y4, z4;

    x1 = 30; y1 = 25; z1 = 2;
    x2 = 92; y2 = 21; z2 = 0;
    x3 =  8; y3 = 77; z3 = 1;
    x4 = 12; y4 =  1; z4 = 0;

    XScuTimer_Config *ConfigPtr;
    XScuTimer *TimerInstancePtr = &Timer;

    <Xdefine1> xrun;
	<Xdefine1>* xdefine1ptr = &xrun;
	<Xdefine1>_Initialize(xdefine1ptr, 0);

	print("\r\nRunning HW-SW comparison\n\r");

	<Xdefine2> <Xdefine2>;
	<Xdefine2>* xptr = &<Xdefine2>;
	<Xdefine2>_Initialize(xptr,0);
	<Xdefine2>_EnableAutoRestart(xptr);
	<Xdefine2>_Start(xptr);

	int start=<Xdefine2>_Get_val_r(xptr);
	define1(array);
	
	int stop = <Xdefine2>_Get_val_r(xptr);

	xil_printf("\r\nTook %d cycles\n\r",(stop - start));
	xil_printf("\r\nRun1: %d %d %d %d \r\n", array[x1][y1][z1], array[x2][y2][z2], array[x3][y3][z3], array[x4][y4][z4]);

	start = <Xdefine2>_Get_val_r(xptr);
	ret = <Xdefine1>_Write_image_r_Words(xdefine1ptr, 0, arrayptr, 128 * 128 * 3);

	int t1 = <Xdefine2>_Get_val_r(xptr);
	<Xdefine1>_Start(xdefine1ptr);

	int ts = <Xdefine2>_Get_val_r(xptr);
	while ( !<Xdefine1>_IsDone(xdefine1ptr) )
		;

	int t2 = <Xdefine2>_Get_val_r(xptr);

	xil_printf("\r\nTook %d (%d + %d + %d) cycles \n\r", t2 - start, t1 - start, ts - t1, t2 - ts);
	xil_printf("\r\nRun2: %d %d %d %d \r\n", array[x1][y1][z1], array[x2][y2][z2], array[x3][y3][z3], array[x4][y4][z4]);

	cleanup_platform();

	return 0;
}

