#include <iostream>
#include <set>

using namespace std;

set<int> respostas;

void preProcessa(){
    for(int i = 0; i < 101; ++i){
        respostas.insert(i * i);
    }

    for(int i = 1; i < 101; ++i){
        for(int j = i; j < 101; ++j){
            respostas.insert(i * i + j * j);
        }
    }
}

int main(){
    int numero;

    preProcessa();

    while(cin >> numero){
        cout << (string) (respostas.count(numero) ? "YES" : "NO") << endl;
    }

    return 0;
}
