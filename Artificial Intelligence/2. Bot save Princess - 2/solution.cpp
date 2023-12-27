#include <iostream>
#include <vector>
using namespace std;

void nextMove(int n, int r, int c, vector <string> grid){
    //your logic here
    int princess_x, princess_y;
    
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < n; j++)
        {
            if(grid[i][j] == 'p')
            {
                princess_x = i;
                princess_y = j;
            }
        }
    }
    
    int steps_x, steps_y;
    
    steps_x = abs(princess_x - r);
    steps_y = abs(princess_y - c);
    
    string next_move = "";
    
    if (steps_x != 0)
    {
        next_move = (princess_x > r) ? "DOWN" : "UP";
    }
    else if(steps_y != 0)
    {
        next_move = (princess_y > c) ? "RIGHT" : "LEFT";
    }
    
    cout << next_move;
}

int main(void) {

    int n, r, c;
    vector <string> grid;

    cin >> n;
    cin >> r;
    cin >> c;

    for(int i=0; i<n; i++) {
        string s; cin >> s;
        grid.push_back(s);
    }

    nextMove(n, r, c, grid);
    return 0;
}