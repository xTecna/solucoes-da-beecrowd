#include <iostream>

using namespace std;

int main(){
    int T, N, K;

    cin >> T;
    for(int i = 0; i < T; ++i){
        cin >> N >> K;
        cout << (N/K) + (N%K) << endl;
    }

    return 0;
}