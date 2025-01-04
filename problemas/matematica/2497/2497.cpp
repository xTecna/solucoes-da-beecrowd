#include <iostream>

using namespace std;

int main(){
    int T, N;

    T = 0;
    while(cin >> N){
        if(N == -1) break;

        cout << "Experiment " << ++T << ": " << N/2 << " full cycle(s)" << endl;
    }

    return 0;
}