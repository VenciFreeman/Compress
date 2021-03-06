#ifndef JPEG_HLS_HPP_INCLUDED
#define JPEG_HLS_HPP_INCLUDED

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

#define bufSize 50
#define PI 3.1415926535897932384626

float al(int x);
float min(float a, float b);
float max(float a, float b);

/*
 * @brief shift128
 * @param shuimg[][]
 * @return                  N/A
 */
void shift128(float subimg[8][8]);

/*
 * @brief evalCos			Evaluate the cosine matrix required for DCT
 * @param cosMatrix[][]		Cosine matrix
 * @return                  N/A
 */
void evalCos(float cosMatrix[8][8]);

/*
 * @brief calc_quant		Calculate the quantization for a given quality requirement
 * @param matrix[][]		Input quantize matrix
 * @param quality			Quality factor
 * @return                  N/A
 */
void calc_quant(float matrix[8][8], int quality);

/*
 * @brief shift128
 * @param matrix[][]		Input quantize matrix
 * @param G[][]
 * @return                  N/A
 */
void quantize(float matrix[8][8], float G[8][8]);

/*
 * @brief imgExpand  		Expand the image size to multiple of 8 for DCT
 * @param image[][][]       The parameters of image
 * @param row         		Row number of image
 * @param col           	Column number of image
 * @param flag           	Flag to identify row and column
 * @return                  The row/column number after expand
 */
int imgExpand(signed short int image[400][400][3], int row, int col, int flag);

/*
 * @brief shift128
 * @param shuimg[][]
 * @return                  N/A
 */
float singleGUV(float subimg[8][8], int u, int v, int inv, float cosMat[8][8]);

/*
 * @brief shift128
 * @param shuimg[][]
 * @return                  N/A
 */
void DCT_8x8_2D(float G[8][8], float subimg[8][8], int shift, int inv, float cosMat[8][8]);

/*
 * @brief color_convert		Converts the color space between RGB and YCrCb
 * @param image[][][]		The parameters of image
 * @param row         		Row number of image
 * @param col           	Column number of image
 * @param flag				Flag to identify row and column
 * @return                  N/A
 */
void color_convert(signed short int image[400][400][3], int row, int col, int flag);

#endif // JPEG_HLS_HPP_INCLUDED
