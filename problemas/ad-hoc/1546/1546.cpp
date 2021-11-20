#include <iostream>

using namespace std;

int main(){
    int N, K, feedback;
    string nomes[4] = {"Rolien", "Naej", "Elehcim", "Odranoel"};

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> K;
        
        for(int j = 0; j < K; ++j){
            cin >> feedback;

            cout << nomes[feedback - 1] << endl;
        }
    }

    return 0;
}
