#include <iostream>

using namespace std;

int main(){
    int N, A, L, P;

    cin >> N >> A >> L >> P;

    cout << (char) (N <= A && N <= L && N <= P ? 'S' : 'N') << endl;

    return 0;
}
