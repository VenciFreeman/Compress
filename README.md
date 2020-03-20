# Compress
> Micro-nano system integrated design Project based on Zybo development board, A simple algorithm which can compress images.

 ![Generic badge](https://img.shields.io/badge/Language-C++-red.svg) [![Generic badge](https://img.shields.io/badge/Hardware-Zynq-orange.svg)](https://github.com/VenciFreeman/ZynqPrj) [![Generic badge](https://img.shields.io/badge/Deadline-Dec_27_2019-yellow.svg)]( https://github.com/VenciFreeman/ZynqPrj) [![Generic badge](https://img.shields.io/badge/Build-Passing-green.svg)]( https://github.com/VenciFreeman/ZynqPrj) [![Generic badge](https://img.shields.io/badge/License-Apache_2.0-blue.svg)]( https://github.com/VenciFreeman/ZynqPrj/blob/master/LICENSE) [![Generic badge](https://img.shields.io/badge/Thank-Google-purple.svg)]( https://github.com/VenciFreeman/ZynqPrj)
 
## 选题过程

### 选题依据

开题答辩时选择的项目是 Google 的 Guetzli 图像压缩开源项目，这个选题是老师推荐的项目之一。发现这个项目的各种说明都比较充分并且图像压缩这个项目很有实用价值与挑战性，于是我们组就初步决定做这个项目。一开始比较顺利，我们成功在 Visual Studio 2017 上实现了代码的功能，将一个图片成功压缩，效果还不错。之后我们就开始尝试在 HLS 上跑它，可是由于 Vivado HLS 2016.4 并不支持较高版本的 C++ 标准，导致有各种各样的错误，同时也有代码自身的问题使其不能在 HLS 跑起来，由于需要修改的量太大并且我们对于很多的错误不熟悉。于是我们决定选择选择另一个方案，或者选其中的一部分算法（考虑过 Butteraugli 算法，也做过一些尝试）作为我们的课题，或者实现一个相比 Guetzli 更加简单一些的压缩算法。

最终我们选择了后者。因为它相比前者更符合我们选题的初衷。所以，最终的选题是基于 Guetzli 算法思路的一个较简单的图像压缩算法。最终结果证明我们重写的算法可以有效地对图像进行压缩。

### 课题背景

图像压缩是指在满足一定图像质量的前提下，用尽可能少的数据量来表示图像的方法，分为无损压缩和有损压缩。由于本次项目研究的是 JPEG 图像压缩，所以此处主要对有损压缩的基本研究背景进行综述。 

图像之所以可以被压缩，主要是因为图像中存在大量冗余，例如相邻像素间的相关性引起的空间冗余，不同彩色平面或频谱带的相关性引起的频谱冗余等，而本次实验中优化的冗余主要是视觉冗余，是因为人眼对亮度变化相对敏感，而对色度变化相对不敏感；在高亮度区对物体边缘相对敏感，对内部区域相对不敏感，因此高频部分一些细微的颜色差别并不容易被肉眼感知，这是我们进行图像压缩的主要依据。 

图片压缩在现代生活中很重要。可能很多人可能并没有一个直观上的认识，举个例子，一张 800X800 大小的普通图片，如果未经压缩，大概在 1.7MB 左右，这个体积如果存放文本文件的话足够保存一部 92 万字的鸿篇巨著《红楼梦》，现如今互联网上绝大部分图片都使用了 JPEG 压缩技术，也就是大家使用的 jpg 文件。 

从2004 年到2008 年，出现了关于在不修改表示图像的情况下进一步压缩 JPEG 图像中包含的数据的方法的新研究。这适用于原始图像仅以JPEG 格式可用，并且需要减小其大小以进行存档或传输的情况。标准的通用压缩工具无法显着压缩 JPEG 文件。通常，此类方案利用了对朴素方案的改进来对DCT 系数进行编码，该方案未考虑以下因素：

1. 同一块中相邻系数的大小之间的相关性；
2. 相邻块中相同系数的大小之间的相关性；
3. 不同通道中相同系数/块的大小之间的相关性。

采用 DCT 压缩算法实现过程的主要原理： 

1. 将原始图像分为 8*8 的小块；
2. 将图像中每个 8*8 的block 进行 DCT 变换；
3. 量化。

DCT 变换将低频部分集中在每个 8*8 块的左上角，高频部分在右下角，所谓 JPEG 的有损压缩，损的是量化过程中的高频部分。为什么呢？因为有这样一个前提：低频部分比高频部分要重要得多，remove 50%的高频信息可能对于编码信息只损失了 5%。所谓量化就是用像素值÷量化表对应值所得的结果。由于量化表左上角的值较小，右上角的值较大，这样就起到了保持低频分量，抑制高频分量的目的。

### 项目目标与任务分工 

本次项目的目标如下： 

#### HLS 实现 

**总体方案描述**：编写可以运行和综合的图像压缩算法，并进行优化。

**工作量预估**：理论上可以两个人合作完成，实际 debug 需要共同完成。

**子任务划分**：

1. 总体规划；
2. 文件预处理，输入输出；
3. 色域转换；
4. DCT 和 IDCT，以及相关辅助函数；
5. testbench；
6. debug；
7. HLS Directive 优化。

#### 嵌入式实现 

**总体方案描述**：将算法加载到Zynq 板上并实现提速。

**工作量预估**：理论上一个人可以完成，实际 debug 需要两个人共同完成.

**子任务划分**： 

1. 代码修改；
2. debug。




