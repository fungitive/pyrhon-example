#/usr/bin/env python
# -*- coding:utf-8 -*-
# Author:Wangj
#正数的平方根,如果输入负数就会报错

num = float(input('请输入一个正数值:'))
num_sqrt = num**0.5
print('%0.3f 的平方根为 %0.3f'%(num,num_sqrt))