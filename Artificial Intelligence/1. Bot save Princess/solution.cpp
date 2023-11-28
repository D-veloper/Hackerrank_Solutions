#include <iostream>
#include <vector>
using namespace std;

void displayPathtoPrincess(int n, vector <string> grid){
    //your logic here
    int bot_x, bot_y, princess_x,princess_y;
    for(int i = 0; i < n; i++) // first get the princess and bot positions
    {
        for(int j = 0; j < n; j++)
        {
            if(grid[i][j] == 'm')
            {
                bot_x = i;
                bot_y = j;
            }
            else if (grid[i][j] == 'p')
            {
                princess_x = i;
                princess_y = j;
            }
        }
    }
    
    int x_diff = abs(princess_x - bot_x); // the distance bot has to travel whether up or down
    int y_diff = abs(princess_y - bot_y); // the distance the bot has to travel whether left or right
    
    for(int i = 0; i < x_diff; i++)
    {
        if (princess_x > bot_x)
        {
            cout << "DOWN" << endl;
        }
        else if (princess_x < bot_x)
        {
            cout << "UP" << endl;
        }
    }
    
    for(int i = 0; i < y_diff; i++)
    {
        if (princess_y > bot_y)
        {
            cout << "RIGHT" << endl;
        }
        else if (princess_y < bot_y)
        {
            cout << "LEFT" << endl;
        }
    }
}

int main(void) {

    int m;
    vector <string> grid;

    cin >> m;

    for(int i=0; i<m; i++) {
        string s; cin >> s;
        grid.push_back(s);
    }

    displayPathtoPrincess(m,grid);

    return 0;
}