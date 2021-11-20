#include <iostream>

using namespace std;

int main(){
    string A, B;
    int T, diferencas;

    cin >> T;

    for(int i = 0; i < T; ++i){
        cin >> A >> B;

        diferencas = 0;
        for(int j = 0; j < A.length(); ++j){
            diferencas += (B[j] - A[j] + 26) % 26;
        }

        cout << diferencas << endl;
    }

    return 0;
}
