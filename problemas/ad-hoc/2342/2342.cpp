#include <iostream>

using namespace std;

int main(){
    char C;
    int N, P, Q, resposta;

    cin >> N >> P >> C >> Q;
    switch(C){
        case '+':   resposta = P + Q;
                    break;
        case '*':   resposta = P * Q;
                    break;
    }
    cout << (string) (resposta > N ? "OVERFLOW" : "OK") << endl;

    return 0;
}