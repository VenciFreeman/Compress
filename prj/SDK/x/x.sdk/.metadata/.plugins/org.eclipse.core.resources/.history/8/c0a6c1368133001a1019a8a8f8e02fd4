/*
 * Author
 *   Writtten by Luo Tian, optimized by Liu Jianwei

 * School
 *   Shanghai Jiao Tong University

 * Description
 *   This file includes some other functions of this algorithms, includes DCT. It's used
 * to perform the DCT and the Inverse-DCT (IDCT). The formula for the forward and inverse
 * DCTs can be found in references.
 *   It will return a matrix that contains the entry for entry product of the quantized
 * matrix with the quantization values.

 * References:
 * - https://en.wikipedia.org/wiki/JPEG
 * - http://stackoverflow.com/questions/29215879/how-can-i-generalize-the-quantization-
 * matrix-in-jpeg-compression

 */
#include"header.hpp"

/*
 * This function calculate the quantization for a given quality requirement.
 */
void calc_quant(float matrix[8][8], int quality) {

	int i,j;
	float def[8][8] = {  // Define base quantization matrix
		{16,  11,  10,  16,  24,  40,  51,  61} ,
		{12,  12,  14,  19,  26,  58,  60,  55} ,
		{14,  13,  16,  24,  40,  57,  69,  56} ,
		{14,  17,  22,  29,  51,  87,  80,  62} ,
		{18,  22,  37,  56,  68, 109, 103,  77} ,
		{24,  35,  55,  64,  81, 104, 113,  92} ,
		{49,  64,  78,  87, 103, 121, 120, 101} ,
		{72,  92,  95,  98, 112, 100, 103,  99}
	};
	float S;
	if (quality < 50)
		S = (5000 / (float) (quality));
	else
		S = 200 - 2 * quality;
	for (i = 0; i < 8; i++)
	{
		for (j = 0; j < 8; j++)
			matrix[i][j] = (float)((S * def[i][j] + 50) / 100.0);
	}
}


void quantize(float matrix[8][8], float G[8][8]) {

	int i,j;

	for (i = 0; i < 8; i++)
		for(j = 0; j < 8; j++)
			G[i][j] = (int)(G[i][j] / (float)matrix[i][j]) * matrix[i][j];
}

float al(int x) {
	if(x==0)
		return 1.0 / sqrt(2.0);
	else
		return 1.0;
}

float singleGUV(float subimg[8][8], int u, int v, int inv, float cosMat[8][8]) {

	float G=0;
	int x,y;

	for(x = 0; x < 8; x++) {
		for(y = 0; y < 8; y++) {
			if(inv == 0)
				G += 0.25 * al(u) * al(v) * subimg[x][y] * cosMat[u][x] * cosMat[v][y];
			else
				G+=0.25 * al(x) * al(y) * subimg[x][y] * cosMat[x][u] * cosMat[y][v];
		}
	}
	return G;
}

void shift128(float subimg[8][8]) {

	int i,j;

	for(i = 0; i < 8; i++) {
		for(j = 0; j < 8; j++) {
			subimg[i][j] -= 128;
		}
	}
}

void DCT_8x8_2D(float G[8][8], float subimg[8][8], int shift, int inv, float cosMat[8][8])
{
	if(shift == 1)
		shift128(subimg);
	int i,j;

	for(i = 0; i < 8; i++)
		for(j = 0; j < 8; j++)
			G[i][j] = singleGUV(subimg, i, j, inv, cosMat);
}



/*
 * This function will evaluate the cosine matrix required for DCT.
 */
void evalCos(float cosMatrix[8][8]) {

	int i,j;

	for (i = 0; i < 8; i++)
		for (j = 0; j < 8; j++)
			cosMatrix[i][j] = cos(i * PI * (2 * j + 1) / 16.0);
}



