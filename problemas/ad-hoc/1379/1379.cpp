#include <iostream>

using namespace std;

int main(){
    int A, B;

    while(cin >> A >> B){
        if(!A && !B)    break;

        cout << 2 * A - B << endl;
    }

    return 0;
}
