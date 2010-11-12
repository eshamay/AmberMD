#!/usr/bin/python

A = 1970959.87
B = 2739.50

print "N"

A = A / 4.184
B = B / 4.184

sigma = (A/B) ** (1.0/6.0)
ep = B**2 / A
print "sigma = ", sigma, " ep = ", ep

