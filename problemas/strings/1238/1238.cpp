#include <iostream>

using namespace std;

int main(){
    int N, tam;
    string A, B, resposta;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> A >> B;

        resposta = "";
        tam = A.length() < B.length() ? A.length() : B.length();
        for(int j = 0; j < tam; ++j){
            resposta += A[j], resposta += B[j];
        }
        if(A.length() > 0)  resposta += A.substr(tam);
        if(B.length() > 0)  resposta += B.substr(tam);

        cout << resposta << endl;
    }

    return 0;
}
