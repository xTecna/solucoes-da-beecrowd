#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main(){
    string nome;
    char comportamento;
    vector<string> nomes;
    int N, n_comportadas;

    cin >> N;
    n_comportadas = 0;
    for(int i = 0; i < N; ++i){
        cin >> comportamento >> nome;
        nomes.push_back(nome);
        if(comportamento == '+'){
            n_comportadas += 1;
        }
    }

    sort(nomes.begin(), nomes.end());

    for(int i = 0; i < nomes.size(); ++i){
        cout << nomes[i] << endl;
    }
    cout << "Se comportaram: " << n_comportadas << " | Nao se comportaram: " << N - n_comportadas  

    return 0;
