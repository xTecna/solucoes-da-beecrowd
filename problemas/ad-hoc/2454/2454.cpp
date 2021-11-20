#include <iostream>

using namespace std;

int main(){
    int P, R;

    cin >> P >> R;

    cout << (P ? (R ? 'A' : 'B') : 'C') << endl;

    return 0;
}
