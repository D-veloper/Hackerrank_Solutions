#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */  
    /*a[i] is a reference to an array k
    Given a, answer q queries.
    each query is in format i j
    i is index of a
    j is index of k which is the array at a[i]
    given i j, print k[j] (get k from a[i]*/ 
    
    int n, q;
    cin >> n >> q;
    vector<vector<int>> a(n);
    for (int i = 0; i < n; i++)
    {
        int k;
        cin >> k;
        for (int j = 0; j < k; j++)
        {
            int k_element;
            cin >> k_element;
            a[i].push_back(k_element);
        }   
    }
    for (int i = 0; i < q; i++)
    {
        int index_in_a, index_in_k; //where k = a[i]
        cin >> index_in_a >> index_in_k;
        cout << a[index_in_a][index_in_k] << endl;
    }
    return 0;
}
