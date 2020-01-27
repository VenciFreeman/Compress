/*
 * Author
 *   Writtten by Yang Wenxi, optimized by Liu Jianwei

 * School
 *   Shanghai Jiao Tong University

 * Description
 *   This file includes a key function called imgExpand, it expands the rows
 * in the image and returns the new row number when flag equals to 0, or
 * expands the columns and returns new column number when flag equals to 1.

 * Note
 *   Since the DCT takes in only 8¡Á8 blocks of the image, and hence, the 2-D
 * image needs to be made 8M x 8N, that's what this function aims to do. Both
 * the rows and columns need to be padded to increase their size to the
 * nearest multiple of 8. This is done by repeating the last row/column until
 * the above condition is satisfied. (From wikipedia)

 */
#include"header.hpp"
int imgExpand(signed short int image[400][400][3], int row, int col, int flag) {
#pragma HLS ARRAY_PARTITION variable=image dim=3
// 400 limits the size of the input image which is determined by the resource of Zynq.

	int i,j,k;  // Loop variables
	int val;

	if(flag == 0) {	// Need to expand rows

		if(row > 392) {	// Expands it to nearest multiple of 8
			for(i = row; i < 400; i++)

#pragma HLS UNROLL
for(j = 0; j < col; j++)
					for(k = 0; k<3; k++)
						image[i][j][k] = image[row - 1][j][k];

			return 400;
		}

		else {
			if(row % 8 != 0)  // Not the multiples of 8
				val = row + 8 - row % 8;  // Expand to multiple of 8
			else
				val = row;

			for(i = row; i < val; i++)  // Expand to multiple of 8

#pragma HLS UNROLL
for(j = 0; j < col; j++)
					for(k = 0; k < 3; k++)
						image[i][j][k] = image[row - 1][j][k];

			return val;
		}
	}

	else {  // Need to expand rows
		if(col > 392) {	// Expands it to nearest multiple of 8

			for(i = 0; i < row; i++)  // Expand to multiple of 8

#pragma HLS UNROLL
for(j = col; j < 400; j++)
					for(k = 0; k < 3; k++)
						image[i][j][k] = image[i][col - 1][k];

			return 400;
		}
		else {
			int val;
			if(col % 8 != 0)   // Not the multiple of 8
				val = col + 8 - col % 8;
			else
				val = col;

			for(i=0; i < row; i++)  // Expand to multiple of 8

#pragma HLS UNROLL
for(j = col; j < val; j++)
					for(k = 0; k < 3; k++)
						image[i][j][k] = image[i][col - 1][k];

			return val;
		}
	}
}
