#include <iostream>

using namespace std;

int P, Q, R, S, X, Y;

int A(int i, int j){
    return (P * i + Q * j) % X;
}

int B(int i, int j){
    return (R * i + S * j) % Y;
}

int main(){
    int N, I, J;
    long long int resposta;

    cin >> N >> P >> Q >> R >> S >> X >> Y >> I >> J;

    resposta = 0;
    for(int k = 1; k <= N; ++k){
        resposta += A(I, k) * B(k, J);
    }
    cout << resposta << endl;

    return 0;
}
