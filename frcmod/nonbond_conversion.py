import math

# convert between a given literature value for sigma and epsilon to something that Amber can use successfully
# to generate C6 (kJ/mol * nm^6) or C12 (similar) with the right units, use kJ/mol and nm for epsilon and sigma, respectively
sigma = 1.721
epsilon = 0.2104

print "input:\n\tsigma:   %.5f\n\tepsilon: %.5f\n\n" % (sigma, epsilon)

C6 = 4.0 * epsilon * math.pow(sigma, 6)	
C12 = 4.0 * epsilon * math.pow(sigma, 12)

sigma = pow(2.0*C12/C6,1.0/6.0)/2.0

print "C6  = %.5e" % C6
print "C12 = %.5e\n" % C12
print "sigma value for Amber (if input in kcal/mol & angstroms)\n\t%.5f" % sigma
