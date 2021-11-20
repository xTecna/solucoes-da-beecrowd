#include <iostream>

using namespace std;

int main(){
    int p;
    char D;
    string N, resposta;

    while(cin >> D >> N){
        if(D == '0' && N == "0")    break;

        p = 0;
        resposta = "";
        for(int i = 0; i < N.length(); ++i){
            if(N[i] != D)   resposta += N[i];
        }

        p = 0;
        while(p < resposta.length()){
            if(resposta[p] != '0')  break;
            ++p;
        }

        if(p == resposta.length())  cout << 0 << endl;
        else{
            resposta = resposta.substr(p);
            cout << resposta << endl;
        }
    }

    return 0;
}
