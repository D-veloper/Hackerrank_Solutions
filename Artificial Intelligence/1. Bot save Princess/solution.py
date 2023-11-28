#!/usr/bin/python

def displayPathtoPrincess(n,grid):
#print all the moves here
    for i in range(n):
        for j in range(n):
            if grid[i][j] == 'm':
                bot_x = i
                bot_y = j
            elif grid[i][j] == 'p':
                princess_x = i
                princess_y = j
    x_diff = abs(princess_x - bot_x)
    y_diff = abs(princess_y - bot_y)
    
    for i in range(1, x_diff + 1):
        if princess_x > bot_x:
            print("DOWN\n")
        elif princess_x < bot_x:
            print("UP\n")
    
    for i in range(1, y_diff + 1):
        if princess_y > bot_y:
            print("RIGHT\n")
        elif princess_y < bot_y:
            print("LEFT\n")

m = int(input())
grid = [] 
for i in range(0, m): 
    grid.append(input().strip())

displayPathtoPrincess(m,grid)