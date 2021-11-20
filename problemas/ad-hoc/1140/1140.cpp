#include <iostream>
#include <sstream>

using namespace std;

int main(){
    char letra;
    bool tautograma;
    stringstream fluxo;
    string palavra, frase;

    while(getline(cin, frase)){
        if(frase == "*")    break;

        fluxo << frase;

        tautograma = true;
        letra = tolower(frase[0]);
        while(fluxo >> palavra){
            if(tolower(palavra[0]) != letra){
                tautograma = false;
                break;
            }
        }
        fluxo.str("");
        fluxo.clear();

        cout << (tautograma ? 'Y' : 'N') << endl;
    }

    return 0;
}
