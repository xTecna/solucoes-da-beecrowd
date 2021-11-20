#include <iostream>

using namespace std;

int main(){
    int A;

    while(cin >> A){
        cout << (char) (A % 6 ? 'N' : 'Y') << endl;
    }

    return 0;
}
