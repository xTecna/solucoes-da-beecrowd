#include <iostream>
#include <cctype>

using namespace std;

int main(){
    int n;
    string S;
    bool errado, maiuscula, minuscula, numero;

    while(getline(cin, S)){
        n = S.length();

        if(n < 6 || n > 32){
            cout << "Senha invalida." << endl;
            continue;
        }

        errado = false, maiuscula = false, minuscula = false, numero = false;

        for(int i = 0; i < n; ++i){
            if(isalpha(S[i])){
                if(isupper(S[i]))   maiuscula = true;
                else                minuscula = true;
            }else if(isdigit(S[i])) numero = true;
            else{
                errado = true;
                break;
            }
        }

        if(errado || !(maiuscula && minuscula && numero)){
            cout << "Senha invalida." << endl;
        }else{
            cout << "Senha valida." << endl;
        }
    }

    return 0;
}
