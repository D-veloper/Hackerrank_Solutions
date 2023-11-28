if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())
    
    # My code below:
    from itertools import product
    result = [list(combo) for combo in product(range(x+1), range(y+1), range(z+1)) if sum(combo) != n]
    print(result)
    
# Notes:
# The product function takes in iterable arguments
# It returns an iterator that produces tuples containing all possible combinations of elements from the given arguments.
# product(range(x+1), range(y+1), range(z+1)) returns a bunch of tuples which are all possible combinations of 0-x, 0-y, and 0-z
# a permutation is a combo only if it satisfies the condition of it's sum not being equal to n
# convert the valid tuple combos into a list.