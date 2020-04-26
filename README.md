# Compress
> A simple image compression algorithm written in C++, and embedded implementation on Zynq.

 ![Generic badge](https://img.shields.io/badge/Language-C++-red.svg) [![Generic badge](https://img.shields.io/badge/Hardware-Zynq-orange.svg)](https://github.com/VenciFreeman/ZynqPrj) [![Generic badge](https://img.shields.io/badge/Deadline-Jan_10_2020-yellow.svg)]( https://github.com/VenciFreeman/ZynqPrj) [![Generic badge](https://img.shields.io/badge/Build-Passing-green.svg)]( https://github.com/VenciFreeman/ZynqPrj) [![Generic badge](https://img.shields.io/badge/License-Apache_2.0-blue.svg)]( https://github.com/VenciFreeman/ZynqPrj/blob/master/LICENSE)

## Topic Selection

### Basis

#### Initial Topic

Google [Guetzli]( https://github.com/VenciFreeman/Guetzli ) Image compression open source project.

##### Problem

- Vivado HLS 2016.4 does not support the higher version of the C ++ standard;
- Problems about the code: too many codes need to modify.


##### Solution

Implement a compression algorithm simpler than Guetzli.

#### Final Topic

A simpler image compression algorithm based on Guetzli algorithm.

### Background

#### Image Compression

> The method of representing the image with as little data as possible under the premise of satisfying a certain image quality.
>
> - lossless compression;
> - Lossy compression (Such as JPEG).

##### Algorithm Principle

- There is a lot of redundant information in the image:
  - Correlation between adjacent pixels;
  - Correlation of different color planes or spectral bands;
  - Visual redundancy.
    - The human eye is relatively sensitive to changes in brightness, but relatively insensitive to changes in chromaticity;
    - Relatively sensitive to the edges of objects in high brightness areas, relatively insensitive to internal darkness areas;
    - Some subtle color differences in the high-frequency part are not easy to be perceived by the human eye (main basis).

##### New Research

> The method of further compressing the data contained in JPEG images without modifying the image.

- Applicable when the original image is only available in JPEG format, and its size needs to be reduced for archiving or transmission;
- Standard universal compression tools cannot significantly compress JPEG files;
- DCT coefficients are usually coded using improvements to simple schemes.
  - Not considered:
    - Correlation between the size of adjacent coefficients in the same block;
    - Correlation between the size of the same coefficient in adjacent blocks;
    - Correlation between the size of the same coefficient / block in different channels.

##### DCT Principle 

- Divide the original image into 8 × 8 small blocks;
- DCT transform each 8 × 8 block in the image;
- Quantify.

##### Reasons for Compressing High Frequency Parts

- DCT transform concentrates the low frequency part in the upper left corner of each 8 × 8 block, and the high frequency part in the lower right corner;
- The lossy compression loss of JPEG is the high frequency part of the quantization process;
  - The low frequency part is much more important than the high frequency part, removing 50% of the high frequency information may only lose 5% of the encoded information;
  - Quantization: the result of dividing the pixel value by the corresponding value of the quantization table;
  - The value in the upper left corner of the quantization table is smaller, and the value in the upper right corner is larger, which serves the purpose of maintaining low frequency components and suppressing high frequency components.

### Project Goals and Task Division

#### HLS implementation

**Overall plan description**: Write and optimize image compression algorithms which can be run and synthesized.

**Estimated workload**: In theory, it can be done in cooperation with two people, but the actual debug needs to be completed together.

**Sub-task division**:

- Overall plan;
- File preprocessing, input and output;
- Color gamut conversion;
- DCT and IDCT, and related auxiliary functions;
- Test bench;
- Debug;
- HLS Directive optimization.

#### Embedded Implementation

**Overall scheme description**: Load the algorithm on the Zynq board and achieve speedup.

**Estimated workload**: In theory, one person can complete the task, and actual debugging requires two people to work together.

**Sub-task division**:

- Code modification;
- Debug.

#### Project Division

|                        Member                        |                         HLS                         |    Embed     |
| :--------------------------------------------------: | :-------------------------------------------------: | :----------: |
| [**Venci Freeman**](https://github.com/VenciFreeman) | File preprocessing & color gamut conversion & debug | Code & debug |
|   [**Luo Tian**](https://github.com/luotian12345)    |            DCT/IDCT & Auxiliary function            |    debug     |
| [**Liu Jianwei**](https://github.com/liujianwei0225) |               test bench & Directive                |     N/A      |

## Implementation Process

### Code

#### Image Encoding and Decoding

##### Description

- A set of Python codes;
- Call the opencv library;
  - Advantages: Avoid using jpeg or libpng library in the project.
- Convert the image to be processed into a text file containing the RGB brightness of each pixel of the image, which is easy to read into the project for processing.

##### Implementation

- Mainly implemented by two copies of Python code, you need to call the opencv library;
- The designed RGB text file format is:
  - Line 1: Enter the width and height pixel information of the image;
  - Line u × v: RGB information of the pixels with coordinates (u, v) in the image, each row has three values of 0-255, representing red, green, and blue brightness, separated by spaces

##### Pseudo-Code

```c
jpg_to_dat()
Input: jpg file 
Output: dat file
read jpg file 
get u,v,rgb by opencv  // Call the opencv lib to read jpg file
create dat file 
write u, v at line 1 of dat file 
for i←1 to u do  // Traverse width
	for j←1 to v do  // Traverse height
  	write rgb[i][j][1,2,3] to dat file  // Write RGB Brightness
    write \n
```

```c
dat_to_jpg()
Input: dat file
Output: jpg file 
read png file 
read u, v at line 1 of dat file  // Read width and height
create jpg file 
for i←1 to u do  // Traverse width 
	for j←1 to v do  // Traverse height 
		read r,g,b value  // Read RGB Brightness
    put pixel(u,v) by rgb values  // Put the pixel 
```

#### Color Space Conversion

##### Overview

- A cpp file in the core algorithm
- For the conversion of the input and output files between the RGB color space and the YCbCr color space
- The conversion is to facilitate greater compression
  - The naked eye is not sensitive to high-frequency changes in chroma, so averaging the chroma components can compress the image
- The image is compressed to a certain extent, and the main thing is to prepare for the subsequent discrete cosine transform (DCT) operation to further attenuate the high-frequency components of the image

##### Implementation

- 这一部分主要由核心算法中的一个函数实现，即RGB转YCrCb色彩空间

##### Pseudo-Code

```c
color_convert()
输入：输入图像信息数组 image[u][v][3],标识符 flag 输出：输出图像信息数组 image[u][v][3] 
for i←1 to u do  // 遍历宽 
	for j←1 to v do  // 遍历高 
		if flag is 1 then  // 从 RGB转 YCrCb 
			calculate Y, Cr, Cb  // 用转换公式计算
      for val in Y, Cr, Cb do
      	if val < 0 then  // 除去高频信息 
     			val = 0 
				else if val > 0 then
     			val = 255 
   				store val in image[][][val]
    else do    // 从 YCrCb转 RGB   
    	calculate R, G, B  // 用转换公式计算
      for val in R, G, B do 
				if val < 0 then  // 除去高频信息 
        	val = 0 
				else if val > 0 then 
     			val = 255 
   			store val in image[][][val] 
```

#### Key Function

##### Image Fill

- 图片长度与宽度未必是 8 的倍数，从而无法使其正好全部分为 8x8 的小块
  - 将图片的长和宽都扩展到大于等于它且为 8 倍数的最小正数
  - 对于扩充的行与列则使它的 RGB 值为上一行或上一列的 RGB 值

##### DCT/IDCT

##### Quantify

- DCT 变换将低频部分集中在每个 8x8 块的左上角，高频部分在右下角
- 量化就是用像素值÷量化表对应值所得的结果
- 由于量化表左上角的值较小，右上角的值较大，这样就起到了保持低频分量，抑制高频分量的目的
- 量化表得到的过程需要一个最初给定的基本量化矩阵，这个量化矩阵对于 jpeg 图片是通用的
- 参数 Quality 的取值决定了生成的量化矩阵是什么

#### HLS Success

- 主要问题及解决方案
  - 参数的 multiple definition
    - 由于是整合小组的代码，每个人的代码都有各自的函数，最终有些文件里面有了重复的函数
    - 编写一个头文件，然后在头文件里面声明该函数，只在某一个文件里面保存给函数的定义即可
  - @E Simulation failed: SIGSEGV
    - 与 memory之类的东西有关
    - 尝试将图片大小上限缩小，如 400x400

### HLS

#### Test bench

##### Pseudo-Code 

```c++
testbench.cpp
fp = fopen(oringal.txt) /*读取原图像的 RGB 参数*/ 
for(i < rows; i++)
  for(j < cols; j++)
  	put RGB into image[i][j][0] image[i][j][1] & image[i][j][2] 
calc_quant(matrix,10)/*产生量化矩阵*/ 
RGB_2_YCrCb_convert(image[i][j][])/*将 RGB 参数转化为 YCrCb 参数*/
DCT()/*进行离散余弦变换*/ 
Quantize()/*量化过程*/ 
IDCT()/*对量化后的数据进行反离散余弦变换*/ 
YCrCb_2_RGB_convert(image[i][j][])/*将压缩后的 YCrCb 参数转化为 RGB 参数*/
for() 
  fprintf(image[i][j][0],image[i][j][1],image[i][j][2]/*打印结果*/ 
fclose()     
```

#### HLS Optimization

##### Overview

- 降低资源消耗
- 将 float 浮点数类型改为定点数类型以及相应地修改了代码结构
- 设置中间变量

##### Implementation

|      Type       |      Operation      |
| :-------------: | :-----------------: |
|  **function**   |    HLS PIPELINE     |
|  **for loop**   |     HLS UNROLL      |
| **multi array** | HLS ARRAY_PARTITION |

### Embedded

- 在Zynq板上运行
- 将压缩后的数据直接打印
- 不需要用到开关、按钮、led 灯，所以我们只需要一个 zynq 板子的 ip 核
- 需要在板子上跑压缩图片，所以我们也需要将图片的数据传到板子上，需要有 Bram 的 ip
- Bram 应用
- 原先的 C++文件有一大部分可以直接移植
- 在 Bram 上存储好数据，并将过程中的数组保存在 Bram 上
- 在算法压缩完后将最终的结果打印出来
- Debug 
  - Program fpga 不成功
  - 各种函数使用的错误
  - 调用 ip 的函数参数错误

## Result Analysis

### Code Results

#### Pretreatment

- 图像可以完全还原，没有任何差别，此项功能正确

### HLS Optimized Result

- 在编写完成 test bench 后，对JPEG 图像压缩算法进行HLS Simulation，选择Top Function为 DCT_8x8_2D
- 通过对比 HLS Simulation 前后的文件夹可以发现生成的 RGB 参数已经成功输出到了指定的compress.txt 中
- 考虑到程序结构的问题，Top Function 的选取只考虑其中部分资源消耗量大的变量
- 在选取不同的 Top Function 的情况下，对未进行 HLS 优化和进行 HLS 优化的文件进行 HLS 综合
- 经过 HLS 优化，各项参数都符合要求，不存在溢出的情况

## Shortcomings and outlook

### Personal Tasks

- 运用了外部的 opencv 库在 Python 中实现图像预处理，因此每次运行图像压缩算法需要启动两个 Python 文件和一个 testbench.cpp文件
- 更理想的解决方案是使用 jpeg 库直接用 C++实现图像读取和输出，但这一部分由于能力限制未能实现
- 可替代的解决方案是编写一个更顶层的 Python 文件，并通过此文件去依次运行压缩算法的三个文件

### Project Tasks

- 压缩效果不理想

  - 图像可以被压缩到非常小 (就集成测试结果来看，压缩比为 7:1，而在质量参数更低的情况下可以达到 15:1)，但压缩质量较差，振铃效应比较明显
    - 图像分块做得不够小，导致最后的压缩图像分块肉眼可见
    - 处理的文件本身像素就不够高，压缩后效果只会更差；

- 输入图像大小有限制，图像过大的时候，我们用于存储图像信息的数组 image[][][3]就会占用较大的内存空间，最终导致栈溢出。

  - 多次测试后将图片大小上限限制在了 400×400 像素
  - 算法上的可行解决办法是将其放到堆空间而不是栈空间上进行处理，必要时申请虚拟内存

- 没能将浮点数改为定点数。组员因为生病没有如期完成浮点数改定点数

  - 如果此项任务实现，HLS 综合可以实现更大程度的优化。 

- 没能完成嵌入式实现。

  - 组员生病被要求隔离，小组成员的沟通和 FPGA 硬件开发板的使用上出现了障碍
    - 在迟迟没有进展的情况下，大家都一定程度上参与了嵌入式开发
    - 由于 IP 核的一些问题，以及修改的代码在监视循环和监测时间的函数调用上存在一些无法解决的问题，在截至日期前没能完成实现 

### Outlook

- Completed embedded development, and proved that running on FPGA after optimization can achieve better results;
- Optimize algorithms, such as solving the input image size limitation in point 2, solving the image compression quality problem in point 1, then simplifying the operation;
- Overall, the project deepened the understanding of the members of our group on the knowledge of image storage principles, image compression algorithms and Vivado HLS optimization, embedded development, etc.

## References

- [Alakuijala, Jyrki, et al. "Guetzli: Perceptually guided jpeg encoder." arXiv preprint arXiv: 
  1703.04421 (2017).]( https://arxiv.org/abs/1703.04421 )
- Fu, Sizhe, Ping Shi, and Da Pan. "A modified algorithm of Guetzli encoder." 2018 IEEE 4th 
  Information Technology and Mechatronics Engineering Conference (ITOEC). IEEE, 2018. 
- [Hudson, Graham, et al. "JPEG-1 standard 25 years: past, present, and future reasons for a 
  success." Journal of Electronic Imaging 27.4 (2018): 040901.]( https://www.spiedigitallibrary.org/journals/journal-of-electronic-imaging/volume-27/issue-04/040901/JPEG-1-standard-25-years--past-present-and-future/10.1117/1.JEI.27.4.040901.full?SSO=1 )
- [RGB](https://en.wikipedia.org/wiki/RGB) 
- [YCbCr](https://en.wikipedia.org/wiki/YCbCr)
