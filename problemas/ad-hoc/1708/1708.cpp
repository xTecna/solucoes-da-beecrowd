#include <iostream>
#include <cmath>

using namespace std;

int main(){
    int X, Y;

    cin >> X >> Y;

    cout << ceil((double)Y/(Y - X)) << endl;

    return 0;
}
