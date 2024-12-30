#include <iostream>

using namespace std;

int mdc(int x, int y){
    if(y == 0)  return x;
    else        return mdc(y, x % y);
}

int main(){
    int X, Y;

    while(cin >> X >> Y){
        if(X == Y)  cout << 4 << endl;
        else        cout << 2*(X + Y)/mdc(X, Y) << endl;
    }

    return 0;
}