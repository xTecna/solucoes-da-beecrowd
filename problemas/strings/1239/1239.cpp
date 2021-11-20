#include <iostream>

using namespace std;

int main(){
    int n;
    string frase;
    bool negrito, italico;

    while(getline(cin, frase)){
        negrito = false;
        italico = false;
        n = frase.length();
        for(int i = 0; i < n; ++i){
            if(frase[i] == '_'){
                cout << (italico ? "</i>" : "<i>");
                italico = !italico;
            }else if(frase[i] == '*'){
                cout << (negrito ? "</b>" : "<b>");
                negrito = !negrito;
            }else{
                cout << frase[i];
            }
        }
        cout << endl;
    }

    return 0;
}
