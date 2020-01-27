#include "header.hpp"
//#include <windows.h>


int main() {
	FILE *fp;
	char buf[bufSize];
	int rows, cols;
	int i,j;
	signed short int image [400][400][3];
	float cosMatrix[8][8];
	float subimgY[8][8], subimgC1[8][8], subimgC2[8][8];
	float quant_matrix[8][8];

	fp = fopen("C:/Users/Venci/Videos/Project/result_test/dat/test1_original.dat","r");

	//Successfully opened the file
	//line 1 has the rows and columns of the input matrix

	fgets(buf, sizeof(buf),fp);
	buf[strlen(buf)-1]='\0';	//removes the newline fgets stores
	sscanf(buf, "%d %d", &rows, &cols);

	//Code to read the whole file and obtain the image
	for(i=0; i<rows; i++)
	{
		for(j=0; j<cols; j++)
		{
			fgets(buf, sizeof(buf),fp);
			buf[strlen(buf)-1]='\0';	//removes the newline fgets stores
			sscanf(buf, "%d %d %d", &image[i][j][0], &image[i][j][1], &image[i][j][2]);
		}
	}

	calc_quant(quant_matrix,10);	//create quantization matrix
	color_convert(image,rows,cols,1);		//RGB to YCrCb

	int rows1 = imgExpand(image, rows, cols, 0);		//pads rows
	int cols1 = imgExpand(image, rows, cols, 1);		//pads columns

	//printf("%d %d, %d %d\n", rows, cols, rows1, cols1);

	evalCos(cosMatrix);

	int rowval, colval;
	float DCTY[8][8], DCTC1[8][8], DCTC2[8][8];
	float finalY[8][8], finalC1[8][8], finalC2[8][8];
	for(i=0; i<rows1; i+=8)
	{
		for(j=0; j<cols1; j+=8)
		{
			//evaluate the Y,Cr and Cb components of the sub-image
			for(rowval=i; rowval<i+8; rowval++)
			{
				for(colval=j; colval<j+8; colval++)
				{
					subimgY[rowval-i][colval-j]=image[rowval][colval][0];
					subimgC1[rowval-i][colval-j]=image[rowval][colval][1];
					subimgC2[rowval-i][colval-j]=image[rowval][colval][2];
				}
			}
			//DCT Step
			DCT_8x8_2D(DCTY,subimgY,1,0,cosMatrix);		//shift is TRUE, invert is FALSE
			DCT_8x8_2D(DCTC1,subimgC1,1,0,cosMatrix);
			DCT_8x8_2D(DCTC2,subimgC2,1,0,cosMatrix);

			//Quantization Step
			quantize(quant_matrix,DCTY);
	 		quantize(quant_matrix,DCTC1);
			quantize(quant_matrix,DCTC2);

			//Inverse DCT Step
			DCT_8x8_2D(finalY,DCTY,0,1,cosMatrix);		//shift is FALSE, invert is TRUE
			DCT_8x8_2D(finalC1,DCTC1,0,1,cosMatrix);
			DCT_8x8_2D(finalC2,DCTC2,0,1,cosMatrix);

			//evaluate the Y,Cr and Cb components of the sub-image
			for(rowval=i; rowval<i+8; rowval++)
			{
				for(colval=j; colval<j+8; colval++)
				{
					image[rowval][colval][0]=finalY[rowval-i][colval-j]+128;
					image[rowval][colval][1]=finalC1[rowval-i][colval-j]+128;
					image[rowval][colval][2]=finalC2[rowval-i][colval-j]+128;
				}
			}
		}
	}

	color_convert(image,rows,cols,0);		//YCrCb to RGB
	
    FILE *fp1;
    if ((fp1 = fopen("C:/Users/Venci/Videos/Project/result_test/dat/test1_compressed.dat", "w")) == NULL) {
        printf("\nCannot open file since it's null.");
        exit(EXIT_FAILURE);
    }
	for(i = 0; i < rows; i++)
		for(j = 0; j < cols; j++)
            fprintf(fp1, "%hu %hu %hu\n",image[i][j][0],image[i][j][1],image[i][j][2]);

    fclose(fp1);
	return 0;
}

