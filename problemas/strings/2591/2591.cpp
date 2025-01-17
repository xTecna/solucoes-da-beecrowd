#include <iostream>

using namespace std;

int main(){
    int atual;
    string hamekame;
    int C, letras[2];

    cin >> C;
    for(int i = 0; i < C; ++i){
        cin >> hamekame;
        atual = 0;
        letras[0] = 0;
        letras[1] = 0;
        for(int j = 0; j < hamekame.length(); ++j){
            if(hamekame[j] == 'a'){
                ++letras[atual];
            }else if(hamekame[j] == 'k'){
                atual += 1;
            }
        }
        cout << 'k';
        atual = letras[0] * letras[1];
        for(int j = 0; j < atual; ++j){
            cout << 'a';
        }
        cout << endl;
    }

    return 0;
}