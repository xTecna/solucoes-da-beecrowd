#include <iostream>
#include <cctype>
#include <set>

using namespace std;

int main(){
    int N;
    string frase;
    set<char> letras;

    cin >> N;
    cin.ignore();

    for(int k = 0; k < N; ++k){
        letras.clear();

        getline(cin, frase);

        for(int i = 0; i < frase.length(); ++i){
            if(isalpha(frase[i]))   letras.insert(frase[i]);
        }

        if(letras.size() == 26)     cout << "frase completa" << endl;
        else if(letras.size() > 12) cout << "frase quase completa" << endl;
        else                        cout << "frase mal elaborada" << endl;
    }

    return 0;
}
