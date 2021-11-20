#include <iostream>

using namespace std;

int main(){
    int N, K;
    bool mesmoIdioma;
    string idioma, S;

    cin >> N;

    for(int k = 0; k < N; ++k){
        cin >> K;

        cin >> idioma;
        mesmoIdioma = true;
        for(int i = 1; i < K; ++i){
            cin >> S;

            if(S != idioma) mesmoIdioma = false;
        }

        if(mesmoIdioma) cout << idioma << endl;
        else            cout << "ingles" << endl;
    }

    return 0;
}
