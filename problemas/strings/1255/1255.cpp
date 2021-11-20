#include <iostream>
#include <cctype>
#include <map>

using namespace std;

int main(){
    int N, maior;
    string frase;
    map<char, int> frequencias;

    cin >> N;
    cin.ignore();

    for(int i = 0; i < N; ++i){
        frequencias.clear();

        getline(cin, frase);

        for(int j = 0; j < frase.length(); ++j){
            if(isalpha(frase[j])){
                frase[j] = tolower(frase[j]);
                if(!frequencias.count(frase[j]))    frequencias[frase[j]] = 0;
                frequencias[frase[j]]++;
            }
        }

        maior = 0;
        for(map<char, int>::iterator it = frequencias.begin(); it != frequencias.end(); ++it){
            if(it->second > maior)  maior = it->second;
        }

        for(map<char, int>::iterator it = frequencias.begin(); it != frequencias.end(); ++it){
            if(it->second == maior) cout << it->first;
        }
        cout << endl;
    }

    return 0;
}
