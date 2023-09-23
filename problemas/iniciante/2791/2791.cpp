#include <iostream>

using namespace std;

int main()
{
    int C;

    for(int i = 1; i <= 4; ++i){
        cin >> C;

        if(C == 1){
            cout << i << endl;
            break;
        }
    }

    return 0;
}