#/usr/bin/env python
# -*- coding:utf-8 -*-
# Author:Wangj

import math

def quadratic_equation(a, b, c):
   de=b**2-4*a*c
   if de >= 0:
        x1=(-b+math.sqrt(de))/(2*a)
        x2=(-b-math.sqrt(de))/(2*a)
        return x1,x2

print (quadratic_equation(2, 3, 0))
print (quadratic_equation(1, -6, 5))