R语言环境变量的设置 环境设置函数为options()
环境设置函数为options()，用options()命令可以设置一些环境变量，使用help(options)可以查看详细的参数信息。

1. 数字位数的设置，options(digits=n)，n一般默认情况下是7位，但实际上的范围是1~22，可以随意设置位数。

#这个命令，可以把R的整数表示能力设为10位。
options(digits=10)
2. 扩展包的安装，使用下面的命令，可以联网安装扩展包。

options(CRAN="http://cran.r-project.org") 
install.packages("扩展包名")
3. 利用R里的options函数进行光标和数字位数设置。

用R写代码时，打字水平不高，有时候不知道乱按了一些键（现在我还不知道哪个键），光标就变成了加粗的竖直线，又改不回去。这种情况下我们可以用options函数进行光标设置，例如：

##可以随意设置你的光标类型(prompt参数设置)。
##光标开始默认为  >
options(prompt="|")
##光标为  |
options(prompt=">")
##光标为  >
options(prompt="|")
##光标为  |
options(prompt="+")
##光标为  +
options(prompt="-")
##光标为  -
options(prompt="8")
##光标为  8
options(prompt=">")  
##光标设置为开始默认值 >
4. R里的options函数进行错误信息显示（忽略）设置。

#这个命令，可以忽视任何警告
options(warn=-1) 
#这个命令，不放过任何警告
options(warn=1)

#示例展示
ow <- options("warn")
for(w in -1:1) {
  options(warn = w); cat("\n warn =", w, "\n")
  for(i in 1:4) { cat(i,"..\n"); m <- matrix(1:7, 3,4) }
}
warnings()
options(ow) # reset
tail(warnings(), 2)
#说明：
warn:
sets the handling of warning messages. If warn is negative all warnings are ignored. If warn is zero (the default) warnings are stored until the top–level function returns. If 10 or fewer warnings were signalled they will be printed otherwise a message saying how many were signalled. An object called last.warning is created and can be printed through the function warnings. If warn is one, warnings are printed as they occur. If warn is two or larger all warnings are turned into errors.
-------
警告：
设置警告消息的处理。如果警告是负面的，所有的警告都会被忽略。如果警告是零（默认）警告被存储到顶部，级别的函数返回。如果10个或更少的警告信号，他们将被打印出来，否则一个消息说有多少人发出信号。一个对象称为last.warning可以通过打印功能warnings。如果警告是一个，警告是印刷的，因为它们发生。如果警告是2或更大的所有警告被变成错误。

##还可以width来调整向量，矩阵的输出宽度，还包括是否用warnning来显示错误信息（show.error.messages）以及错误信息的长度（warning.length）。
options(show.error.locations = TRUE)
options("show.error.messages")
5. options()常用于设置R控制台、R语言计算相关的属性，常用属性名称及默认值如下：

add.smooth TRUE
check.bounds FALSE
continue "+ "
digits 7
echo TRUE
encoding "native.enc"
error NULL
expressions 5000
keep.source interactive()
keep.source.pkgs FALSE
max.print 99999
OutDec "."
prompt "> "
scipen 0
show.error.messages TRUE
timeout 60
verbose FALSE
warn 0
warning.length 1000
width 80
#装载不同的扩展包还会增加一些新的属性信息
6. 设置环境变量R_LIBS将R包安装到自定义路径

WIN环境下自定义设置R包安装路径
关于R启动（help(Startup)）和选项（help(options)）的内容，参见R帮助页面。
