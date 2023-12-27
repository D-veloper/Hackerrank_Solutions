#

def nextMove(n,r,c,grid):
    for i in range(n):
        for j in range(n):
            if grid[i][j] == "p":
                princess_x = i
                princess_y = j
                
    steps_x = abs(princess_x - r)
    steps_y = abs(princess_y - c)
    
    if steps_x != 0:
        next_move = "DOWN" if princess_x > r else "UP"
            
    if steps_y != 0:
        next_move = "RIGHT" if princess_y > c else "LEFT"
    
    return next_move

n = int(input())
r,c = [int(i) for i in input().strip().split()]
grid = []
for i in range(0, n):
    grid.append(input())

print(nextMove(n,r,c,grid))