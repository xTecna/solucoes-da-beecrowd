#include <iostream>
#include <cctype>

using namespace std;

int main(){
    int N, n;
    char aux;
    string M;

    cin >> N;
    cin.ignore();

    for(int i = 0; i < N; ++i){
        getline(cin, M);

        n = M.length();
        for(int j = 0; j < n; ++j){
            if(isalpha(M[j])){
                M[j] += 3;
            }
        }
        for(int j = 0; j < n/2; ++j){
            aux = M[j];
            M[j] = M[M.length() - 1 - j];
            M[M.length() - 1 - j] = aux;
        }
        for(int j = n/2; j < n; ++j){
            --M[j];
        }

        cout << M << endl;
    }

    return 0;
}
