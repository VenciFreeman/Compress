/*
 * Author
 *   Writtten by Yang Wenxi, optimized by Liu Jianwei

 * School
 *   Shanghai Jiao Tong University

 * Description
 *   This file includes a key function called color_convert, it converts the
 * color space between RGB and YCrCb for DCT. It opens the image, then resizes
 * it by scaling both dimensions by 0.5 (so as to speed up computation time),
 * converts the image color space to YCrCb and expands the image using the
 * function imgExpand. Finally, the cosine matrix required for the DCT operation
 * is evaluated once, for future use.
 *   The convert formats are fixed and can be find in references.

 * References:
 * - https://sistenix.com/rgb2ycbcr.html
 * - https://web.archive.org/web/20180421030430/http://www.equasys.de/colorconversion.html

 */
#include"header.hpp"

// Two simple function to compare the number.
float min(float a, float b) {
	return (a > b) ? b : a;
}

float max(float a, float b) {
	return (a > b) ? a : b;
}

void color_convert(signed short int image[400][400][3], int row, int col, int flag) {

	float val1, val2, val3;
	float ch1, ch2, ch3;
	int i, j;

	for(i = 0; i < row; i++) {
		for(j = 0; j < col; j++) {

			ch1 = (float) image[i][j][0];
			ch2 = (float) image[i][j][1];
			ch3 = (float) image[i][j][2];

			if(flag == 1) {	// Change RGB to YCrCb
				val1 = 0.299 * ch1 + 0.587 * ch2 + 0.114 * ch3;
				val2 = 128 + 0.713 * (ch1 - val1);
				val3 = 128 + 0.564 * (ch3 - val1);
				image[i][j][0] = min( max((int)(val1), 0), 255);
				image[i][j][1] = min( max((int)(val2), 0), 255);
				image[i][j][2] = min( max((int)(val3), 0), 255);
			}

			if(flag == 0) {  // Change YCrCb to RGB
				val1 = ch1 + 1.403 * (ch2 - 128);
				val2 = ch1 - 0.714 * (ch2 - 128) - 0.344 * (ch3 - 128);
				val3 = ch1 + 1.733 * (ch3 - 128);
				image[i][j][0] = min( max((int)(val1), 0), 255);
				image[i][j][1] = min( max((int)(val2), 0), 255);
				image[i][j][2] = min( max((int)(val3), 0), 255);
			}
		}
	}
}
