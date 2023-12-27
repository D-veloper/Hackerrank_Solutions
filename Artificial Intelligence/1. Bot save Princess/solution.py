#!/usr/bin/python

def displayPathtoPrincess(n,grid):
#print all the moves here
    for i in range(n):
        for j in range(n):
            if grid[i][j] == "m":
                bot_x = i
                bot_y = j
                
            elif grid[i][j] == "p":
                princess_x = i
                princess_y = j
    
    x_diff = abs(princess_x - bot_x)
    y_diff = abs(princess_y - bot_y)
    
    for i in range(x_diff):
        if princess_x > bot_x:
            print("DOWN")
        elif princess_x < bot_x:
            print("UP")
            
    for i in range(y_diff):
        if princess_y > bot_y:
            print("RIGHT")
        elif princess_y < bot_y:
            print("LEFT")
            
m = int(input())
grid = [] 
for i in range(0, m): 
    grid.append(input().strip())

displayPathtoPrincess(m,grid)