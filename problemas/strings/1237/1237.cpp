#include <iostream>
#include <vector>

using namespace std;

int LCS(string A, string B){
    int n, m, resposta;
    vector<vector<int> > T;

    n = A.length(), m = B.length();

    T.assign(n + 1, vector<int>());
    for(int i = 0; i <= n; ++i){
        T[i].assign(m + 1, 0);
    }

    resposta = 0;
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
                resposta = max(resposta, T[i][j]);
            }
        }
    }

    return resposta;
}

int main(){
    string A, B;

    while(getline(cin, A)){
        getline(cin, B);

        cout << LCS(A, B) << endl;
    }

    return 0;
}
