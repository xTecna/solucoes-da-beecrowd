#include <iostream>
#include <cmath>

using namespace std;

int main(){
    int M, A, B;

    cin >> M >> A >> B;
    cout << max(A, max(B, M - A - B)) << endl;

    return 0;
}