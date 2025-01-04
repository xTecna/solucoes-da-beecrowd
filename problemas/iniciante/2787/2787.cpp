#include <iostream>

using namespace std;

int main()
{
    int L, C;

    cin >> L >> C;
    cout << !((L % 2) ^(C % 2)) << endl;
    
    return 0;
}