#include <iostream>

using namespace std;

int main(){
    string expressao;
    int i, tam, parenteses;

    while(cin >> expressao){
        parenteses = 0;
        tam = expressao.length();
        for(i = 0; i < tam; ++i){
            if(expressao[i] == '('){
                ++parenteses;
            }else if(expressao[i] == ')'){
                if(parenteses > 0)  --parenteses;
                else                break;
            }
        }

        if(i == tam && parenteses == 0){
            cout << "correct" << endl;
        }else{
            cout << "incorrect" << endl;
        }
    }

    return 0;
}
