#include <iostream>

using namespace std;

int main(){
    int palavras, semelhancas;
    string palavra, um = "one";

    cin >> palavras;

    for(int i = 0; i < palavras; ++i){
        cin >> palavra;

        if(palavra.length() == 5)   cout << 3 << endl;
        else{
            semelhancas = 0;
            for(int j = 0; j < 3; ++j){
                if(palavra[j] == um[j]) ++semelhancas;
            }

            if(semelhancas > 1) cout << 1 << endl;
            else                cout << 2 << endl;
        }
    }

    return 0;
}
