#!/usr/bin/env python
sum = 0
for i in range(1,11):
    sum +=1 / i
    print("{:2d} {:10.4f}".format(i , sum))