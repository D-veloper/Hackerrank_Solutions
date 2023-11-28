#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'findPoint' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER px
#  2. INTEGER py
#  3. INTEGER qx
#  4. INTEGER qy
#

def findPoint(px, py, qx, qy):
    # Write your code here
    # the point r is the point that forms a line with point p, where q is the midpoint.
    # midpoint is calculated thus x1 + x2/2 and y1 + y2/2
    # Since q is the mid point then qx = (rx + px)/2. Therefore rx = 2qx - px. 
    #Applying the same logic, ry = 2qy - py. 
    # Conceptually, we are simply doubling the distance between p and q to get a point that is the same distance away from q as p in the opposite direction
    
    new_point = []
    rx = (2 * qx) - px
    ry = (2 * qy) - py
    
    new_point.append(rx)
    new_point.append(ry)
    
    return new_point

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    for n_itr in range(n):
        first_multiple_input = input().rstrip().split()

        px = int(first_multiple_input[0])

        py = int(first_multiple_input[1])

        qx = int(first_multiple_input[2])

        qy = int(first_multiple_input[3])

        result = findPoint(px, py, qx, qy)

        fptr.write(' '.join(map(str, result)))
        fptr.write('\n')

    fptr.close()
