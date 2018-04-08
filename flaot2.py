#/usr/bin/env python
# -*- coding:utf-8 -*-
# Author:Wangj
#求和
#input() 返回一个字符串，所以需要使用 float() 方法将字符串转换为数字。

#用户输入数字
#num1 = input('输入第一个数字：')
#num2 = input('输入第二个数字：')

#求和
#sum = float(num1) + float(num2)

#显示计算结果
#print('数字 {0} 和 {1} 相加的结果为： {2}'.format(num1,num2,sum))

print('两数之和为 %.1f' %(float(input('输入第一个数字：'))+float(input('输入第二个数字：'))))