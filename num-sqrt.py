#/usr/bin/env python
# -*- coding:utf-8 -*-
# Author:Wangj
#包含正负数求平方根的方法
import cmath
num = int(input('请输入一个数字：'))
num_sqrt = cmath.sqrt(num)
print('{0} 的平方根为 {1:0.3f}+{2:0.3f}j'.format(num,num_sqrt.real,num_sqrt.imag))