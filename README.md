# Compress
> Micro-nano system integrated design Project based on Zybo development board, A simple algorithm which can compress images.

 ![Generic badge](https://img.shields.io/badge/Language-C++-red.svg) [![Generic badge](https://img.shields.io/badge/Hardware-Zynq-orange.svg)](https://github.com/VenciFreeman/ZynqPrj) [![Generic badge](https://img.shields.io/badge/Deadline-Jan_10_2020-yellow.svg)]( https://github.com/VenciFreeman/ZynqPrj) [![Generic badge](https://img.shields.io/badge/Build-Passing-green.svg)]( https://github.com/VenciFreeman/ZynqPrj) [![Generic badge](https://img.shields.io/badge/License-Apache_2.0-blue.svg)]( https://github.com/VenciFreeman/ZynqPrj/blob/master/LICENSE)

## 选题过程

### 选题依据

#### 初始选题

> Google 的 Guetzli 图像压缩开源项目

##### 面临的问题

- Vivado HLS 2016.4 并不支持较高版本的 C++ 标准
- 代码自身问题，修改工作量过大


##### 解决方案

- 实现一个相比 Guetzli 更加简单一些的压缩算法

#### 最终选题

> 基于 Guetzli 算法思路的一个较简单的图像压缩算法

### 课题背景

#### 图像压缩

> 在满足一定图像质量的前提下，用尽可能少的数据量来表示图像的方法
>
> - 无损压缩
> - 有损压缩 (本次项目选择 <JPEG>)

##### 原理

- 图像中存在大量冗余
  - 相邻像素间的相关性引起的空间冗余
  - 不同彩色平面或频谱带的相关性引起的频谱冗余
  - 视觉冗余 (本次项目选择)
    - 人眼对亮度变化相对敏感，而对色度变化相对不敏感
    - 在高亮度区对物体边缘相对敏感，对内部区域相对不敏感
    - 因此高频部分一些细微的颜色差别并不容易被肉眼感知 (主要依据) 

##### 新研究

> 在不修改表示图像的情况下进一步压缩 JPEG 图像中包含的数据的方法的新研究

- 适用于原始图像仅以 JPEG 格式可用，并且需要减小其大小以进行存档或传输的情况
- 标准的通用压缩工具无法显着压缩 JPEG 文件
- 通常此类方案利用对朴素方案的改进来对 DCT 系数进行编码
  - 未考虑因素
    - 同一块中相邻系数的大小之间的相关性；
    - 相邻块中相同系数的大小之间的相关性；
    - 不同通道中相同系数/块的大小之间的相关性。

##### DCT主要原理 

- 将原始图像分为 8*8 的小块;
- 将图像中每个 8*8 的block 进行 DCT 变换；
- 量化。

##### 压缩高频部分的原因

- DCT 变换将低频部分集中在每个 8*8 块的左上角，高频部分在右下角
- JPEG 的有损压缩损耗的是量化过程中的高频部分
  - 低频部分比高频部分要重要得多，移除 50%的高频信息可能对于编码信息只损失了 5%
  - 量化：用像素值除以量化表对应值所得的结果
  - 量化表左上角的值较小，右上角的值较大，就起到了保持低频分量，抑制高频分量的目的

### 项目目标与任务分工 

#### HLS 实现 

**总体方案描述**：编写可以运行和综合的图像压缩算法，并进行优化。

**工作量预估**：理论上可以两个人合作完成，实际 debug 需要共同完成。

**子任务划分**：

- 总体规划；
- 文件预处理，输入输出；
- 色域转换；
- DCT 和 IDCT，以及相关辅助函数；
- testbench；
- debug；
- HLS Directive 优化。

#### 嵌入式实现 

**总体方案描述**：将算法加载到Zynq 板上并实现提速。

**工作量预估**：理论上一个人可以完成，实际 debug 需要两个人共同完成.

**子任务划分**： 

- 代码修改；
- debug。

#### 项目分工

|     组员      |             HLS             |     嵌入式      |
| :-----------: | :-------------------------: | :-------------: |
| @VenciFreeman | 文件预处理，色域转换，debug |      debug      |
|               |     DCT/IDCT，辅助函数      | 代码修改、debug |
|               |  testbench，Directive优化   |  — (因伤退出)   |

## 实施过程

### 代码部分

#### 图像的编码与解码

##### 描述

- 主要体现为一组 python 文件
- 可将待处理的图片转化为包含图像每个像素点 RGB 亮度的文本文件，方便读入项目中进行处理
- 使用 opencv 实现
  - 优势：避免了在项目中使用 jpeg 或 libpng 库，操作更加简单
- 属于算法的预处理和结果处理工作，得到可以展示的算法实现效果 

##### 具体实现

- 主要由两份 Python 代码实现，需要调用 opencv 库
- 设计的 RGB 文本文件格式为： 
  - 第一行：输入图像的宽与高像素信息
  - u×v 行：图像中坐标为(u, v)的像素点的 RGB 信息，每一行为 3 个0-255 的数值，分别代表红色，绿色，蓝色亮度，数值间以空格分隔

##### 伪代码

```c
jpg_to_dat()
输入：jpg文件 
输出：dat文件 
read jpg file 
get u,v,rgb by opencv  // 使用 opencv库读取 jpg文件
create dat file 
write u, v at line 1 of dat file 
for i←1 to u do  // 遍历宽 
	for j←1 to v do  // 遍历高 
  	write rgb[i][j][1,2,3] to dat file  // 写入 RGB亮度 
    write \n
```

```c
dat_to_jpg()
输入：dat文件 
输出：jpg文件 
read png file 
read u, v at line 1 of dat file  // 读取图片宽和高
create jpg file 
for i←1 to u do  // 遍历宽 
	for j←1 to v do  // 遍历高 
		read r,g,b value  // 读取 RGB亮度 
    put pixel(u,v) by rgb values  // 画出此像素 
```

#### 图像的色彩空间转换

##### 概述

- 核心算法中的一个 cpp 文件
- 主要负责输入输出文件在 RGB 色彩空间和 YCbCr 色彩空间之间的转换
- 转换空间是为了方便进行更大的压缩
  - 肉眼对色度的高频变化不敏感，因此对色度分量取平均值可以对图像进行压缩
- 对图像进行了一定程度的压缩，更主要的是为后续离散余弦变换(DCT)操作进一步衰减图像高频分量进行准备

##### 具体实现

- 这一部分主要由核心算法中的一个函数实现，即RGB转YCrCb色彩空间

##### 伪代码

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

#### 压缩算法关键函数的编写 

##### 图像填充

- 图片长度与宽度未必是 8 的倍数，从而无法使其正好全部分为 8x8 的小块
  - 将图片的长和宽都扩展到大于等于它且为 8 倍数的最小正数
  - 对于扩充的行与列则使它的 RGB 值为上一行或上一列的 RGB 值

##### DCT/IDCT

##### 量化

- DCT 变换将低频部分集中在每个 8x8 块的左上角，高频部分在右下角
- 量化就是用像素值÷量化表对应值所得的结果
- 由于量化表左上角的值较小，右上角的值较大，这样就起到了保持低频分量，抑制高频分量的目的
- 量化表得到的过程需要一个最初给定的基本量化矩阵，这个量化矩阵对于 jpeg 图片是通用的
- 参数 Quality 的取值决定了生成的量化矩阵是什么

#### HLS 成功运行

- 主要问题及解决方案
  - 参数的 multiple definition
    - 由于是整合小组的代码，每个人的代码都有各自的函数，最终有些文件里面有了重复的函数
    - 编写一个头文件，然后在头文件里面声明该函数，只在某一个文件里面保存给函数的定义即可
  - @E Simulation failed: SIGSEGV
    - 与 memory之类的东西有关
    - 尝试将图片大小上限缩小，如 400x400

### HLS部分

#### JPEG 图像压缩算法的testbench 编写

##### 伪代码

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

#### JPEG 图像压缩算法的HLS 优化 

##### 概述

- 降低资源消耗
- 将 float 浮点数类型改为定点数类型以及相应地修改了代码结构
- 设置中间变量

##### 具体实现

|      Type       |      Operation      |
| :-------------: | :-----------------: |
|  **function**   |    HLS PIPELINE     |
|  **for loop**   |     HLS UNROLL      |
| **multi array** | HLS ARRAY_PARTITION |

### 嵌入式

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

## 结果分析

### 代码运行结果

#### 预处理

- 图像可以完全还原，没有任何差别，此项功能正确

### HLS 优化代码运行结果

- 在编写完成 testbench 后，对JPEG 图像压缩算法进行HLS Simulation，选择Top Function为 DCT_8x8_2D
- 通过对比 HLS Simulation 前后的文件夹可以发现生成的 RGB 参数已经成功输出到了指定的compress.txt 中
- 考虑到程序结构的问题，Top Function 的选取只考虑其中部分资源消耗量大的变量
- 在选取不同的 Top Function 的情况下，对未进行 HLS 优化和进行 HLS 优化的文件进行 HLS 综合
- 经过 HLS 优化，各项参数都符合要求，不存在溢出的情况

## 不足与展望

### 个人任务的不足之处

- 运用了外部的 opencv 库在 Python 中实现图像预处理，因此每次运行图像压缩算法需要启动两个 Python 文件和一个 testbench.cpp文件
- 更理想的解决方案是使用 jpeg 库直接用 C++实现图像读取和输出，但这一部分由于能力限制未能实现
- 可替代的解决方案是编写一个更顶层的 Python 文件，并通过此文件去依次运行压缩算法的三个文件

### 整个项目的不足之处

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

### 展望

- 完成嵌入式开发，证明优化后在 FPGA 上运行可以达到更好的效果
- 优化算法，比如解决第 2 点中的输入图像大小限制，解决第 1 点中的图像压缩质量问题，然后将操作简单化
- 总的说来项目加深了我们小组的成员对图像存储原理，图像压缩算法和 Vivado HLS 优化，嵌入式开发等方面的知识的理解

## 参考文献

- Alakuijala, Jyrki, et al. "Guetzli: Perceptually guided jpeg encoder." arXiv preprint arXiv: 
  1703.04421 (2017). 
- Fu, Sizhe, Ping Shi, and Da Pan. "A modified algorithm of Guetzli encoder." 2018 IEEE 4th 
  Information Technology and Mechatronics Engineering Conference (ITOEC). IEEE, 2018. 
- Hudson, Graham, et al. "JPEG-1 standard 25 years: past, present, and future reasons for a 
  success." Journal of Electronic Imaging 27.4 (2018): 040901. 
- RGB, https://en.wikipedia.org/wiki/RGB 
- YCbCr, https://en.wikipedia.org/wiki/YCbCr 