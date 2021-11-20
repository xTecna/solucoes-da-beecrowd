#include <iostream>
#include <set>

using namespace std;

int sudoku[9][9];

bool verificaLinha(int x){
    set<int> numeros;

    for(int i = 0; i < 9; ++i){
        numeros.insert(sudoku[x][i]);
    }

    return numeros.size() == 9;
}

bool verificaColuna(int x){
    set<int> numeros;

    for(int i = 0; i < 9; ++i){
        numeros.insert(sudoku[i][x]);
    }

    return numeros.size() == 9;
}

bool verificaQuadrado(int x){
    set<int> numeros;
    int linha = 3*(x/3), coluna = 3*(x%3);

    for(int i = 0; i < 3; ++i){
        for(int j = 0; j < 3; ++j){
            numeros.insert(sudoku[linha + i][coluna + j]);
        }
    }

    return numeros.size() == 9;
}

int main(){
    int n;
    string resposta;

    cin >> n;
    for(int k = 1; k <= n; ++k){
        for(int i = 0; i < 9; ++i){
            for(int j = 0; j < 9; ++j){
                cin >> sudoku[i][j];
            }
        }

        cout << "Instancia " << k << endl;

        resposta = "SIM";
        for(int i = 0; i < 9; ++i){
            if(!verificaLinha(i) || !verificaColuna(i) || !verificaQuadrado(i)){
                resposta = "NAO";
                break;
            }
        }

        cout << resposta << endl << endl;
    }

    return 0;
}
