#!/bin/python3

import math
import os
import random
import re
import sys


#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores):
    count = [0, 0]

    lowest = scores[0]
    highest = lowest

    for i in range(1, len(scores)):
        if scores[i] < lowest:
            count[1] += 1
            lowest = scores[i]

        if scores[i] > highest:
            count[0] += 1
            highest = scores[i]

    return count


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    scores = list(map(int, input().rstrip().split()))

    result = breakingRecords(scores)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
